use super::*;

/*#[test]
fn test_module_stream() {
    let pm = parse_module("src/minisat.ll").expect("Failed to parse");
    let m = Module { id: Some("minisat.bc".to_string()),
                     datalayout: DataLayout::new(),
                     triple: Some("x86_64-unknown-linux-gnu".to_string()),
                     functions: HashMap::new(),
                     types: HashMap::new(),
                     globals: HashMap::new(),
                     attr_groups: HashMap::new(),
                     named_md: HashMap::new(),
                     md: HashMap::new() };
    assert_eq!(pm,m);
}*/

#[test]
fn test_address_space() {
    assert_eq!(address_space(b"addrspace(5)"), IResult::Done(&b""[..], 5));
}

#[test]
fn test_module_id() {
    assert_eq!(module_id(b"; ModuleID = 'myfile.bc'"), IResult::Done(&b""[..], "myfile.bc"));
}

#[test]
fn test_local_name() {
    assert_eq!(local_name(b"%abc.x="),
               IResult::Done(&b"="[..], "abc.x"));
}

/*#[test]
fn test_module() {
    let str = include_bytes!("minisat.ll");
    let m = Module { id: Some("minisat.bc".to_string()),
                     datalayout: DataLayout::new(),
                     triple: Some("x86_64-unknown-linux-gnu".to_string()),
                     functions: HashMap::new(),
                     types: HashMap::new(),
                     globals: HashMap::new(),
                     attr_groups: HashMap::new(),
                     named_md: HashMap::new(),
                     md: HashMap::new() };
    assert_eq!(module(str),
               IResult::Done(&b""[..],m));
}*/

#[test]
fn test_function_definition() {
    let ptr = Type::Pointer(Box::new(Type::Pointer(Box::new(Type::Int(8)),None)),None);
    let args = vec![(Some("argc".to_string()),Type::Int(32)),
                    (Some("argv".to_string()),ptr)];
    let fun = Function { linkage: None,
                         visibility: Visibility::Default,
                         dll_storage_class: DLLStorageClass::Default,
                         cconv: CallingConv::C,
                         return_type: Some((ParAttrs::new(),Type::Int(32))),
                         arguments: args,
                         var_args: false,
                         attribute_groups: Vec::new(),
                         body: Some(vec![BasicBlock { name: "entry".to_string(),
                                                      instrs: vec![Instruction { content: InstructionC::Term(Terminator::Ret(Some(Typed { tp: Type::Int(32),
                                                                                                                                          val: Value::Constant(Constant::Int(BigInt::from(0))) }))),
                                                                                 metadata: HashMap::new() }] }])
    };
    assert_eq!(function_definition(b"define i32 @main(i32 %argc, i8** %argv) {\nentry:\n  ret i32 0\n}"),
               IResult::Done(&b""[..],("main",fun)));
}

#[test]
fn test_global_def() {
    let txt = b"external global %struct._IO_FILE*\n";
    let glob = GlobalVariable {
        linkage: Some(Linkage::External),
        visibility: Visibility::Default,
        dll_storage_class: DLLStorageClass::Default,
        thread_local: None,
        unnamed_addr: None,
        addr_space: None,
        externally_initialized: false,
        global_type: GlobalType::Global,
        types: Type::ptr(Type::Named("struct._IO_FILE".to_string())),
        initialization: None,
        section: None,
        alignment: None };
    assert_eq!(global_variable(txt),
               IResult::Done(&b"\n"[..],glob));
}

/*#[test]
fn test_constant() {
    let txt1 = b"i8* getelementptr inbounds ([43 x i8]* @.str, i32 0, i32 0)";
    let t1 = Type::ptr(Type::array(43,Type::Int(8)));
    let c1 = Typed::new(Type::ptr(Type::Int(8)),
                        Constant::GEP(GEP { ptr: Typed::new(t1,
}*/

#[test]
fn test_value() {
    let txt1 = b"metadata i32 %argc";
    let v1 = Typed::new(Type::Metadata,
                        Value::Metadata(Metadata::Value(Box::new(Typed::new(Type::Int(32),Value::Local("argc".to_string()))))));
    assert_eq!(typed_value(txt1,&NO_ARGS),
               IResult::Done(&b""[..],v1));
    let txt2 = b"i64 0";
    let v2 = Typed::new(Type::Int(64),
                        Value::Constant(Constant::Int(BigInt::from(0))));
    assert_eq!(typed_value(txt2,&NO_ARGS),
               IResult::Done(&b""[..],v2));
    let txt3 = b"metadata !431";
    let v3 = Typed::new(Type::Metadata,
                        Value::Metadata(Metadata::Ref(431)));
    assert_eq!(typed_value(txt3,&NO_ARGS),
               IResult::Done(&b""[..],v3));
}

#[test]
fn test_instruction() {
    let v1 = Typed::new(Type::Int(32),
                        Value::Local("argc".to_string()));
    let a1 = Typed::new(Type::Metadata,
                        Value::Metadata(Metadata::Value(Box::new(v1))));
    let a2 = Typed::new(Type::Int(64),
                        Value::Constant(Constant::Int(BigInt::from(0))));
    let a3 = Typed::new(Type::Metadata,
                        Value::Metadata(Metadata::Ref(431)));
    let a4 = Typed::new(Type::Metadata,
                        Value::Metadata(Metadata::Ref(432)));
    let c = InstructionC::Call(None,CallingConv::C,None,
                               Value::Constant(Constant::Global("llvm.dbg.value".to_string())),
                               vec![a1,a2,a3,a4],Vec::new());
    let mut dbg = HashMap::new();
    dbg.insert("dbg".to_string(),433);
    let instr = Instruction { content: c,
                              metadata: dbg };
    let txt = b"call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !431, metadata !432), !dbg !433";
    assert_eq!(instruction(txt,&NO_ARGS),
               IResult::Done(&b""[..],instr));

    let txt2 = b"%cmp = icmp ne i32 %argc, 2, !dbg !440";
    let c2 = InstructionC::ICmp("cmp".to_string(),
                                CmpOp::Ne,
                                Type::Int(32),
                                Value::Argument(0),
                                Value::Constant(Constant::Int(BigInt::from(2))));
    let mut dbg2 = HashMap::new();
    dbg2.insert("dbg".to_string(),440);
    let instr2 = Instruction { content: c2,
                               metadata: dbg2 };
    assert_eq!(instruction(txt2,&[(Some("argc".to_string()),Type::Int(64))]),
               IResult::Done(&b""[..],instr2));

    let txt3 = b"br i1 %cmp19, label %if.then21, label %if.end30";
    let c3 = InstructionC::Term(Terminator::BrC(Value::Local("cmp19".to_string()),
                                                "if.then21".to_string(),
                                                "if.end30".to_string()));
    let instr3 = Instruction { content: c3,
                               metadata: HashMap::new() };
    assert_eq!(instruction(txt3,&NO_ARGS),
               IResult::Done(&b""[..],instr3));

}
