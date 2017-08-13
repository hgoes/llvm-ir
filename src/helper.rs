extern crate nom;

use nom::*;
use std::str;
use std::str::FromStr;

pub type AddressSpace = u64;

named!(pub llvm_space,eat_separator!(" \t"));

pub fn llvm_nl(inp: &[u8]) -> IResult<&[u8],()> {
    llvm_nl_(inp,true)
}

pub fn llvm_ws(inp: &[u8]) -> IResult<&[u8],()> {
    llvm_nl_(inp,false)
}

fn llvm_nl_(inp: &[u8],must_nl: bool) -> IResult<&[u8],()> {
    let mut input = inp;
    let mut endl_seen = false;
    while input.len() > 0 {
        match input[0] {
            b' ' => { input = &input[1..]; },
            b'\t' => { input = &input[1..]; },
            b';' => {
                input = &input[1..];
                while input.len() > 0 && input[0]!=b'\n' {
                    input = &input[1..];
                }
            },
            b'\n' => {
                input = &input[1..];
                endl_seen = true;
            }
            _ => break
        }
    }
    if !must_nl || endl_seen {
        IResult::Done(input,())
    } else {
        IResult::Incomplete(Needed::Size(1))
    }
}

named!(pub parse_u64<u64>,
       map_res!(map_res!(digit,str::from_utf8),
                FromStr::from_str));

named!(pub address_space<AddressSpace>,
       map_res!(map_res!(preceded!( tag!("addrspace"),
                                    delimited!(char!('('),
                                               digit,
                                               char!(')')) ),
                         str::from_utf8),
                FromStr::from_str));

named!(pub local_name<&str>,
       map_res!( preceded!(char!('%'),
                           is_not!(" \t\r\n=,*()%")),
                 str::from_utf8));

named!(pub global_name<&str>,
       map_res!( preceded!(char!('@'),
                           is_not!(" \t\r\n=,*()")),
                 str::from_utf8));
