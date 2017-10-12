use nom::{IResult,ErrorKind};
use std::collections::HashMap;
use helper::*;
use super::types::{Type};

#[derive(Clone,Debug,PartialEq,Eq,PartialOrd,Ord,Hash)]
pub enum Endian {
    Big,Little
}

#[derive(Clone,Debug,PartialEq,Eq,PartialOrd,Ord,Hash)]
pub enum Mangling {
    ELF,Mips,MachO,Windows,WindowsX86
}

#[derive(Clone,Debug,PartialEq,Eq)]
pub struct DataLayout {
    pub endianess: Option<Endian>,
    pub stack_alignment: Option<u64>,
    pub alloca_addr_space: Option<AddressSpace>,
    pub pointer_alignment: HashMap<AddressSpace,(u64,u64,u64)>,
    pub integer_alignment: HashMap<u64,(u64,u64)>,
    pub vector_alignment: HashMap<u64,(u64,u64)>,
    pub float_alignment: HashMap<u64,(u64,u64)>,
    pub object_alignment: Option<(u64,u64)>,
    pub mangling: Option<Mangling>,
    pub native_ints: Vec<u64>,
    pub non_integral_addr_space: Vec<u64>
}

impl DataLayout {
    pub fn new() -> DataLayout {
        DataLayout { endianess: None,
                     stack_alignment: None,
                     alloca_addr_space: None,
                     pointer_alignment: HashMap::new(),
                     integer_alignment: HashMap::new(),
                     vector_alignment: HashMap::new(),
                     float_alignment: HashMap::new(),
                     object_alignment: None,
                     mangling: None,
                     native_ints: Vec::new(),
                     non_integral_addr_space: Vec::new() }
    }
    pub fn endianess(&self) -> Endian {
        match self.endianess {
            Some(ref e) => e.clone(),
            None => Endian::Big
        }
    }
    pub fn stack_alignment(&self) -> Option<u64> {
        self.stack_alignment
    }
    pub fn alloca_addr_space(&self) -> AddressSpace {
        match self.alloca_addr_space {
            Some(ref e) => *e,
            None => 0
        }
    }
    /// Get the size, the ABI alignment and the prefered alignment for
    /// pointers in a given address space in bits.
    ///
    /// If no size is defined, it defaults to `(64,64,64)`.
    pub fn pointer_alignment(&self,sp: AddressSpace) -> (u64,u64,u64) {
        match self.pointer_alignment.get(&sp) {
            Some(sz) => *sz,
            None => (64,64,64)
        }
    }
    /// Get the ABI- and prefered alignment for integer types of a
    /// given size.
    ///
    /// If nothing is defined for a type it defaults to:
    ///
    /// - `(8,8)` for 1- or 8-bit integers,
    /// - `(16,16)` for 16-bit integers,
    /// - `(32,32)` for 32-bit integers,
    /// - `(32,64)` for 64-bit integers.
    pub fn integer_alignment(&self,w: u64) -> Option<(u64,u64)> {
        match self.integer_alignment.get(&w) {
            Some(res) => Some(*res),
            None => match w {
                1 => Some((8,8)),
                8 => Some((8,8)),
                16 => Some((16,16)),
                32 => Some((32,32)),
                64 => Some((32,64)),
                _ => None
            }
        }
    }
    pub fn vector_alignment(&self,w: u64) -> Option<(u64,u64)> {
        match self.vector_alignment.get(&w) {
            Some(res) => Some(*res),
            None => match w {
                64 => Some((64,64)),
                128 => Some((128,128)),
                _ => None
            }
        }
    }
    pub fn float_alignment(&self,w: u64) -> Option<(u64,u64)> {
        match self.float_alignment.get(&w) {
            Some(res) => Some(*res),
            None => match w {
                16 => Some((16,16)),
                32 => Some((32,32)),
                64 => Some((64,64)),
                128 => Some((128,128)),
                _ => None
            }
        }
    }
    pub fn object_alignment(&self) -> (u64,u64) {
        match self.object_alignment {
            Some(r) => r,
            None => (0,64)
        }
    }
    /// This is a rough estimation without considering alignment
    pub fn type_size_in_bits(&self,tp: &Type,mp: &HashMap<String,Type>) -> u64 {
        match tp {
            &Type::Opaque => 0,
            &Type::Int(sz) => sz,
            &Type::Float => 32,
            &Type::Double => 64,
            &Type::PPC_FP128 => 128,
            &Type::FP128 => 128,
            &Type::X86_FP80 => 80,
            &Type::Label => 0,
            &Type::Pointer(_,ref sp) => {
                let addr_sp = match sp {
                    &None => 0,
                    &Some(x) => x
                };
                let (sz,_,_) = self.pointer_alignment(addr_sp);
                sz
            },
            &Type::Struct(ref st) => {
                let mut acc = 0;
                for el in st.iter() {
                    acc += self.type_size_in_bits(el,mp);
                }
                acc
            },
            &Type::Array(sz,ref sub_tp) => sz*self.type_size_in_bits(sub_tp,mp),
            &Type::Function(_,_,_) => 0,
            &Type::Named(ref name) => match mp.get(name) {
                None => panic!("Named type {} not found",name),
                Some(rtp) => self.type_size_in_bits(rtp,mp)
            },
            &Type::Metadata => 0
        }
    }
}

named!(pub datalayout<DataLayout>,
       ws!(do_parse!( tag!("target") >>
                      tag!("datalayout") >>
                      char!('=') >>
                      char!('"') >>
                      dl: datalayout_string >>
                      char!('"') >>
                      (dl))));

fn datalayout_string(inp: &[u8]) -> IResult<&[u8],DataLayout> {
    let mut layout = DataLayout::new();
    let mut input = inp;
    while input.len() > 0 {
        match input[0] {
            b'E' => {
                layout.endianess = Some(Endian::Big);
                input = &input[2..];
            },
            b'e' => {
                layout.endianess = Some(Endian::Little);
                input = &input[2..];
            },
            b'S' => {
                if input.len()>1 && input[2]!=b'-' {
                    match parse_u64(&input[1..]) {
                        IResult::Done(ninp,n) => {
                            layout.stack_alignment = Some(n);
                            input = ninp;
                        },
                        IResult::Error(err) => return IResult::Error(err),
                        IResult::Incomplete(need) => return IResult::Incomplete(need)
                    }
                } else {
                    layout.stack_alignment = None;
                    input = &input[2..];
                }
            },
            b'm' => {
                if input.len()>2 {
                    match input[2] {
                        b'e' => {
                            layout.mangling = Some(Mangling::ELF);
                        },
                        b'm' => {
                            layout.mangling = Some(Mangling::Mips);
                        },
                        b'o' => {
                            layout.mangling = Some(Mangling::MachO);
                        },
                        b'w' => {
                            layout.mangling = Some(Mangling::Windows);
                        },
                        b'x' => {
                            layout.mangling = Some(Mangling::WindowsX86);
                        },
                        _ => return IResult::Error(ErrorKind::Custom(1))
                    }
                    input = &input[3..];
                } else {
                    return IResult::Error(ErrorKind::Custom(2))
                }
            },
            b'i' => match parse_u64(&input[1..]) {
                IResult::Error(err) => return IResult::Error(err),
                IResult::Incomplete(need) => return IResult::Incomplete(need),
                IResult::Done(ninp,bw) => if ninp.len()>0 {
                    match parse_u64(&ninp[1..]) {
                        IResult::Error(err) => return IResult::Error(err),
                        IResult::Incomplete(need) => return IResult::Incomplete(need),
                        IResult::Done(ninp,abi) => if ninp.len()>0 {
                            match ninp[0] {
                                b'-' => {
                                    input = &ninp[1..];
                                    layout.integer_alignment.insert(bw,(abi,abi));
                                },
                                b':' => {
                                    match parse_u64(&ninp[1..]) {
                                        IResult::Error(err) => return IResult::Error(err),
                                        IResult::Incomplete(need) => return IResult::Incomplete(need),
                                        IResult::Done(ninp,pref) => {
                                            input = &ninp[1..];
                                            layout.integer_alignment.insert(bw,(abi,pref));
                                        }
                                    }
                                },
                                _ => return IResult::Error(ErrorKind::Custom(3))
                            }
                        } else {
                            return IResult::Error(ErrorKind::Custom(4))
                        }
                    }
                } else {
                    return IResult::Error(ErrorKind::Custom(5))
                }
            },
            b'f' => match parse_u64(&input[1..]) {
                IResult::Error(err) => return IResult::Error(err),
                IResult::Incomplete(need) => return IResult::Incomplete(need),
                IResult::Done(ninp,bw) => if ninp.len()>0 {
                    match parse_u64(&ninp[1..]) {
                        IResult::Error(err) => return IResult::Error(err),
                        IResult::Incomplete(need) => return IResult::Incomplete(need),
                        IResult::Done(ninp,abi) => if ninp.len()>0 {
                            match ninp[0] {
                                b'-' => {
                                    input = &ninp[1..];
                                    layout.float_alignment.insert(bw,(abi,abi));
                                },
                                b':' => {
                                    match parse_u64(&ninp[1..]) {
                                        IResult::Error(err) => return IResult::Error(err),
                                        IResult::Incomplete(need) => return IResult::Incomplete(need),
                                        IResult::Done(ninp,pref) => {
                                            input = &ninp[1..];
                                            layout.float_alignment.insert(bw,(abi,pref));
                                        }
                                    }
                                },
                                _ => return IResult::Error(ErrorKind::Custom(3))
                            }
                        } else {
                            return IResult::Error(ErrorKind::Custom(4))
                        }
                    }
                } else {
                    return IResult::Error(ErrorKind::Custom(5))
                }
            },
            b'n' => {
                let mut vec = Vec::new();
                input = &input[1..];
                loop {
                    match parse_u64(input) {
                        IResult::Error(err) => return IResult::Error(err),
                        IResult::Incomplete(need) => return IResult::Incomplete(need),
                        IResult::Done(ninp,pref) => {
                            vec.push(pref);
                            if ninp.len() > 0 {
                                match ninp[0] {
                                    b'-' => {
                                        input = &ninp[1..];
                                        break;
                                    },
                                    b':' => {
                                        input = &ninp[1..];
                                    },
                                    _ => return IResult::Error(ErrorKind::Custom(6))
                                }
                            } else {
                                input = ninp;
                                break
                            }
                        }
                    }
                }
                layout.native_ints = vec;
            }
            _ => return IResult::Done(input,layout)
        }
    }
    IResult::Done(input,layout)
}

#[test]
fn test_datalayout() {
    let mut ialign = HashMap::new();
    ialign.insert(64, (64,64));
    let mut falign = HashMap::new();
    falign.insert(80, (128,128));
    let layout1 = DataLayout { endianess: Some(Endian::Little),
                               stack_alignment: Some(128),
                               alloca_addr_space: None,
                               pointer_alignment: HashMap::new(),
                               integer_alignment: ialign,
                               vector_alignment: HashMap::new(),
                               float_alignment: falign,
                               object_alignment: None,
                               mangling: Some(Mangling::MachO),
                               native_ints: vec![8,16,32,64],
                               non_integral_addr_space: Vec::new() };
    assert_eq!(datalayout(b"target datalayout = \"e-m:o-i64:64-f80:128-n8:16:32:64-S128\""),
               IResult::Done(&b""[..],layout1));
}
