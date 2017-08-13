#[allow(unused_imports)]
use nom::{IResult,ErrorKind};
use helper::*;

#[allow(non_camel_case_types)]
#[derive(PartialEq,Debug,Clone)]
pub enum Type {
    Opaque,
    Int(u64),
    Float,
    Double,
    PPC_FP128,
    FP128,
    X86_FP80,
    Label,
    Pointer(Box<Type>,Option<AddressSpace>),
    Struct(Vec<Type>),
    Array(u64,Box<Type>),
    Function(Option<Box<Type>>,Vec<Type>,bool),
    Named(String),
    Metadata
}

impl Type {
    pub fn ptr(tp: Type) -> Type {
        Type::Pointer(Box::new(tp),None)
    }
    pub fn array(sz: u64,tp:Type) -> Type {
        Type::Array(sz,Box::new(tp))
    }
}

named!(arg_list<(Vec<Type>,bool)>,
       do_parse!(char!('(') >>
                 llvm_space >>
                 args: separated_list!(terminated!(char!(','),llvm_space),
                                       terminated!(types,llvm_space)) >>
                 va: map!(opt!(preceded!(terminated!(char!(','),llvm_space),
                                         terminated!(tag!("..."),llvm_space))),
                          |c| c.is_some()) >>
                 char!(')') >>
                 llvm_space >>
                 (args,va)));

enum TrailingType {
    Pointer(Option<AddressSpace>),
    Function(Vec<Type>,bool)
}

named!(trailing_type<TrailingType>,
       alt!( do_parse!( sp: address_space >>
                        llvm_space >>
                        char!('*') >>
                        llvm_space >>
                        (TrailingType::Pointer(Some(sp))) ) |
             do_parse!( char!('*') >>
                        llvm_space >>
                        (TrailingType::Pointer(None)) ) |
             do_parse!( l: arg_list >>
                        llvm_space >>
                        (TrailingType::Function(l.0,l.1)) )));

named!(pub types<Type>,
       alt!( map!(tag!("metadata"),
                  |_| Type::Metadata) |
             do_parse!(base: alt!( map!( tag!("opaque"), |_| Type::Opaque) |
                                   do_parse!(tag!("void") >>
                                             llvm_space >>
                                             args: arg_list >>
                                             (Type::Function(None,args.0,args.1))) |
                                   map!( preceded!(char!('i'),
                                                   parse_u64),
                                         |i| { Type::Int(i) }) |
                                   do_parse!(char!('{') >>
                                             llvm_space >>
                                             tps: separated_list!(terminated!(char!(','),llvm_space),
                                                                  terminated!(types,llvm_space)) >>
                                             char!('}') >>
                                             (Type::Struct(tps))) |
                                   do_parse!( char!('[') >>
                                              llvm_space >>
                                              x: parse_u64 >>
                                              llvm_space >>
                                              char!('x') >>
                                              llvm_space >>
                                              y: types >>
                                              llvm_space >>
                                              char!(']') >>
                                              (Type::Array(x,Box::new(y)))) |
                                   map!( local_name,
                                         |name| { Type::Named(name.to_string()) } )) >>
                       llvm_space >>
                       res: fold_many0!(trailing_type,
                                        base,
                                        |tp,tr| match tr {
                                            TrailingType::Pointer(sp)
                                                => Type::Pointer(Box::new(tp),sp),
                                            TrailingType::Function(arg,va)
                                                => Type::Function(Some(Box::new(tp)),
                                                                  arg,va)
                                        }) >>
                       (res))));

#[test]
fn test_types() {
    let tp1 = Type::Int(8);
    assert_eq!(types(b"i8*"),
               IResult::Done(&b""[..],Type::ptr(tp1.clone())));
                             
    let tp2 = Type::Pointer(Box::new(Type::Int(64)),Some(3));
    let tp3 = Type::Array(20,Box::new(Type::Int(8)));
    let tp4 = Type::Named("foo".to_string());
    assert_eq!(types(b"{ i8, i64 addrspace(3) *, [20 x i8], %foo }"),
               IResult::Done(&b""[..],
                             Type::Struct(vec![tp1,
                                               tp2,
                                               tp3,
                                               tp4])));
    let tp5 = Type::Function(Some(Box::new(Type::Int(32))),
                             vec![Type::Pointer(Box::new(Type::Named("struct._IO_FILE".to_string())),
                                                None),
                                  Type::Pointer(Box::new(Type::Int(8)),
                                                None)],
                             true);
    let tp6 = Type::Pointer(Box::new(tp5),None);
    assert_eq!(types(b"i32 (%struct._IO_FILE*, i8*, ...)*"),
               IResult::Done(&b""[..],tp6));
}
