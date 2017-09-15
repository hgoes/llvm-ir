; ModuleID = 'minisat.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.solver_t = type { i32, i32, i32, i32, %struct.vecp_t, %struct.vecp_t, i64, i64, i64, i64, %struct.vecp_t*, i64*, i8*, i32*, %struct.clause_t**, i32*, i32*, %struct.clause_t*, i8*, %struct.veci_t, %struct.veci_t, %struct.veci_t, %struct.veci_t, %struct.veci_t, i32, i32, i32, i32, %struct.stats_t }
%struct.vecp_t = type { i32, i32, i8** }
%struct.clause_t = type { i32, [0 x i32] }
%struct.veci_t = type { i32, i32, i32* }
%struct.stats_t = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [43 x i8] c"ERROR! Not enough command line arguments.\0A\00", align 1
@sampleFile = internal constant [224 x i8] c"p cnf 10 22\0Ac We can deduce: -4 -3 -6\0A-1 -2 0\0A1 2 0\0A-4 -5 0\0A4 5 0\0A2 3 5 7 0\0A-6 -7 0\0A6 7 0\0A5 -10 0\0A7 -10 0\0A1 -10 0\0A1 5 7 8 0\0A-3 -8 0\0A3 8 0\0A2 5 7 8 0\0A-1 -5 -7 -8 10 0\0A8 -10 0\0A9 10 0\0A-2 -5 -7 -8 9 0\0A8 -9 0\0A5 -9 0\0A7 -9 0\0A2 -9 0\00", align 16
@.str1 = private unnamed_addr constant [31 x i8] c"Trivial problem\0AUNSATISFIABLE\0A\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"SATISFIABLE\0A\00", align 1
@.str4 = private unnamed_addr constant [15 x i8] c"UNSATISFIABLE\0A\00", align 1
@.str5 = private unnamed_addr constant [23 x i8] c"\0ASatisfying solution: \00", align 1
@.str6 = private unnamed_addr constant [8 x i8] c"x%d=%d \00", align 1
@.str7 = private unnamed_addr constant [34 x i8] c"PARSE ERROR! Unexpected char: %c\0A\00", align 1
@.str14 = private unnamed_addr constant [21 x i8] c"lits[1] == false_lit\00", align 1
@.str115 = private unnamed_addr constant [9 x i8] c"solver.c\00", align 1
@__PRETTY_FUNCTION__.solver_propagate = private unnamed_addr constant [35 x i8] c"clause *solver_propagate(solver *)\00", align 1
@.str218 = private unnamed_addr constant [22 x i8] c"solver_dlevel(s) == 0\00", align 1
@__PRETTY_FUNCTION__.solver_simplify = private unnamed_addr constant [31 x i8] c"bool solver_simplify(solver *)\00", align 1
@.str319 = private unnamed_addr constant [80 x i8] c"==================================[MINISAT]===================================\0A\00", align 1
@.str420 = private unnamed_addr constant [80 x i8] c"| Conflicts |     ORIGINAL     |              LEARNT              | Progress |\0A\00", align 1
@.str521 = private unnamed_addr constant [80 x i8] c"|           | Clauses Literals |   Limit Clauses Literals  Lit/Cl |          |\0A\00", align 1
@.str622 = private unnamed_addr constant [80 x i8] c"==============================================================================\0A\00", align 1
@.str29 = private unnamed_addr constant [17 x i8] c"j < vecp_size(v)\00", align 1
@__PRETTY_FUNCTION__.vecp_remove = private unnamed_addr constant [33 x i8] c"void vecp_remove(vecp *, void *)\00", align 1
@.str12 = private unnamed_addr constant [40 x i8] c"lit_var(l) >= 0 && lit_var(l) < s->size\00", align 1
@__PRETTY_FUNCTION__.solver_lit_removable = private unnamed_addr constant [46 x i8] c"bool solver_lit_removable(solver *, lit, int)\00", align 1
@.str13 = private unnamed_addr constant [25 x i8] c"reasons[lit_var(l)] != 0\00", align 1
@.str1426 = private unnamed_addr constant [22 x i8] c"v >= 0 && v < s->size\00", align 1
@.str15 = private unnamed_addr constant [16 x i8] c"reasons[v] != 0\00", align 1
@.str10 = private unnamed_addr constant [7 x i8] c"c != 0\00", align 1
@__PRETTY_FUNCTION__.solver_analyze = private unnamed_addr constant [48 x i8] c"void solver_analyze(solver *, clause *, veci *)\00", align 1
@.str11 = private unnamed_addr constant [40 x i8] c"lit_var(q) >= 0 && lit_var(q) < s->size\00", align 1
@.str9 = private unnamed_addr constant [19 x i8] c"veci_size(cls) > 0\00", align 1
@__PRETTY_FUNCTION__.solver_record = private unnamed_addr constant [37 x i8] c"void solver_record(solver *, veci *)\00", align 1
@.str8 = private unnamed_addr constant [13 x i8] c"child < size\00", align 1
@__PRETTY_FUNCTION__.order_select = private unnamed_addr constant [27 x i8] c"int order_select(solver *)\00", align 1
@.str727 = private unnamed_addr constant [34 x i8] c"s->root_level == solver_dlevel(s)\00", align 1
@__PRETTY_FUNCTION__.solver_search = private unnamed_addr constant [40 x i8] c"lbool solver_search(solver *, int, int)\00", align 1
@.str16 = private unnamed_addr constant [21 x i8] c"s->qtail == s->qhead\00", align 1
@__PRETTY_FUNCTION__.assume = private unnamed_addr constant [27 x i8] c"void assume(solver *, lit)\00", align 1
@.str17 = private unnamed_addr constant [34 x i8] c"s->assigns[lit_var(l)] == l_Undef\00", align 1
@__PRETTY_FUNCTION__.clause_simplify = private unnamed_addr constant [42 x i8] c"lbool clause_simplify(solver *, clause *)\00", align 1
@.str18 = private unnamed_addr constant [8 x i8] c"end > 1\00", align 1
@__PRETTY_FUNCTION__.clause_new = private unnamed_addr constant [46 x i8] c"clause *clause_new(solver *, lit *, int, int)\00", align 1
@.str19 = private unnamed_addr constant [26 x i8] c"learnt >= 0 && learnt < 2\00", align 1
@.str20 = private unnamed_addr constant [14 x i8] c"begin[0] >= 0\00", align 1
@.str21 = private unnamed_addr constant [21 x i8] c"begin[0] < s->size*2\00", align 1
@.str22 = private unnamed_addr constant [14 x i8] c"begin[1] >= 0\00", align 1
@.str23 = private unnamed_addr constant [21 x i8] c"begin[1] < s->size*2\00", align 1
@.str24 = private unnamed_addr constant [30 x i8] c"lit_neg(begin[0]) < s->size*2\00", align 1
@.str25 = private unnamed_addr constant [30 x i8] c"lit_neg(begin[1]) < s->size*2\00", align 1
@.str26 = private unnamed_addr constant [29 x i8] c"lit_neg(lits[0]) < s->size*2\00", align 1
@__PRETTY_FUNCTION__.clause_remove = private unnamed_addr constant [39 x i8] c"void clause_remove(solver *, clause *)\00", align 1
@.str27 = private unnamed_addr constant [29 x i8] c"lit_neg(lits[1]) < s->size*2\00", align 1
@.str28 = private unnamed_addr constant [20 x i8] c"lits[0] < s->size*2\00", align 1
@.str30 = private unnamed_addr constant [21 x i8] c"s->orderpos[v] != -1\00", align 1
@__PRETTY_FUNCTION__.order_update = private unnamed_addr constant [33 x i8] c"void order_update(solver *, int)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !431, metadata !432), !dbg !433
  call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !434, metadata !432), !dbg !435
  %call = call %struct.solver_t* @solver_new(), !dbg !436
  call void @llvm.dbg.value(metadata %struct.solver_t* %call, i64 0, metadata !437, metadata !432), !dbg !438
  %call1 = call i64 @clock() #7, !dbg !439
  %cmp = icmp ne i32 %argc, 2, !dbg !440
  br i1 %cmp, label %if.then, label %if.end, !dbg !442

if.then:                                          ; preds = %entry
  %tmp = load %struct._IO_FILE** @stderr, align 8, !dbg !443
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %tmp, i8* getelementptr inbounds ([43 x i8]* @.str, i32 0, i32 0)), !dbg !444
  call void @exit(i32 1) #8, !dbg !445
  unreachable, !dbg !445

if.end:                                           ; preds = %entry
  %call4 = call fastcc signext i8 @parse_DIMACS_main(i8* getelementptr inbounds ([224 x i8]* @sampleFile, i32 0, i32 0), %struct.solver_t* %call), !dbg !446
  call void @llvm.dbg.value(metadata i8 %call4, i64 0, metadata !447, metadata !432), !dbg !448
  %conv5 = sext i8 %call4 to i32, !dbg !449
  %cmp6 = icmp eq i32 %conv5, -1, !dbg !449
  br i1 %cmp6, label %if.then8, label %if.end10, !dbg !451

if.then8:                                         ; preds = %if.end
  call void @solver_delete(%struct.solver_t* %call), !dbg !452
  %call9 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str1, i32 0, i32 0)), !dbg !454
  call void @exit(i32 20) #8, !dbg !455
  unreachable, !dbg !455

if.end10:                                         ; preds = %if.end
  %verbosity = getelementptr inbounds %struct.solver_t* %call, i32 0, i32 27, !dbg !456
  store i32 1, i32* %verbosity, align 4, !dbg !456
  %call11 = call i32 @solver_solve(%struct.solver_t* %call, i32* null, i32* null), !dbg !457
  %conv12 = trunc i32 %call11 to i8, !dbg !457
  call void @llvm.dbg.value(metadata i8 %conv12, i64 0, metadata !447, metadata !432), !dbg !448
  %call13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)), !dbg !458
  %conv14 = sext i8 %conv12 to i32, !dbg !459
  %cmp15 = icmp eq i32 %conv14, 1, !dbg !459
  %cond = select i1 %cmp15, i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str4, i32 0, i32 0), !dbg !459
  %call17 = call i32 (i8*, ...)* @printf(i8* %cond), !dbg !460
  %conv18 = sext i8 %conv12 to i32, !dbg !461
  %cmp19 = icmp eq i32 %conv18, 1, !dbg !461
  br i1 %cmp19, label %if.then21, label %if.end30, !dbg !463

if.then21:                                        ; preds = %if.end10
  %call22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str5, i32 0, i32 0)), !dbg !464
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !466, metadata !432), !dbg !467
  br label %for.cond, !dbg !468

for.cond:                                         ; preds = %for.inc, %if.then21
  %k.0 = phi i32 [ 0, %if.then21 ], [ %inc, %for.inc ]
  %model = getelementptr inbounds %struct.solver_t* %call, i32 0, i32 23, !dbg !470
  %size = getelementptr inbounds %struct.veci_t* %model, i32 0, i32 0, !dbg !470
  %tmp1 = load i32* %size, align 4, !dbg !470
  %cmp23 = icmp slt i32 %k.0, %tmp1, !dbg !472
  br i1 %cmp23, label %for.body, label %for.end, !dbg !473

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %k.0 to i64, !dbg !474
  %model25 = getelementptr inbounds %struct.solver_t* %call, i32 0, i32 23, !dbg !474
  %ptr = getelementptr inbounds %struct.veci_t* %model25, i32 0, i32 2, !dbg !474
  %tmp2 = load i32** %ptr, align 8, !dbg !474
  %arrayidx = getelementptr inbounds i32* %tmp2, i64 %idxprom, !dbg !474
  %tmp3 = load i32* %arrayidx, align 4, !dbg !474
  %cmp26 = icmp eq i32 %tmp3, 1, !dbg !474
  %conv27 = zext i1 %cmp26 to i32, !dbg !474
  %call28 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str6, i32 0, i32 0), i32 %k.0, i32 %conv27), !dbg !475
  br label %for.inc, !dbg !475

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %k.0, 1, !dbg !476
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !466, metadata !432), !dbg !467
  br label %for.cond, !dbg !477

for.end:                                          ; preds = %for.cond
  %call29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0)), !dbg !478
  br label %if.end30, !dbg !479

if.end30:                                         ; preds = %for.end, %if.end10
  call void @solver_delete(%struct.solver_t* %call), !dbg !480
  ret i32 0, !dbg !481
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @clock() #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #5

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define internal fastcc signext i8 @parse_DIMACS_main(i8* %in, %struct.solver_t* %s) #0 {
entry:
  %in.addr = alloca i8*, align 8
  %lits = alloca %struct.veci_t, align 8
  store i8* %in, i8** %in.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %in.addr, metadata !482, metadata !432), !dbg !483
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !484, metadata !432), !dbg !485
  call void @llvm.dbg.declare(metadata %struct.veci_t* %lits, metadata !486, metadata !432), !dbg !487
  call fastcc void @veci_new(%struct.veci_t* %lits), !dbg !488
  br label %for.cond, !dbg !489

for.cond:                                         ; preds = %if.end14, %entry
  call fastcc void @skipWhitespace(i8** %in.addr), !dbg !490
  %tmp = load i8** %in.addr, align 8, !dbg !494
  %tmp1 = load i8* %tmp, align 1, !dbg !496
  %conv = sext i8 %tmp1 to i32, !dbg !496
  %cmp = icmp eq i32 %conv, 0, !dbg !496
  br i1 %cmp, label %if.then, label %if.else, !dbg !497

if.then:                                          ; preds = %for.cond
  br label %for.end, !dbg !498

if.else:                                          ; preds = %for.cond
  %tmp2 = load i8** %in.addr, align 8, !dbg !499
  %tmp3 = load i8* %tmp2, align 1, !dbg !501
  %conv2 = sext i8 %tmp3 to i32, !dbg !501
  %cmp3 = icmp eq i32 %conv2, 99, !dbg !501
  br i1 %cmp3, label %if.then8, label %lor.lhs.false, !dbg !502

lor.lhs.false:                                    ; preds = %if.else
  %tmp4 = load i8** %in.addr, align 8, !dbg !503
  %tmp5 = load i8* %tmp4, align 1, !dbg !505
  %conv5 = sext i8 %tmp5 to i32, !dbg !505
  %cmp6 = icmp eq i32 %conv5, 112, !dbg !505
  br i1 %cmp6, label %if.then8, label %if.else9, !dbg !502

if.then8:                                         ; preds = %lor.lhs.false, %if.else
  call fastcc void @skipLine(i8** %in.addr), !dbg !506
  br label %if.end13, !dbg !506

if.else9:                                         ; preds = %lor.lhs.false
  call fastcc void @readClause(i8** %in.addr, %struct.solver_t* %s, %struct.veci_t* %lits), !dbg !507
  %call = call fastcc i32* @veci_begin(%struct.veci_t* %lits), !dbg !509
  call void @llvm.dbg.value(metadata i32* %call, i64 0, metadata !510, metadata !432), !dbg !511
  %call10 = call fastcc i32 @veci_size(%struct.veci_t* %lits), !dbg !512
  %call11 = call i32 @solver_addclause(%struct.solver_t* %s, i32* %call, i32 %call10), !dbg !514
  %tobool = icmp ne i32 %call11, 0, !dbg !515
  br i1 %tobool, label %if.end, label %if.then12, !dbg !515

if.then12:                                        ; preds = %if.else9
  call fastcc void @veci_delete(%struct.veci_t* %lits), !dbg !516
  br label %return, !dbg !518

if.end:                                           ; preds = %if.else9
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then8
  br label %if.end14

if.end14:                                         ; preds = %if.end13
  br label %for.cond, !dbg !519

for.end:                                          ; preds = %if.then
  call fastcc void @veci_delete(%struct.veci_t* %lits), !dbg !520
  %call15 = call i32 @solver_simplify(%struct.solver_t* %s), !dbg !521
  %conv16 = trunc i32 %call15 to i8, !dbg !521
  br label %return, !dbg !522

return:                                           ; preds = %for.end, %if.then12
  %retval.0 = phi i8 [ %conv16, %for.end ], [ -1, %if.then12 ]
  ret i8 %retval.0, !dbg !523
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @veci_delete(%struct.veci_t* %v) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.veci_t* %v, i64 0, metadata !524, metadata !432), !dbg !525
  %ptr = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 2, !dbg !526
  %tmp = load i32** %ptr, align 8, !dbg !526
  %tmp1 = bitcast i32* %tmp to i8*, !dbg !526
  call void @free(i8* %tmp1) #7, !dbg !527
  ret void, !dbg !528
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @veci_size(%struct.veci_t* %v) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.veci_t* %v, i64 0, metadata !529, metadata !432), !dbg !530
  %size = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 0, !dbg !531
  %tmp = load i32* %size, align 4, !dbg !531
  ret i32 %tmp, !dbg !532
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @veci_begin(%struct.veci_t* %v) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.veci_t* %v, i64 0, metadata !533, metadata !432), !dbg !534
  %ptr = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 2, !dbg !535
  %tmp = load i32** %ptr, align 8, !dbg !535
  ret i32* %tmp, !dbg !536
}

; Function Attrs: nounwind uwtable
define internal fastcc void @readClause(i8** %in, %struct.solver_t* %s, %struct.veci_t* %lits) #0 {
entry:
  call void @llvm.dbg.value(metadata i8** %in, i64 0, metadata !537, metadata !432), !dbg !538
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !539, metadata !432), !dbg !540
  call void @llvm.dbg.value(metadata %struct.veci_t* %lits, i64 0, metadata !541, metadata !432), !dbg !542
  call fastcc void @veci_resize(%struct.veci_t* %lits, i32 0), !dbg !543
  br label %for.cond, !dbg !544

for.cond:                                         ; preds = %cond.end, %entry
  %call = call fastcc i32 @parseInt(i8** %in), !dbg !545
  call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !549, metadata !432), !dbg !550
  %cmp = icmp eq i32 %call, 0, !dbg !551
  br i1 %cmp, label %if.then, label %if.end, !dbg !553

if.then:                                          ; preds = %for.cond
  br label %for.end, !dbg !554

if.end:                                           ; preds = %for.cond
  %call1 = call i32 @abs(i32 %call) #1, !dbg !556
  %sub = sub nsw i32 %call1, 1, !dbg !556
  call void @llvm.dbg.value(metadata i32 %sub, i64 0, metadata !557, metadata !432), !dbg !558
  %cmp2 = icmp sgt i32 %call, 0, !dbg !559
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !559

cond.true:                                        ; preds = %if.end
  %call3 = call fastcc i32 @toLit(i32 %sub), !dbg !560
  br label %cond.end, !dbg !559

cond.false:                                       ; preds = %if.end
  %call4 = call fastcc i32 @toLit(i32 %sub), !dbg !561
  %call5 = call fastcc i32 @lit_neg(i32 %call4), !dbg !562
  br label %cond.end, !dbg !559

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call3, %cond.true ], [ %call5, %cond.false ], !dbg !559
  call fastcc void @veci_push(%struct.veci_t* %lits, i32 %cond), !dbg !563
  br label %for.cond, !dbg !566

for.end:                                          ; preds = %if.then
  ret void, !dbg !567
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @lit_neg(i32 %l) #6 {
entry:
  call void @llvm.dbg.value(metadata i32 %l, i64 0, metadata !568, metadata !432), !dbg !569
  %xor = xor i32 %l, 1, !dbg !570
  ret i32 %xor, !dbg !571
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @toLit(i32 %v) #6 {
entry:
  call void @llvm.dbg.value(metadata i32 %v, i64 0, metadata !572, metadata !432), !dbg !573
  %add = add nsw i32 %v, %v, !dbg !574
  ret i32 %add, !dbg !575
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @veci_push(%struct.veci_t* %v, i32 %e) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.veci_t* %v, i64 0, metadata !576, metadata !432), !dbg !577
  call void @llvm.dbg.value(metadata i32 %e, i64 0, metadata !578, metadata !432), !dbg !579
  %size = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 0, !dbg !580
  %tmp = load i32* %size, align 4, !dbg !580
  %cap = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 1, !dbg !582
  %tmp1 = load i32* %cap, align 4, !dbg !582
  %cmp = icmp eq i32 %tmp, %tmp1, !dbg !580
  br i1 %cmp, label %if.then, label %if.end, !dbg !583

if.then:                                          ; preds = %entry
  %cap1 = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 1, !dbg !584
  %tmp2 = load i32* %cap1, align 4, !dbg !584
  %mul = mul nsw i32 %tmp2, 2, !dbg !584
  %add = add nsw i32 %mul, 1, !dbg !584
  call void @llvm.dbg.value(metadata i32 %add, i64 0, metadata !586, metadata !432), !dbg !587
  %ptr = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 2, !dbg !588
  %tmp3 = load i32** %ptr, align 8, !dbg !588
  %tmp4 = bitcast i32* %tmp3 to i8*, !dbg !588
  %conv = sext i32 %add to i64, !dbg !589
  %mul2 = mul i64 4, %conv, !dbg !590
  %call = call i8* @realloc(i8* %tmp4, i64 %mul2) #7, !dbg !591
  %tmp5 = bitcast i8* %call to i32*, !dbg !592
  %ptr3 = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 2, !dbg !593
  store i32* %tmp5, i32** %ptr3, align 8, !dbg !593
  %cap4 = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 1, !dbg !594
  store i32 %add, i32* %cap4, align 4, !dbg !594
  br label %if.end, !dbg !595

if.end:                                           ; preds = %if.then, %entry
  %size5 = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 0, !dbg !596
  %tmp6 = load i32* %size5, align 4, !dbg !596
  %inc = add nsw i32 %tmp6, 1, !dbg !596
  store i32 %inc, i32* %size5, align 4, !dbg !596
  %idxprom = sext i32 %tmp6 to i64, !dbg !597
  %ptr6 = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 2, !dbg !597
  %tmp7 = load i32** %ptr6, align 8, !dbg !597
  %arrayidx = getelementptr inbounds i32* %tmp7, i64 %idxprom, !dbg !597
  store i32 %e, i32* %arrayidx, align 4, !dbg !597
  ret void, !dbg !598
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @parseInt(i8** %in) #6 {
entry:
  call void @llvm.dbg.value(metadata i8** %in, i64 0, metadata !599, metadata !432), !dbg !600
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !601, metadata !432), !dbg !602
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !603, metadata !432), !dbg !604
  call fastcc void @skipWhitespace(i8** %in), !dbg !605
  %tmp = load i8** %in, align 8, !dbg !606
  %tmp1 = load i8* %tmp, align 1, !dbg !608
  %conv = sext i8 %tmp1 to i32, !dbg !608
  %cmp = icmp eq i32 %conv, 45, !dbg !608
  br i1 %cmp, label %if.then, label %if.else, !dbg !609

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !603, metadata !432), !dbg !604
  %tmp2 = load i8** %in, align 8, !dbg !610
  %incdec.ptr = getelementptr inbounds i8* %tmp2, i32 1, !dbg !610
  store i8* %incdec.ptr, i8** %in, align 8, !dbg !610
  br label %if.end7, !dbg !611

if.else:                                          ; preds = %entry
  %tmp3 = load i8** %in, align 8, !dbg !612
  %tmp4 = load i8* %tmp3, align 1, !dbg !614
  %conv2 = sext i8 %tmp4 to i32, !dbg !614
  %cmp3 = icmp eq i32 %conv2, 43, !dbg !614
  br i1 %cmp3, label %if.then5, label %if.end, !dbg !615

if.then5:                                         ; preds = %if.else
  %tmp5 = load i8** %in, align 8, !dbg !616
  %incdec.ptr6 = getelementptr inbounds i8* %tmp5, i32 1, !dbg !616
  store i8* %incdec.ptr6, i8** %in, align 8, !dbg !616
  br label %if.end, !dbg !616

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %_neg.0 = phi i32 [ 1, %if.then ], [ 0, %if.end ]
  %tmp6 = load i8** %in, align 8, !dbg !617
  %tmp7 = load i8* %tmp6, align 1, !dbg !619
  %conv8 = sext i8 %tmp7 to i32, !dbg !619
  %cmp9 = icmp slt i32 %conv8, 48, !dbg !619
  br i1 %cmp9, label %if.then14, label %lor.lhs.false, !dbg !620

lor.lhs.false:                                    ; preds = %if.end7
  %tmp8 = load i8** %in, align 8, !dbg !621
  %tmp9 = load i8* %tmp8, align 1, !dbg !622
  %conv11 = sext i8 %tmp9 to i32, !dbg !622
  %cmp12 = icmp sgt i32 %conv11, 57, !dbg !622
  br i1 %cmp12, label %if.then14, label %if.end16, !dbg !620

if.then14:                                        ; preds = %lor.lhs.false, %if.end7
  %tmp10 = load %struct._IO_FILE** @stderr, align 8, !dbg !623
  %tmp11 = load i8** %in, align 8, !dbg !626
  %tmp12 = load i8* %tmp11, align 1, !dbg !627
  %conv15 = sext i8 %tmp12 to i32, !dbg !627
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %tmp10, i8* getelementptr inbounds ([34 x i8]* @.str7, i32 0, i32 0), i32 %conv15), !dbg !628
  call void @exit(i32 1) #8, !dbg !629
  unreachable, !dbg !629

if.end16:                                         ; preds = %lor.lhs.false
  br label %while.cond, !dbg !630

while.cond:                                       ; preds = %while.body, %if.end16
  %val.0 = phi i32 [ 0, %if.end16 ], [ %add, %while.body ]
  %tmp13 = load i8** %in, align 8, !dbg !631
  %tmp14 = load i8* %tmp13, align 1, !dbg !632
  %conv17 = sext i8 %tmp14 to i32, !dbg !632
  %cmp18 = icmp sge i32 %conv17, 48, !dbg !632
  br i1 %cmp18, label %land.rhs, label %land.end, !dbg !632

land.rhs:                                         ; preds = %while.cond
  %tmp15 = load i8** %in, align 8, !dbg !633
  %tmp16 = load i8* %tmp15, align 1, !dbg !634
  %conv20 = sext i8 %tmp16 to i32, !dbg !634
  %cmp21 = icmp sle i32 %conv20, 57, !dbg !634
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %tmp17 = phi i1 [ false, %while.cond ], [ %cmp21, %land.rhs ]
  br i1 %tmp17, label %while.body, label %while.end, !dbg !635

while.body:                                       ; preds = %land.end
  %mul = mul nsw i32 %val.0, 10, !dbg !637
  %tmp18 = load i8** %in, align 8, !dbg !638
  %tmp19 = load i8* %tmp18, align 1, !dbg !639
  %conv23 = sext i8 %tmp19 to i32, !dbg !639
  %sub = sub nsw i32 %conv23, 48, !dbg !639
  %add = add nsw i32 %mul, %sub, !dbg !637
  call void @llvm.dbg.value(metadata i32 %add, i64 0, metadata !601, metadata !432), !dbg !602
  %tmp20 = load i8** %in, align 8, !dbg !640
  %incdec.ptr24 = getelementptr inbounds i8* %tmp20, i32 1, !dbg !640
  store i8* %incdec.ptr24, i8** %in, align 8, !dbg !640
  br label %while.cond, !dbg !630

while.end:                                        ; preds = %land.end
  %tobool = icmp ne i32 %_neg.0, 0, !dbg !641
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !641

cond.true:                                        ; preds = %while.end
  %sub25 = sub nsw i32 0, %val.0, !dbg !642
  br label %cond.end, !dbg !641

cond.false:                                       ; preds = %while.end
  br label %cond.end, !dbg !641

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub25, %cond.true ], [ %val.0, %cond.false ], !dbg !641
  ret i32 %cond, !dbg !643
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @veci_resize(%struct.veci_t* %v, i32 %k) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.veci_t* %v, i64 0, metadata !645, metadata !432), !dbg !646
  call void @llvm.dbg.value(metadata i32 %k, i64 0, metadata !647, metadata !432), !dbg !648
  %size = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 0, !dbg !649
  store i32 %k, i32* %size, align 4, !dbg !649
  ret void, !dbg !650
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @skipLine(i8** %in) #6 {
entry:
  call void @llvm.dbg.value(metadata i8** %in, i64 0, metadata !651, metadata !432), !dbg !652
  br label %for.cond, !dbg !653

for.cond:                                         ; preds = %if.end6, %entry
  %tmp = load i8** %in, align 8, !dbg !654
  %tmp1 = load i8* %tmp, align 1, !dbg !659
  %conv = sext i8 %tmp1 to i32, !dbg !659
  %cmp = icmp eq i32 %conv, 0, !dbg !659
  br i1 %cmp, label %if.then, label %if.end, !dbg !660

if.then:                                          ; preds = %for.cond
  br label %return, !dbg !661

if.end:                                           ; preds = %for.cond
  %tmp2 = load i8** %in, align 8, !dbg !663
  %tmp3 = load i8* %tmp2, align 1, !dbg !665
  %conv2 = sext i8 %tmp3 to i32, !dbg !665
  %cmp3 = icmp eq i32 %conv2, 10, !dbg !665
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !666

if.then5:                                         ; preds = %if.end
  %tmp4 = load i8** %in, align 8, !dbg !667
  %incdec.ptr = getelementptr inbounds i8* %tmp4, i32 1, !dbg !667
  store i8* %incdec.ptr, i8** %in, align 8, !dbg !667
  br label %return, !dbg !669

if.end6:                                          ; preds = %if.end
  %tmp5 = load i8** %in, align 8, !dbg !670
  %incdec.ptr7 = getelementptr inbounds i8* %tmp5, i32 1, !dbg !670
  store i8* %incdec.ptr7, i8** %in, align 8, !dbg !670
  br label %for.cond, !dbg !671

return:                                           ; preds = %if.then5, %if.then
  ret void, !dbg !672
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @skipWhitespace(i8** %in) #6 {
entry:
  call void @llvm.dbg.value(metadata i8** %in, i64 0, metadata !673, metadata !432), !dbg !674
  br label %while.cond, !dbg !675

while.cond:                                       ; preds = %while.body, %entry
  %tmp = load i8** %in, align 8, !dbg !676
  %tmp1 = load i8* %tmp, align 1, !dbg !677
  %conv = sext i8 %tmp1 to i32, !dbg !677
  %cmp = icmp sge i32 %conv, 9, !dbg !677
  br i1 %cmp, label %land.lhs.true, label %lor.rhs, !dbg !678

land.lhs.true:                                    ; preds = %while.cond
  %tmp2 = load i8** %in, align 8, !dbg !679
  %tmp3 = load i8* %tmp2, align 1, !dbg !680
  %conv2 = sext i8 %tmp3 to i32, !dbg !680
  %cmp3 = icmp sle i32 %conv2, 13, !dbg !680
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !678

lor.rhs:                                          ; preds = %land.lhs.true, %while.cond
  %tmp4 = load i8** %in, align 8, !dbg !681
  %tmp5 = load i8* %tmp4, align 1, !dbg !682
  %conv5 = sext i8 %tmp5 to i32, !dbg !682
  %cmp6 = icmp eq i32 %conv5, 32, !dbg !682
  br label %lor.end, !dbg !678

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %tmp6 = phi i1 [ true, %land.lhs.true ], [ %cmp6, %lor.rhs ]
  br i1 %tmp6, label %while.body, label %while.end, !dbg !683

while.body:                                       ; preds = %lor.end
  %tmp7 = load i8** %in, align 8, !dbg !686
  %incdec.ptr = getelementptr inbounds i8* %tmp7, i32 1, !dbg !686
  store i8* %incdec.ptr, i8** %in, align 8, !dbg !686
  br label %while.cond, !dbg !675

while.end:                                        ; preds = %lor.end
  ret void, !dbg !687
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @veci_new(%struct.veci_t* %v) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.veci_t* %v, i64 0, metadata !688, metadata !432), !dbg !689
  %size = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 0, !dbg !690
  store i32 0, i32* %size, align 4, !dbg !690
  %cap = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 1, !dbg !691
  store i32 2048, i32* %cap, align 4, !dbg !691
  %cap1 = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 1, !dbg !692
  %tmp = load i32* %cap1, align 4, !dbg !692
  %conv = sext i32 %tmp to i64, !dbg !692
  %mul = mul i64 4, %conv, !dbg !693
  %call = call noalias i8* @malloc(i64 %mul) #7, !dbg !694
  %tmp1 = bitcast i8* %call to i32*, !dbg !695
  %ptr = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 2, !dbg !696
  store i32* %tmp1, i32** %ptr, align 8, !dbg !696
  ret void, !dbg !697
}

; Function Attrs: nounwind uwtable
define %struct.clause_t* @clause_from_lit(i32 %l) #0 {
entry:
  call void @llvm.dbg.value(metadata i32 %l, i64 0, metadata !698, metadata !432), !dbg !699
  %conv = sext i32 %l to i64, !dbg !700
  %conv1 = sext i32 %l to i64, !dbg !701
  %add = add i64 %conv, %conv1, !dbg !700
  %add2 = add i64 %add, 1, !dbg !700
  %tmp = inttoptr i64 %add2 to %struct.clause_t*, !dbg !702
  ret %struct.clause_t* %tmp, !dbg !703
}

; Function Attrs: nounwind uwtable
define i32 @clause_is_lit(%struct.clause_t* %c) #0 {
entry:
  call void @llvm.dbg.value(metadata %struct.clause_t* %c, i64 0, metadata !704, metadata !432), !dbg !705
  %tmp = ptrtoint %struct.clause_t* %c to i64, !dbg !706
  %and = and i64 %tmp, 1, !dbg !706
  %conv = trunc i64 %and to i32, !dbg !707
  ret i32 %conv, !dbg !708
}

; Function Attrs: nounwind uwtable
define i32 @clause_read_lit(%struct.clause_t* %c) #0 {
entry:
  call void @llvm.dbg.value(metadata %struct.clause_t* %c, i64 0, metadata !709, metadata !432), !dbg !710
  %tmp = ptrtoint %struct.clause_t* %c to i64, !dbg !711
  %shr = lshr i64 %tmp, 1, !dbg !711
  %conv = trunc i64 %shr to i32, !dbg !712
  ret i32 %conv, !dbg !713
}

; Function Attrs: nounwind uwtable
define void @solver_setnvars(%struct.solver_t* %s, i32 %n) #0 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !714, metadata !432), !dbg !715
  call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !716, metadata !432), !dbg !717
  %cap = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 1, !dbg !718
  %tmp = load i32* %cap, align 4, !dbg !718
  %cmp = icmp slt i32 %tmp, %n, !dbg !718
  br i1 %cmp, label %if.then, label %if.end, !dbg !720

if.then:                                          ; preds = %entry
  %cap1 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 1, !dbg !721
  store i32 2048, i32* %cap1, align 4, !dbg !721
  %wlists = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 10, !dbg !723
  %tmp1 = load %struct.vecp_t** %wlists, align 8, !dbg !723
  %tmp2 = bitcast %struct.vecp_t* %tmp1 to i8*, !dbg !723
  %cap2 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 1, !dbg !724
  %tmp3 = load i32* %cap2, align 4, !dbg !724
  %conv = sext i32 %tmp3 to i64, !dbg !724
  %mul = mul i64 16, %conv, !dbg !725
  %mul3 = mul i64 %mul, 2, !dbg !725
  %call = call i8* @realloc(i8* %tmp2, i64 %mul3) #7, !dbg !726
  %tmp4 = bitcast i8* %call to %struct.vecp_t*, !dbg !727
  %wlists4 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 10, !dbg !728
  store %struct.vecp_t* %tmp4, %struct.vecp_t** %wlists4, align 8, !dbg !728
  %activity = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 11, !dbg !729
  %tmp5 = load i64** %activity, align 8, !dbg !729
  %tmp6 = bitcast i64* %tmp5 to i8*, !dbg !729
  %cap5 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 1, !dbg !730
  %tmp7 = load i32* %cap5, align 4, !dbg !730
  %conv6 = sext i32 %tmp7 to i64, !dbg !730
  %mul7 = mul i64 8, %conv6, !dbg !731
  %call8 = call i8* @realloc(i8* %tmp6, i64 %mul7) #7, !dbg !732
  %tmp8 = bitcast i8* %call8 to i64*, !dbg !733
  %activity9 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 11, !dbg !734
  store i64* %tmp8, i64** %activity9, align 8, !dbg !734
  %assigns = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 12, !dbg !735
  %tmp9 = load i8** %assigns, align 8, !dbg !735
  %cap10 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 1, !dbg !736
  %tmp10 = load i32* %cap10, align 4, !dbg !736
  %conv11 = sext i32 %tmp10 to i64, !dbg !736
  %call13 = call i8* @realloc(i8* %tmp9, i64 %conv11) #7, !dbg !737
  %assigns14 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 12, !dbg !738
  store i8* %call13, i8** %assigns14, align 8, !dbg !738
  %orderpos = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 13, !dbg !739
  %tmp11 = load i32** %orderpos, align 8, !dbg !739
  %tmp12 = bitcast i32* %tmp11 to i8*, !dbg !739
  %cap15 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 1, !dbg !740
  %tmp13 = load i32* %cap15, align 4, !dbg !740
  %conv16 = sext i32 %tmp13 to i64, !dbg !740
  %mul17 = mul i64 4, %conv16, !dbg !741
  %call18 = call i8* @realloc(i8* %tmp12, i64 %mul17) #7, !dbg !742
  %tmp14 = bitcast i8* %call18 to i32*, !dbg !743
  %orderpos19 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 13, !dbg !744
  store i32* %tmp14, i32** %orderpos19, align 8, !dbg !744
  %reasons = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 14, !dbg !745
  %tmp15 = load %struct.clause_t*** %reasons, align 8, !dbg !745
  %tmp16 = bitcast %struct.clause_t** %tmp15 to i8*, !dbg !745
  %cap20 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 1, !dbg !746
  %tmp17 = load i32* %cap20, align 4, !dbg !746
  %conv21 = sext i32 %tmp17 to i64, !dbg !746
  %mul22 = mul i64 8, %conv21, !dbg !747
  %call23 = call i8* @realloc(i8* %tmp16, i64 %mul22) #7, !dbg !748
  %tmp18 = bitcast i8* %call23 to %struct.clause_t**, !dbg !749
  %reasons24 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 14, !dbg !750
  store %struct.clause_t** %tmp18, %struct.clause_t*** %reasons24, align 8, !dbg !750
  %levels = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 15, !dbg !751
  %tmp19 = load i32** %levels, align 8, !dbg !751
  %tmp20 = bitcast i32* %tmp19 to i8*, !dbg !751
  %cap25 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 1, !dbg !752
  %tmp21 = load i32* %cap25, align 4, !dbg !752
  %conv26 = sext i32 %tmp21 to i64, !dbg !752
  %mul27 = mul i64 4, %conv26, !dbg !753
  %call28 = call i8* @realloc(i8* %tmp20, i64 %mul27) #7, !dbg !754
  %tmp22 = bitcast i8* %call28 to i32*, !dbg !755
  %levels29 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 15, !dbg !756
  store i32* %tmp22, i32** %levels29, align 8, !dbg !756
  %tags = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 18, !dbg !757
  %tmp23 = load i8** %tags, align 8, !dbg !757
  %cap30 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 1, !dbg !758
  %tmp24 = load i32* %cap30, align 4, !dbg !758
  %conv31 = sext i32 %tmp24 to i64, !dbg !758
  %call33 = call i8* @realloc(i8* %tmp23, i64 %conv31) #7, !dbg !759
  %tags34 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 18, !dbg !760
  store i8* %call33, i8** %tags34, align 8, !dbg !760
  %trail = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 16, !dbg !761
  %tmp25 = load i32** %trail, align 8, !dbg !761
  %tmp26 = bitcast i32* %tmp25 to i8*, !dbg !761
  %cap35 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 1, !dbg !762
  %tmp27 = load i32* %cap35, align 4, !dbg !762
  %conv36 = sext i32 %tmp27 to i64, !dbg !762
  %mul37 = mul i64 4, %conv36, !dbg !763
  %call38 = call i8* @realloc(i8* %tmp26, i64 %mul37) #7, !dbg !764
  %tmp28 = bitcast i8* %call38 to i32*, !dbg !765
  %trail39 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 16, !dbg !766
  store i32* %tmp28, i32** %trail39, align 8, !dbg !766
  br label %if.end, !dbg !767

if.end:                                           ; preds = %if.then, %entry
  %size = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 0, !dbg !768
  %tmp29 = load i32* %size, align 4, !dbg !768
  call void @llvm.dbg.value(metadata i32 %tmp29, i64 0, metadata !770, metadata !432), !dbg !771
  br label %for.cond, !dbg !772

for.cond:                                         ; preds = %for.inc, %if.end
  %var.0 = phi i32 [ %tmp29, %if.end ], [ %inc, %for.inc ]
  %cmp40 = icmp slt i32 %var.0, %n, !dbg !773
  br i1 %cmp40, label %for.body, label %for.end, !dbg !775

for.body:                                         ; preds = %for.cond
  %mul42 = mul nsw i32 2, %var.0, !dbg !776
  %idxprom = sext i32 %mul42 to i64, !dbg !778
  %wlists43 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 10, !dbg !779
  %tmp30 = load %struct.vecp_t** %wlists43, align 8, !dbg !779
  %arrayidx = getelementptr inbounds %struct.vecp_t* %tmp30, i64 %idxprom, !dbg !778
  call fastcc void @vecp_new(%struct.vecp_t* %arrayidx), !dbg !780
  %mul44 = mul nsw i32 2, %var.0, !dbg !781
  %add = add nsw i32 %mul44, 1, !dbg !781
  %idxprom45 = sext i32 %add to i64, !dbg !782
  %wlists46 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 10, !dbg !783
  %tmp31 = load %struct.vecp_t** %wlists46, align 8, !dbg !783
  %arrayidx47 = getelementptr inbounds %struct.vecp_t* %tmp31, i64 %idxprom45, !dbg !782
  call fastcc void @vecp_new(%struct.vecp_t* %arrayidx47), !dbg !784
  %idxprom48 = sext i32 %var.0 to i64, !dbg !785
  %activity49 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 11, !dbg !785
  %tmp32 = load i64** %activity49, align 8, !dbg !785
  %arrayidx50 = getelementptr inbounds i64* %tmp32, i64 %idxprom48, !dbg !785
  store i64 0, i64* %arrayidx50, align 8, !dbg !785
  %idxprom51 = sext i32 %var.0 to i64, !dbg !786
  %assigns52 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 12, !dbg !786
  %tmp33 = load i8** %assigns52, align 8, !dbg !786
  %arrayidx53 = getelementptr inbounds i8* %tmp33, i64 %idxprom51, !dbg !786
  store i8 0, i8* %arrayidx53, align 1, !dbg !786
  %order = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 21, !dbg !787
  %call54 = call fastcc i32 @veci_size11(%struct.veci_t* %order), !dbg !788
  %idxprom55 = sext i32 %var.0 to i64, !dbg !789
  %orderpos56 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 13, !dbg !789
  %tmp34 = load i32** %orderpos56, align 8, !dbg !789
  %arrayidx57 = getelementptr inbounds i32* %tmp34, i64 %idxprom55, !dbg !789
  store i32 %call54, i32* %arrayidx57, align 4, !dbg !789
  %idxprom58 = sext i32 %var.0 to i64, !dbg !790
  %reasons59 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 14, !dbg !790
  %tmp35 = load %struct.clause_t*** %reasons59, align 8, !dbg !790
  %arrayidx60 = getelementptr inbounds %struct.clause_t** %tmp35, i64 %idxprom58, !dbg !790
  store %struct.clause_t* null, %struct.clause_t** %arrayidx60, align 8, !dbg !790
  %idxprom61 = sext i32 %var.0 to i64, !dbg !791
  %levels62 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 15, !dbg !791
  %tmp36 = load i32** %levels62, align 8, !dbg !791
  %arrayidx63 = getelementptr inbounds i32* %tmp36, i64 %idxprom61, !dbg !791
  store i32 0, i32* %arrayidx63, align 4, !dbg !791
  %idxprom64 = sext i32 %var.0 to i64, !dbg !792
  %tags65 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 18, !dbg !792
  %tmp37 = load i8** %tags65, align 8, !dbg !792
  %arrayidx66 = getelementptr inbounds i8* %tmp37, i64 %idxprom64, !dbg !792
  store i8 0, i8* %arrayidx66, align 1, !dbg !792
  %order67 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 21, !dbg !793
  call fastcc void @veci_push12(%struct.veci_t* %order67, i32 %var.0), !dbg !794
  call fastcc void @order_update(%struct.solver_t* %s, i32 %var.0), !dbg !795
  br label %for.inc, !dbg !796

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %var.0, 1, !dbg !797
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !770, metadata !432), !dbg !771
  br label %for.cond, !dbg !798

for.end:                                          ; preds = %for.cond
  %size68 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 0, !dbg !799
  %tmp38 = load i32* %size68, align 4, !dbg !799
  %cmp69 = icmp sgt i32 %n, %tmp38, !dbg !800
  br i1 %cmp69, label %cond.true, label %cond.false, !dbg !800

cond.true:                                        ; preds = %for.end
  br label %cond.end, !dbg !800

cond.false:                                       ; preds = %for.end
  %size71 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 0, !dbg !801
  %tmp39 = load i32* %size71, align 4, !dbg !801
  br label %cond.end, !dbg !800

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %n, %cond.true ], [ %tmp39, %cond.false ], !dbg !800
  %size72 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 0, !dbg !803
  store i32 %cond, i32* %size72, align 4, !dbg !803
  ret void, !dbg !806
}

; Function Attrs: nounwind uwtable
define %struct.clause_t* @solver_propagate(%struct.solver_t* %s) #0 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !807, metadata !432), !dbg !808
  %assigns = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 12, !dbg !809
  %tmp = load i8** %assigns, align 8, !dbg !809
  call void @llvm.dbg.value(metadata i8* %tmp, i64 0, metadata !810, metadata !432), !dbg !811
  call void @llvm.dbg.value(metadata %struct.clause_t* null, i64 0, metadata !812, metadata !432), !dbg !813
  br label %while.cond, !dbg !814

while.cond:                                       ; preds = %for.end101, %entry
  %confl.0 = phi %struct.clause_t* [ null, %entry ], [ %confl.1, %for.end101 ]
  %cmp = icmp eq %struct.clause_t* %confl.0, null, !dbg !815
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !815

land.rhs:                                         ; preds = %while.cond
  %qtail = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 3, !dbg !818
  %tmp1 = load i32* %qtail, align 4, !dbg !818
  %qhead = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 2, !dbg !820
  %tmp2 = load i32* %qhead, align 4, !dbg !820
  %sub = sub nsw i32 %tmp1, %tmp2, !dbg !821
  %cmp1 = icmp sgt i32 %sub, 0, !dbg !821
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %tmp3 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %tmp3, label %while.body, label %while.end111, !dbg !822

while.body:                                       ; preds = %land.end
  %qhead2 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 2, !dbg !824
  %tmp4 = load i32* %qhead2, align 4, !dbg !824
  %inc = add nsw i32 %tmp4, 1, !dbg !824
  store i32 %inc, i32* %qhead2, align 4, !dbg !824
  %idxprom = sext i32 %tmp4 to i64, !dbg !826
  %trail = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 16, !dbg !826
  %tmp5 = load i32** %trail, align 8, !dbg !826
  %arrayidx = getelementptr inbounds i32* %tmp5, i64 %idxprom, !dbg !826
  %tmp6 = load i32* %arrayidx, align 4, !dbg !826
  call void @llvm.dbg.value(metadata i32 %tmp6, i64 0, metadata !827, metadata !432), !dbg !828
  %call = call fastcc %struct.vecp_t* @solver_read_wlist(%struct.solver_t* %s, i32 %tmp6), !dbg !829
  call void @llvm.dbg.value(metadata %struct.vecp_t* %call, i64 0, metadata !830, metadata !432), !dbg !831
  %call3 = call fastcc i8** @vecp_begin(%struct.vecp_t* %call), !dbg !832
  %tmp7 = bitcast i8** %call3 to %struct.clause_t**, !dbg !833
  call void @llvm.dbg.value(metadata %struct.clause_t** %tmp7, i64 0, metadata !834, metadata !432), !dbg !835
  %call4 = call fastcc i32 @vecp_size(%struct.vecp_t* %call), !dbg !836
  %idx.ext = sext i32 %call4 to i64, !dbg !837
  %add.ptr = getelementptr inbounds %struct.clause_t** %tmp7, i64 %idx.ext, !dbg !837
  call void @llvm.dbg.value(metadata %struct.clause_t** %add.ptr, i64 0, metadata !838, metadata !432), !dbg !839
  %stats = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 28, !dbg !840
  %propagations = getelementptr inbounds %struct.stats_t* %stats, i32 0, i32 2, !dbg !840
  %tmp8 = load i64* %propagations, align 8, !dbg !840
  %inc5 = add nsw i64 %tmp8, 1, !dbg !840
  store i64 %inc5, i64* %propagations, align 8, !dbg !840
  %simpdb_props = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 26, !dbg !841
  %tmp9 = load i32* %simpdb_props, align 4, !dbg !841
  %dec = add nsw i32 %tmp9, -1, !dbg !841
  store i32 %dec, i32* %simpdb_props, align 4, !dbg !841
  call void @llvm.dbg.value(metadata %struct.clause_t** %tmp7, i64 0, metadata !842, metadata !432), !dbg !843
  call void @llvm.dbg.value(metadata %struct.clause_t** %tmp7, i64 0, metadata !844, metadata !432), !dbg !845
  br label %for.cond, !dbg !846

for.cond:                                         ; preds = %next, %while.body
  %i.0 = phi %struct.clause_t** [ %tmp7, %while.body ], [ %incdec.ptr100, %next ]
  %confl.1 = phi %struct.clause_t* [ %confl.0, %while.body ], [ %confl.6, %next ]
  %j.0 = phi %struct.clause_t** [ %tmp7, %while.body ], [ %j.7, %next ]
  %cmp6 = icmp ult %struct.clause_t** %i.0, %add.ptr, !dbg !848
  br i1 %cmp6, label %for.body, label %for.end101, !dbg !850

for.body:                                         ; preds = %for.cond
  %tmp10 = load %struct.clause_t** %i.0, align 8, !dbg !851
  %call7 = call i32 @clause_is_lit(%struct.clause_t* %tmp10), !dbg !854
  %tobool = icmp ne i32 %call7, 0, !dbg !855
  br i1 %tobool, label %if.then, label %if.else, !dbg !855

if.then:                                          ; preds = %for.body
  %tmp11 = load %struct.clause_t** %i.0, align 8, !dbg !856
  %incdec.ptr = getelementptr inbounds %struct.clause_t** %j.0, i32 1, !dbg !858
  call void @llvm.dbg.value(metadata %struct.clause_t** %incdec.ptr, i64 0, metadata !842, metadata !432), !dbg !843
  store %struct.clause_t* %tmp11, %struct.clause_t** %j.0, align 8, !dbg !859
  %tmp12 = load %struct.clause_t** %i.0, align 8, !dbg !860
  %call8 = call i32 @clause_read_lit(%struct.clause_t* %tmp12), !dbg !862
  %call9 = call %struct.clause_t* @clause_from_lit(i32 %tmp6), !dbg !863
  %call10 = call fastcc i32 @enqueue(%struct.solver_t* %s, i32 %call8, %struct.clause_t* %call9), !dbg !864
  %tobool11 = icmp ne i32 %call10, 0, !dbg !865
  br i1 %tobool11, label %if.end, label %if.then12, !dbg !865

if.then12:                                        ; preds = %if.then
  %binary = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 17, !dbg !866
  %tmp13 = load %struct.clause_t** %binary, align 8, !dbg !866
  call void @llvm.dbg.value(metadata %struct.clause_t* %tmp13, i64 0, metadata !812, metadata !432), !dbg !813
  %call13 = call fastcc i32 @lit_neg13(i32 %tmp6), !dbg !868
  %call14 = call fastcc i32* @clause_begin(%struct.clause_t* %tmp13), !dbg !869
  %arrayidx15 = getelementptr inbounds i32* %call14, i64 1, !dbg !870
  store i32 %call13, i32* %arrayidx15, align 4, !dbg !870
  %incdec.ptr16 = getelementptr inbounds %struct.clause_t** %i.0, i32 1, !dbg !871
  call void @llvm.dbg.value(metadata %struct.clause_t** %incdec.ptr16, i64 0, metadata !844, metadata !432), !dbg !845
  %tmp14 = load %struct.clause_t** %i.0, align 8, !dbg !872
  %call17 = call i32 @clause_read_lit(%struct.clause_t* %tmp14), !dbg !873
  %call18 = call fastcc i32* @clause_begin(%struct.clause_t* %tmp13), !dbg !874
  store i32 %call17, i32* %call18, align 4, !dbg !875
  br label %while.cond20, !dbg !876

while.cond20:                                     ; preds = %while.body22, %if.then12
  %i.1 = phi %struct.clause_t** [ %incdec.ptr16, %if.then12 ], [ %incdec.ptr23, %while.body22 ]
  %j.1 = phi %struct.clause_t** [ %incdec.ptr, %if.then12 ], [ %incdec.ptr24, %while.body22 ]
  %cmp21 = icmp ult %struct.clause_t** %i.1, %add.ptr, !dbg !877
  br i1 %cmp21, label %while.body22, label %while.end, !dbg !876

while.body22:                                     ; preds = %while.cond20
  %incdec.ptr23 = getelementptr inbounds %struct.clause_t** %i.1, i32 1, !dbg !878
  call void @llvm.dbg.value(metadata %struct.clause_t** %incdec.ptr23, i64 0, metadata !844, metadata !432), !dbg !845
  %tmp15 = load %struct.clause_t** %i.1, align 8, !dbg !879
  %incdec.ptr24 = getelementptr inbounds %struct.clause_t** %j.1, i32 1, !dbg !880
  call void @llvm.dbg.value(metadata %struct.clause_t** %incdec.ptr24, i64 0, metadata !842, metadata !432), !dbg !843
  store %struct.clause_t* %tmp15, %struct.clause_t** %j.1, align 8, !dbg !881
  br label %while.cond20, !dbg !876

while.end:                                        ; preds = %while.cond20
  br label %if.end, !dbg !882

if.end:                                           ; preds = %while.end, %if.then
  %i.2 = phi %struct.clause_t** [ %i.0, %if.then ], [ %i.1, %while.end ]
  %confl.2 = phi %struct.clause_t* [ %confl.1, %if.then ], [ %tmp13, %while.end ]
  %j.2 = phi %struct.clause_t** [ %incdec.ptr, %if.then ], [ %j.1, %while.end ]
  br label %if.end99, !dbg !883

if.else:                                          ; preds = %for.body
  %tmp16 = load %struct.clause_t** %i.0, align 8, !dbg !884
  %call25 = call fastcc i32* @clause_begin(%struct.clause_t* %tmp16), !dbg !886
  call void @llvm.dbg.value(metadata i32* %call25, i64 0, metadata !887, metadata !432), !dbg !888
  %call26 = call fastcc i32 @lit_neg13(i32 %tmp6), !dbg !889
  call void @llvm.dbg.value(metadata i32 %call26, i64 0, metadata !890, metadata !432), !dbg !891
  %tmp17 = load i32* %call25, align 4, !dbg !892
  %cmp28 = icmp eq i32 %tmp17, %call26, !dbg !892
  br i1 %cmp28, label %if.then29, label %if.end33, !dbg !894

if.then29:                                        ; preds = %if.else
  %arrayidx30 = getelementptr inbounds i32* %call25, i64 1, !dbg !895
  %tmp18 = load i32* %arrayidx30, align 4, !dbg !895
  store i32 %tmp18, i32* %call25, align 4, !dbg !897
  %arrayidx32 = getelementptr inbounds i32* %call25, i64 1, !dbg !898
  store i32 %call26, i32* %arrayidx32, align 4, !dbg !898
  br label %if.end33, !dbg !899

if.end33:                                         ; preds = %if.then29, %if.else
  %arrayidx34 = getelementptr inbounds i32* %call25, i64 1, !dbg !900
  %tmp19 = load i32* %arrayidx34, align 4, !dbg !900
  %cmp35 = icmp eq i32 %tmp19, %call26, !dbg !900
  br i1 %cmp35, label %cond.true, label %cond.false, !dbg !900

cond.true:                                        ; preds = %if.end33
  br label %cond.end, !dbg !901

cond.false:                                       ; preds = %if.end33
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 721, i8* getelementptr inbounds ([35 x i8]* @__PRETTY_FUNCTION__.solver_propagate, i32 0, i32 0)) #8, !dbg !903
  unreachable, !dbg !903

bb:                                               ; No predecessors!
  br label %cond.end, !dbg !900

cond.end:                                         ; preds = %bb, %cond.true
  %tmp20 = load i32* %call25, align 4, !dbg !905
  %call37 = call fastcc i32 @lit_sign(i32 %tmp20), !dbg !906
  %tobool38 = icmp ne i32 %call37, 0, !dbg !907
  %lnot = xor i1 %tobool38, true, !dbg !907
  %lnot.ext = zext i1 %lnot to i32, !dbg !907
  %conv = trunc i32 %lnot.ext to i8, !dbg !907
  call void @llvm.dbg.value(metadata i8 %conv, i64 0, metadata !908, metadata !432), !dbg !909
  %conv39 = sext i8 %conv to i32, !dbg !910
  %sub40 = sub nsw i32 %conv39, 1, !dbg !910
  %conv41 = sext i8 %conv to i32, !dbg !911
  %add = add nsw i32 %conv41, %sub40, !dbg !911
  %conv42 = trunc i32 %add to i8, !dbg !911
  call void @llvm.dbg.value(metadata i8 %conv42, i64 0, metadata !908, metadata !432), !dbg !909
  %tmp21 = load i32* %call25, align 4, !dbg !912
  %call44 = call fastcc i32 @lit_var(i32 %tmp21), !dbg !914
  %idxprom45 = sext i32 %call44 to i64, !dbg !915
  %arrayidx46 = getelementptr inbounds i8* %tmp, i64 %idxprom45, !dbg !915
  %tmp22 = load i8* %arrayidx46, align 1, !dbg !915
  %conv47 = sext i8 %tmp22 to i32, !dbg !915
  %conv48 = sext i8 %conv42 to i32, !dbg !916
  %cmp49 = icmp eq i32 %conv47, %conv48, !dbg !915
  br i1 %cmp49, label %if.then51, label %if.else53, !dbg !917

if.then51:                                        ; preds = %cond.end
  %tmp23 = load %struct.clause_t** %i.0, align 8, !dbg !918
  %incdec.ptr52 = getelementptr inbounds %struct.clause_t** %j.0, i32 1, !dbg !920
  call void @llvm.dbg.value(metadata %struct.clause_t** %incdec.ptr52, i64 0, metadata !842, metadata !432), !dbg !843
  store %struct.clause_t* %tmp23, %struct.clause_t** %j.0, align 8, !dbg !921
  br label %if.end98, !dbg !922

if.else53:                                        ; preds = %cond.end
  %tmp24 = load %struct.clause_t** %i.0, align 8, !dbg !923
  %call54 = call fastcc i32 @clause_size(%struct.clause_t* %tmp24), !dbg !925
  %idx.ext55 = sext i32 %call54 to i64, !dbg !926
  %add.ptr56 = getelementptr inbounds i32* %call25, i64 %idx.ext55, !dbg !926
  call void @llvm.dbg.value(metadata i32* %add.ptr56, i64 0, metadata !927, metadata !432), !dbg !928
  %add.ptr57 = getelementptr inbounds i32* %call25, i64 2, !dbg !929
  call void @llvm.dbg.value(metadata i32* %add.ptr57, i64 0, metadata !931, metadata !432), !dbg !932
  br label %for.cond58, !dbg !933

for.cond58:                                       ; preds = %for.inc, %if.else53
  %k.0 = phi i32* [ %add.ptr57, %if.else53 ], [ %incdec.ptr83, %for.inc ]
  %cmp59 = icmp ult i32* %k.0, %add.ptr56, !dbg !934
  br i1 %cmp59, label %for.body61, label %for.end, !dbg !936

for.body61:                                       ; preds = %for.cond58
  %tmp25 = load i32* %k.0, align 4, !dbg !937
  %call63 = call fastcc i32 @lit_sign(i32 %tmp25), !dbg !939
  %conv64 = trunc i32 %call63 to i8, !dbg !939
  call void @llvm.dbg.value(metadata i8 %conv64, i64 0, metadata !940, metadata !432), !dbg !941
  %conv65 = sext i8 %conv64 to i32, !dbg !942
  %sub66 = sub nsw i32 %conv65, 1, !dbg !942
  %conv67 = sext i8 %conv64 to i32, !dbg !943
  %add68 = add nsw i32 %conv67, %sub66, !dbg !943
  %conv69 = trunc i32 %add68 to i8, !dbg !943
  call void @llvm.dbg.value(metadata i8 %conv69, i64 0, metadata !940, metadata !432), !dbg !941
  %tmp26 = load i32* %k.0, align 4, !dbg !944
  %call70 = call fastcc i32 @lit_var(i32 %tmp26), !dbg !946
  %idxprom71 = sext i32 %call70 to i64, !dbg !947
  %arrayidx72 = getelementptr inbounds i8* %tmp, i64 %idxprom71, !dbg !947
  %tmp27 = load i8* %arrayidx72, align 1, !dbg !947
  %conv73 = sext i8 %tmp27 to i32, !dbg !947
  %conv74 = sext i8 %conv69 to i32, !dbg !948
  %cmp75 = icmp ne i32 %conv73, %conv74, !dbg !947
  br i1 %cmp75, label %if.then77, label %if.end82, !dbg !949

if.then77:                                        ; preds = %for.body61
  %tmp28 = load i32* %k.0, align 4, !dbg !950
  store i32 %tmp28, i32* %call25, align 4, !dbg !952
  store i32 %call26, i32* %k.0, align 4, !dbg !953
  %arrayidx79 = getelementptr inbounds i32* %call25, i64 1, !dbg !954
  %tmp29 = load i32* %arrayidx79, align 4, !dbg !954
  %call80 = call fastcc i32 @lit_neg13(i32 %tmp29), !dbg !955
  %call81 = call fastcc %struct.vecp_t* @solver_read_wlist(%struct.solver_t* %s, i32 %call80), !dbg !956
  %tmp30 = load %struct.clause_t** %i.0, align 8, !dbg !957
  %tmp31 = bitcast %struct.clause_t* %tmp30 to i8*, !dbg !957
  call fastcc void @vecp_push(%struct.vecp_t* %call81, i8* %tmp31), !dbg !958
  br label %next, !dbg !959

if.end82:                                         ; preds = %for.body61
  br label %for.inc, !dbg !960

for.inc:                                          ; preds = %if.end82
  %incdec.ptr83 = getelementptr inbounds i32* %k.0, i32 1, !dbg !961
  call void @llvm.dbg.value(metadata i32* %incdec.ptr83, i64 0, metadata !931, metadata !432), !dbg !932
  br label %for.cond58, !dbg !962

for.end:                                          ; preds = %for.cond58
  %tmp32 = load %struct.clause_t** %i.0, align 8, !dbg !963
  %incdec.ptr84 = getelementptr inbounds %struct.clause_t** %j.0, i32 1, !dbg !964
  call void @llvm.dbg.value(metadata %struct.clause_t** %incdec.ptr84, i64 0, metadata !842, metadata !432), !dbg !843
  store %struct.clause_t* %tmp32, %struct.clause_t** %j.0, align 8, !dbg !965
  %tmp33 = load i32* %call25, align 4, !dbg !966
  %tmp34 = load %struct.clause_t** %i.0, align 8, !dbg !968
  %call86 = call fastcc i32 @enqueue(%struct.solver_t* %s, i32 %tmp33, %struct.clause_t* %tmp34), !dbg !969
  %tobool87 = icmp ne i32 %call86, 0, !dbg !970
  br i1 %tobool87, label %if.end97, label %if.then88, !dbg !970

if.then88:                                        ; preds = %for.end
  %incdec.ptr89 = getelementptr inbounds %struct.clause_t** %i.0, i32 1, !dbg !971
  call void @llvm.dbg.value(metadata %struct.clause_t** %incdec.ptr89, i64 0, metadata !844, metadata !432), !dbg !845
  %tmp35 = load %struct.clause_t** %i.0, align 8, !dbg !973
  call void @llvm.dbg.value(metadata %struct.clause_t* %tmp35, i64 0, metadata !812, metadata !432), !dbg !813
  br label %while.cond90, !dbg !974

while.cond90:                                     ; preds = %while.body93, %if.then88
  %i.3 = phi %struct.clause_t** [ %incdec.ptr89, %if.then88 ], [ %incdec.ptr94, %while.body93 ]
  %j.3 = phi %struct.clause_t** [ %incdec.ptr84, %if.then88 ], [ %incdec.ptr95, %while.body93 ]
  %cmp91 = icmp ult %struct.clause_t** %i.3, %add.ptr, !dbg !975
  br i1 %cmp91, label %while.body93, label %while.end96, !dbg !974

while.body93:                                     ; preds = %while.cond90
  %incdec.ptr94 = getelementptr inbounds %struct.clause_t** %i.3, i32 1, !dbg !976
  call void @llvm.dbg.value(metadata %struct.clause_t** %incdec.ptr94, i64 0, metadata !844, metadata !432), !dbg !845
  %tmp36 = load %struct.clause_t** %i.3, align 8, !dbg !977
  %incdec.ptr95 = getelementptr inbounds %struct.clause_t** %j.3, i32 1, !dbg !978
  call void @llvm.dbg.value(metadata %struct.clause_t** %incdec.ptr95, i64 0, metadata !842, metadata !432), !dbg !843
  store %struct.clause_t* %tmp36, %struct.clause_t** %j.3, align 8, !dbg !979
  br label %while.cond90, !dbg !974

while.end96:                                      ; preds = %while.cond90
  br label %if.end97, !dbg !980

if.end97:                                         ; preds = %while.end96, %for.end
  %i.4 = phi %struct.clause_t** [ %i.0, %for.end ], [ %i.3, %while.end96 ]
  %confl.3 = phi %struct.clause_t* [ %confl.1, %for.end ], [ %tmp35, %while.end96 ]
  %j.4 = phi %struct.clause_t** [ %incdec.ptr84, %for.end ], [ %j.3, %while.end96 ]
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.then51
  %i.5 = phi %struct.clause_t** [ %i.0, %if.then51 ], [ %i.4, %if.end97 ]
  %confl.4 = phi %struct.clause_t* [ %confl.1, %if.then51 ], [ %confl.3, %if.end97 ]
  %j.5 = phi %struct.clause_t** [ %incdec.ptr52, %if.then51 ], [ %j.4, %if.end97 ]
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.end
  %i.6 = phi %struct.clause_t** [ %i.2, %if.end ], [ %i.5, %if.end98 ]
  %confl.5 = phi %struct.clause_t* [ %confl.2, %if.end ], [ %confl.4, %if.end98 ]
  %j.6 = phi %struct.clause_t** [ %j.2, %if.end ], [ %j.5, %if.end98 ]
  br label %next, !dbg !981

next:                                             ; preds = %if.end99, %if.then77
  %i.7 = phi %struct.clause_t** [ %i.6, %if.end99 ], [ %i.0, %if.then77 ]
  %confl.6 = phi %struct.clause_t* [ %confl.5, %if.end99 ], [ %confl.1, %if.then77 ]
  %j.7 = phi %struct.clause_t** [ %j.6, %if.end99 ], [ %j.0, %if.then77 ]
  %incdec.ptr100 = getelementptr inbounds %struct.clause_t** %i.7, i32 1, !dbg !982
  call void @llvm.dbg.value(metadata %struct.clause_t** %incdec.ptr100, i64 0, metadata !844, metadata !432), !dbg !845
  br label %for.cond, !dbg !983

for.end101:                                       ; preds = %for.cond
  %call102 = call fastcc i8** @vecp_begin(%struct.vecp_t* %call), !dbg !984
  %tmp37 = bitcast i8** %call102 to %struct.clause_t**, !dbg !985
  %sub.ptr.lhs.cast = ptrtoint %struct.clause_t** %j.0 to i64, !dbg !986
  %sub.ptr.rhs.cast = ptrtoint %struct.clause_t** %tmp37 to i64, !dbg !986
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !986
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !986
  %stats103 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 28, !dbg !987
  %inspects = getelementptr inbounds %struct.stats_t* %stats103, i32 0, i32 3, !dbg !987
  %tmp38 = load i64* %inspects, align 8, !dbg !987
  %add104 = add nsw i64 %tmp38, %sub.ptr.div, !dbg !987
  store i64 %add104, i64* %inspects, align 8, !dbg !987
  %call105 = call fastcc i8** @vecp_begin(%struct.vecp_t* %call), !dbg !988
  %tmp39 = bitcast i8** %call105 to %struct.clause_t**, !dbg !989
  %sub.ptr.lhs.cast106 = ptrtoint %struct.clause_t** %j.0 to i64, !dbg !990
  %sub.ptr.rhs.cast107 = ptrtoint %struct.clause_t** %tmp39 to i64, !dbg !990
  %sub.ptr.sub108 = sub i64 %sub.ptr.lhs.cast106, %sub.ptr.rhs.cast107, !dbg !990
  %sub.ptr.div109 = sdiv exact i64 %sub.ptr.sub108, 8, !dbg !990
  %conv110 = trunc i64 %sub.ptr.div109 to i32, !dbg !990
  call fastcc void @vecp_resize(%struct.vecp_t* %call, i32 %conv110), !dbg !991
  br label %while.cond, !dbg !814

while.end111:                                     ; preds = %land.end
  ret %struct.clause_t* %confl.0, !dbg !992
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind uwtable
define void @solver_reducedb(%struct.solver_t* %s) #0 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !993, metadata !432), !dbg !994
  %learnts1 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 5, !dbg !995
  %call = call fastcc i8** @vecp_begin(%struct.vecp_t* %learnts1), !dbg !996
  %tmp = bitcast i8** %call to %struct.clause_t**, !dbg !997
  call void @llvm.dbg.value(metadata %struct.clause_t** %tmp, i64 0, metadata !998, metadata !432), !dbg !999
  %reasons2 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 14, !dbg !1000
  %tmp1 = load %struct.clause_t*** %reasons2, align 8, !dbg !1000
  call void @llvm.dbg.value(metadata %struct.clause_t** %tmp1, i64 0, metadata !1001, metadata !432), !dbg !1002
  %learnts3 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 5, !dbg !1003
  %call4 = call fastcc i8** @vecp_begin(%struct.vecp_t* %learnts3), !dbg !1004
  %learnts5 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 5, !dbg !1005
  %call6 = call fastcc i32 @vecp_size(%struct.vecp_t* %learnts5), !dbg !1006
  call void @sort(i8** %call4, i32 %call6, i32 (i8*, i8*)* @clause_cmp), !dbg !1007
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1008, metadata !432), !dbg !1009
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1010, metadata !432), !dbg !1011
  br label %for.cond, !dbg !1012

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc26, %for.inc ]
  %j.0 = phi i32 [ 0, %entry ], [ %j.1, %for.inc ]
  %learnts7 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 5, !dbg !1014
  %call8 = call fastcc i32 @vecp_size(%struct.vecp_t* %learnts7), !dbg !1016
  %div = sdiv i32 %call8, 2, !dbg !1016
  %cmp = icmp slt i32 %i.0, %div, !dbg !1017
  br i1 %cmp, label %for.body, label %for.end, !dbg !1018

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !1019
  %arrayidx = getelementptr inbounds %struct.clause_t** %tmp, i64 %idxprom, !dbg !1019
  %tmp2 = load %struct.clause_t** %arrayidx, align 8, !dbg !1019
  %call9 = call fastcc i32 @clause_size(%struct.clause_t* %tmp2), !dbg !1022
  %cmp10 = icmp sgt i32 %call9, 2, !dbg !1022
  br i1 %cmp10, label %land.lhs.true, label %if.else, !dbg !1023

land.lhs.true:                                    ; preds = %for.body
  %idxprom11 = sext i32 %i.0 to i64, !dbg !1024
  %arrayidx12 = getelementptr inbounds %struct.clause_t** %tmp, i64 %idxprom11, !dbg !1024
  %tmp3 = load %struct.clause_t** %arrayidx12, align 8, !dbg !1024
  %call13 = call fastcc i32* @clause_begin(%struct.clause_t* %tmp3), !dbg !1025
  %tmp4 = load i32* %call13, align 4, !dbg !1026
  %call14 = call fastcc i32 @lit_var(i32 %tmp4), !dbg !1027
  %idxprom15 = sext i32 %call14 to i64, !dbg !1028
  %arrayidx16 = getelementptr inbounds %struct.clause_t** %tmp1, i64 %idxprom15, !dbg !1028
  %tmp5 = load %struct.clause_t** %arrayidx16, align 8, !dbg !1028
  %idxprom17 = sext i32 %i.0 to i64, !dbg !1029
  %arrayidx18 = getelementptr inbounds %struct.clause_t** %tmp, i64 %idxprom17, !dbg !1029
  %tmp6 = load %struct.clause_t** %arrayidx18, align 8, !dbg !1029
  %cmp19 = icmp ne %struct.clause_t* %tmp5, %tmp6, !dbg !1028
  br i1 %cmp19, label %if.then, label %if.else, !dbg !1023

if.then:                                          ; preds = %land.lhs.true
  %idxprom20 = sext i32 %i.0 to i64, !dbg !1030
  %arrayidx21 = getelementptr inbounds %struct.clause_t** %tmp, i64 %idxprom20, !dbg !1030
  %tmp7 = load %struct.clause_t** %arrayidx21, align 8, !dbg !1030
  call fastcc void @clause_remove(%struct.solver_t* %s, %struct.clause_t* %tmp7), !dbg !1031
  br label %if.end, !dbg !1031

if.else:                                          ; preds = %land.lhs.true, %for.body
  %idxprom22 = sext i32 %i.0 to i64, !dbg !1032
  %arrayidx23 = getelementptr inbounds %struct.clause_t** %tmp, i64 %idxprom22, !dbg !1032
  %tmp8 = load %struct.clause_t** %arrayidx23, align 8, !dbg !1032
  %inc = add nsw i32 %j.0, 1, !dbg !1033
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !1008, metadata !432), !dbg !1009
  %idxprom24 = sext i32 %j.0 to i64, !dbg !1034
  %arrayidx25 = getelementptr inbounds %struct.clause_t** %tmp, i64 %idxprom24, !dbg !1034
  store %struct.clause_t* %tmp8, %struct.clause_t** %arrayidx25, align 8, !dbg !1034
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %j.1 = phi i32 [ %j.0, %if.then ], [ %inc, %if.else ]
  br label %for.inc, !dbg !1035

for.inc:                                          ; preds = %if.end
  %inc26 = add nsw i32 %i.0, 1, !dbg !1036
  call void @llvm.dbg.value(metadata i32 %inc26, i64 0, metadata !1010, metadata !432), !dbg !1011
  br label %for.cond, !dbg !1037

for.end:                                          ; preds = %for.cond
  %learnts27 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 5, !dbg !1038
  call fastcc void @vecp_resize(%struct.vecp_t* %learnts27, i32 %j.0), !dbg !1039
  ret void, !dbg !1040
}

; Function Attrs: nounwind uwtable
define void @sort(i8** %array, i32 %size, i32 (i8*, i8*)* %comp) #0 {
entry:
  %seed = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8** %array, i64 0, metadata !1041, metadata !432), !dbg !1042
  call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !1043, metadata !432), !dbg !1044
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %comp, i64 0, metadata !1045, metadata !432), !dbg !1046
  call void @llvm.dbg.declare(metadata i64* %seed, metadata !1047, metadata !432), !dbg !1048
  store i64 91648253, i64* %seed, align 8, !dbg !1048
  call fastcc void @sortrnd(i8** %array, i32 %size, i32 (i8*, i8*)* %comp, i64* %seed), !dbg !1049
  ret void, !dbg !1050
}

; Function Attrs: nounwind uwtable
define %struct.solver_t* @solver_new() #0 {
entry:
  %call = call noalias i8* @malloc(i64 336) #7, !dbg !1051
  %tmp = bitcast i8* %call to %struct.solver_t*, !dbg !1052
  call void @llvm.dbg.value(metadata %struct.solver_t* %tmp, i64 0, metadata !1053, metadata !432), !dbg !1054
  %clauses = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 4, !dbg !1055
  call fastcc void @vecp_new(%struct.vecp_t* %clauses), !dbg !1056
  %learnts = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 5, !dbg !1057
  call fastcc void @vecp_new(%struct.vecp_t* %learnts), !dbg !1058
  %order = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 21, !dbg !1059
  call fastcc void @veci_new16(%struct.veci_t* %order), !dbg !1060
  %trail_lim = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 22, !dbg !1061
  call fastcc void @veci_new16(%struct.veci_t* %trail_lim), !dbg !1062
  %tagged = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 19, !dbg !1063
  call fastcc void @veci_new16(%struct.veci_t* %tagged), !dbg !1064
  %stack = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 20, !dbg !1065
  call fastcc void @veci_new16(%struct.veci_t* %stack), !dbg !1066
  %model = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 23, !dbg !1067
  call fastcc void @veci_new16(%struct.veci_t* %model), !dbg !1068
  %wlists = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 10, !dbg !1069
  store %struct.vecp_t* null, %struct.vecp_t** %wlists, align 8, !dbg !1069
  %activity = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 11, !dbg !1070
  store i64* null, i64** %activity, align 8, !dbg !1070
  %assigns = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 12, !dbg !1071
  store i8* null, i8** %assigns, align 8, !dbg !1071
  %orderpos = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 13, !dbg !1072
  store i32* null, i32** %orderpos, align 8, !dbg !1072
  %reasons = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 14, !dbg !1073
  store %struct.clause_t** null, %struct.clause_t*** %reasons, align 8, !dbg !1073
  %levels = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 15, !dbg !1074
  store i32* null, i32** %levels, align 8, !dbg !1074
  %tags = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 18, !dbg !1075
  store i8* null, i8** %tags, align 8, !dbg !1075
  %trail = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 16, !dbg !1076
  store i32* null, i32** %trail, align 8, !dbg !1076
  %size = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 0, !dbg !1077
  store i32 0, i32* %size, align 4, !dbg !1077
  %cap = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 1, !dbg !1078
  store i32 0, i32* %cap, align 4, !dbg !1078
  %qhead = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 2, !dbg !1079
  store i32 0, i32* %qhead, align 4, !dbg !1079
  %qtail = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 3, !dbg !1080
  store i32 0, i32* %qtail, align 4, !dbg !1080
  %cla_inc = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 8, !dbg !1081
  store i64 1, i64* %cla_inc, align 8, !dbg !1081
  %cla_decay = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 9, !dbg !1082
  store i64 1, i64* %cla_decay, align 8, !dbg !1082
  %var_inc = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 6, !dbg !1083
  store i64 1, i64* %var_inc, align 8, !dbg !1083
  %var_decay = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 7, !dbg !1084
  store i64 1, i64* %var_decay, align 8, !dbg !1084
  %root_level = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 24, !dbg !1085
  store i32 0, i32* %root_level, align 4, !dbg !1085
  %simpdb_assigns = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 25, !dbg !1086
  store i32 0, i32* %simpdb_assigns, align 4, !dbg !1086
  %simpdb_props = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 26, !dbg !1087
  store i32 0, i32* %simpdb_props, align 4, !dbg !1087
  %call1 = call noalias i8* @malloc(i64 12) #7, !dbg !1088
  %tmp1 = bitcast i8* %call1 to %struct.clause_t*, !dbg !1089
  %binary = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 17, !dbg !1090
  store %struct.clause_t* %tmp1, %struct.clause_t** %binary, align 8, !dbg !1090
  %binary2 = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 17, !dbg !1091
  %tmp2 = load %struct.clause_t** %binary2, align 8, !dbg !1091
  %size_learnt = getelementptr inbounds %struct.clause_t* %tmp2, i32 0, i32 0, !dbg !1091
  store i32 4, i32* %size_learnt, align 4, !dbg !1091
  %verbosity = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 27, !dbg !1092
  store i32 0, i32* %verbosity, align 4, !dbg !1092
  %stats = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 28, !dbg !1093
  %starts = getelementptr inbounds %struct.stats_t* %stats, i32 0, i32 0, !dbg !1093
  store i64 0, i64* %starts, align 8, !dbg !1093
  %stats3 = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 28, !dbg !1094
  %decisions = getelementptr inbounds %struct.stats_t* %stats3, i32 0, i32 1, !dbg !1094
  store i64 0, i64* %decisions, align 8, !dbg !1094
  %stats4 = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 28, !dbg !1095
  %propagations = getelementptr inbounds %struct.stats_t* %stats4, i32 0, i32 2, !dbg !1095
  store i64 0, i64* %propagations, align 8, !dbg !1095
  %stats5 = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 28, !dbg !1096
  %inspects = getelementptr inbounds %struct.stats_t* %stats5, i32 0, i32 3, !dbg !1096
  store i64 0, i64* %inspects, align 8, !dbg !1096
  %stats6 = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 28, !dbg !1097
  %conflicts = getelementptr inbounds %struct.stats_t* %stats6, i32 0, i32 4, !dbg !1097
  store i64 0, i64* %conflicts, align 8, !dbg !1097
  %stats7 = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 28, !dbg !1098
  %clauses8 = getelementptr inbounds %struct.stats_t* %stats7, i32 0, i32 5, !dbg !1098
  store i64 0, i64* %clauses8, align 8, !dbg !1098
  %stats9 = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 28, !dbg !1099
  %clauses_literals = getelementptr inbounds %struct.stats_t* %stats9, i32 0, i32 6, !dbg !1099
  store i64 0, i64* %clauses_literals, align 8, !dbg !1099
  %stats10 = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 28, !dbg !1100
  %learnts11 = getelementptr inbounds %struct.stats_t* %stats10, i32 0, i32 7, !dbg !1100
  store i64 0, i64* %learnts11, align 8, !dbg !1100
  %stats12 = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 28, !dbg !1101
  %learnts_literals = getelementptr inbounds %struct.stats_t* %stats12, i32 0, i32 8, !dbg !1101
  store i64 0, i64* %learnts_literals, align 8, !dbg !1101
  %stats13 = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 28, !dbg !1102
  %max_literals = getelementptr inbounds %struct.stats_t* %stats13, i32 0, i32 9, !dbg !1102
  store i64 0, i64* %max_literals, align 8, !dbg !1102
  %stats14 = getelementptr inbounds %struct.solver_t* %tmp, i32 0, i32 28, !dbg !1103
  %tot_literals = getelementptr inbounds %struct.stats_t* %stats14, i32 0, i32 10, !dbg !1103
  store i64 0, i64* %tot_literals, align 8, !dbg !1103
  ret %struct.solver_t* %tmp, !dbg !1104
}

; Function Attrs: nounwind uwtable
define void @solver_delete(%struct.solver_t* %s) #0 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !1105, metadata !432), !dbg !1106
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1107, metadata !432), !dbg !1108
  br label %for.cond, !dbg !1109

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %clauses = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 4, !dbg !1111
  %call = call fastcc i32 @vecp_size(%struct.vecp_t* %clauses), !dbg !1113
  %cmp = icmp slt i32 %i.0, %call, !dbg !1114
  br i1 %cmp, label %for.body, label %for.end, !dbg !1115

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !1116
  %clauses1 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 4, !dbg !1117
  %call2 = call fastcc i8** @vecp_begin(%struct.vecp_t* %clauses1), !dbg !1116
  %arrayidx = getelementptr inbounds i8** %call2, i64 %idxprom, !dbg !1116
  %tmp = load i8** %arrayidx, align 8, !dbg !1116
  call void @free(i8* %tmp) #7, !dbg !1118
  br label %for.inc, !dbg !1118

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !1119
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !1107, metadata !432), !dbg !1108
  br label %for.cond, !dbg !1120

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1107, metadata !432), !dbg !1108
  br label %for.cond3, !dbg !1121

for.cond3:                                        ; preds = %for.inc11, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc12, %for.inc11 ]
  %learnts = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 5, !dbg !1123
  %call4 = call fastcc i32 @vecp_size(%struct.vecp_t* %learnts), !dbg !1125
  %cmp5 = icmp slt i32 %i.1, %call4, !dbg !1126
  br i1 %cmp5, label %for.body6, label %for.end13, !dbg !1127

for.body6:                                        ; preds = %for.cond3
  %idxprom7 = sext i32 %i.1 to i64, !dbg !1128
  %learnts8 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 5, !dbg !1129
  %call9 = call fastcc i8** @vecp_begin(%struct.vecp_t* %learnts8), !dbg !1128
  %arrayidx10 = getelementptr inbounds i8** %call9, i64 %idxprom7, !dbg !1128
  %tmp1 = load i8** %arrayidx10, align 8, !dbg !1128
  call void @free(i8* %tmp1) #7, !dbg !1130
  br label %for.inc11, !dbg !1130

for.inc11:                                        ; preds = %for.body6
  %inc12 = add nsw i32 %i.1, 1, !dbg !1131
  call void @llvm.dbg.value(metadata i32 %inc12, i64 0, metadata !1107, metadata !432), !dbg !1108
  br label %for.cond3, !dbg !1132

for.end13:                                        ; preds = %for.cond3
  %clauses14 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 4, !dbg !1133
  call fastcc void @vecp_delete(%struct.vecp_t* %clauses14), !dbg !1134
  %learnts15 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 5, !dbg !1135
  call fastcc void @vecp_delete(%struct.vecp_t* %learnts15), !dbg !1136
  %order = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 21, !dbg !1137
  call fastcc void @veci_delete17(%struct.veci_t* %order), !dbg !1138
  %trail_lim = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 22, !dbg !1139
  call fastcc void @veci_delete17(%struct.veci_t* %trail_lim), !dbg !1140
  %tagged = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 19, !dbg !1141
  call fastcc void @veci_delete17(%struct.veci_t* %tagged), !dbg !1142
  %stack = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 20, !dbg !1143
  call fastcc void @veci_delete17(%struct.veci_t* %stack), !dbg !1144
  %model = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 23, !dbg !1145
  call fastcc void @veci_delete17(%struct.veci_t* %model), !dbg !1146
  %binary = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 17, !dbg !1147
  %tmp2 = load %struct.clause_t** %binary, align 8, !dbg !1147
  %tmp3 = bitcast %struct.clause_t* %tmp2 to i8*, !dbg !1147
  call void @free(i8* %tmp3) #7, !dbg !1148
  %wlists = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 10, !dbg !1149
  %tmp4 = load %struct.vecp_t** %wlists, align 8, !dbg !1149
  %cmp16 = icmp ne %struct.vecp_t* %tmp4, null, !dbg !1149
  br i1 %cmp16, label %if.then, label %if.end, !dbg !1151

if.then:                                          ; preds = %for.end13
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1152, metadata !432), !dbg !1154
  br label %for.cond18, !dbg !1155

for.cond18:                                       ; preds = %for.inc24, %if.then
  %i17.0 = phi i32 [ 0, %if.then ], [ %inc25, %for.inc24 ]
  %size = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 0, !dbg !1157
  %tmp5 = load i32* %size, align 4, !dbg !1157
  %mul = mul nsw i32 %tmp5, 2, !dbg !1157
  %cmp19 = icmp slt i32 %i17.0, %mul, !dbg !1159
  br i1 %cmp19, label %for.body20, label %for.end26, !dbg !1160

for.body20:                                       ; preds = %for.cond18
  %idxprom21 = sext i32 %i17.0 to i64, !dbg !1161
  %wlists22 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 10, !dbg !1162
  %tmp6 = load %struct.vecp_t** %wlists22, align 8, !dbg !1162
  %arrayidx23 = getelementptr inbounds %struct.vecp_t* %tmp6, i64 %idxprom21, !dbg !1161
  call fastcc void @vecp_delete(%struct.vecp_t* %arrayidx23), !dbg !1163
  br label %for.inc24, !dbg !1163

for.inc24:                                        ; preds = %for.body20
  %inc25 = add nsw i32 %i17.0, 1, !dbg !1164
  call void @llvm.dbg.value(metadata i32 %inc25, i64 0, metadata !1152, metadata !432), !dbg !1154
  br label %for.cond18, !dbg !1165

for.end26:                                        ; preds = %for.cond18
  %wlists27 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 10, !dbg !1166
  %tmp7 = load %struct.vecp_t** %wlists27, align 8, !dbg !1166
  %tmp8 = bitcast %struct.vecp_t* %tmp7 to i8*, !dbg !1166
  call void @free(i8* %tmp8) #7, !dbg !1167
  %activity = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 11, !dbg !1168
  %tmp9 = load i64** %activity, align 8, !dbg !1168
  %tmp10 = bitcast i64* %tmp9 to i8*, !dbg !1168
  call void @free(i8* %tmp10) #7, !dbg !1169
  %assigns = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 12, !dbg !1170
  %tmp11 = load i8** %assigns, align 8, !dbg !1170
  call void @free(i8* %tmp11) #7, !dbg !1171
  %orderpos = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 13, !dbg !1172
  %tmp12 = load i32** %orderpos, align 8, !dbg !1172
  %tmp13 = bitcast i32* %tmp12 to i8*, !dbg !1172
  call void @free(i8* %tmp13) #7, !dbg !1173
  %reasons = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 14, !dbg !1174
  %tmp14 = load %struct.clause_t*** %reasons, align 8, !dbg !1174
  %tmp15 = bitcast %struct.clause_t** %tmp14 to i8*, !dbg !1174
  call void @free(i8* %tmp15) #7, !dbg !1175
  %levels = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 15, !dbg !1176
  %tmp16 = load i32** %levels, align 8, !dbg !1176
  %tmp17 = bitcast i32* %tmp16 to i8*, !dbg !1176
  call void @free(i8* %tmp17) #7, !dbg !1177
  %trail = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 16, !dbg !1178
  %tmp18 = load i32** %trail, align 8, !dbg !1178
  %tmp19 = bitcast i32* %tmp18 to i8*, !dbg !1178
  call void @free(i8* %tmp19) #7, !dbg !1179
  %tags = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 18, !dbg !1180
  %tmp20 = load i8** %tags, align 8, !dbg !1180
  call void @free(i8* %tmp20) #7, !dbg !1181
  br label %if.end, !dbg !1182

if.end:                                           ; preds = %for.end26, %for.end13
  %tmp21 = bitcast %struct.solver_t* %s to i8*, !dbg !1183
  call void @free(i8* %tmp21) #7, !dbg !1184
  ret void, !dbg !1185
}

; Function Attrs: nounwind uwtable
define i32 @solver_addclause(%struct.solver_t* %s, i32* %begin, i32 %end) #0 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !1186, metadata !432), !dbg !1187
  call void @llvm.dbg.value(metadata i32* %begin, i64 0, metadata !1188, metadata !432), !dbg !1189
  call void @llvm.dbg.value(metadata i32 %end, i64 0, metadata !1190, metadata !432), !dbg !1191
  %cmp = icmp eq i32 0, %end, !dbg !1192
  br i1 %cmp, label %if.then, label %if.end, !dbg !1194

if.then:                                          ; preds = %entry
  br label %return, !dbg !1195

if.end:                                           ; preds = %entry
  %tmp = load i32* %begin, align 4, !dbg !1197
  %call = call fastcc i32 @lit_var(i32 %tmp), !dbg !1198
  call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !1199, metadata !432), !dbg !1200
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1201, metadata !432), !dbg !1202
  br label %for.cond, !dbg !1203

for.cond:                                         ; preds = %for.inc18, %if.end
  %i.0 = phi i32 [ 1, %if.end ], [ %inc, %for.inc18 ]
  %maxvar.0 = phi i32 [ %call, %if.end ], [ %cond, %for.inc18 ]
  %cmp1 = icmp slt i32 %i.0, %end, !dbg !1205
  br i1 %cmp1, label %for.body, label %for.end19, !dbg !1207

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !1208
  %arrayidx = getelementptr inbounds i32* %begin, i64 %idxprom, !dbg !1208
  %tmp1 = load i32* %arrayidx, align 4, !dbg !1208
  call void @llvm.dbg.value(metadata i32 %tmp1, i64 0, metadata !1210, metadata !432), !dbg !1211
  %call2 = call fastcc i32 @lit_var(i32 %tmp1), !dbg !1212
  %cmp3 = icmp sgt i32 %call2, %maxvar.0, !dbg !1212
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !1212

cond.true:                                        ; preds = %for.body
  %call4 = call fastcc i32 @lit_var(i32 %tmp1), !dbg !1213
  br label %cond.end, !dbg !1212

cond.false:                                       ; preds = %for.body
  br label %cond.end, !dbg !1212

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call4, %cond.true ], [ %maxvar.0, %cond.false ], !dbg !1212
  call void @llvm.dbg.value(metadata i32 %cond, i64 0, metadata !1199, metadata !432), !dbg !1200
  call void @llvm.dbg.value(metadata i32 %i.0, i64 0, metadata !1214, metadata !432), !dbg !1215
  br label %for.cond5, !dbg !1216

for.cond5:                                        ; preds = %for.inc, %cond.end
  %j.0 = phi i32 [ %i.0, %cond.end ], [ %dec, %for.inc ]
  %cmp6 = icmp sgt i32 %j.0, 0, !dbg !1218
  br i1 %cmp6, label %land.rhs, label %land.end, !dbg !1218

land.rhs:                                         ; preds = %for.cond5
  %sub = sub nsw i32 %j.0, 1, !dbg !1222
  %idxprom7 = sext i32 %sub to i64, !dbg !1224
  %arrayidx8 = getelementptr inbounds i32* %begin, i64 %idxprom7, !dbg !1224
  %tmp2 = load i32* %arrayidx8, align 4, !dbg !1224
  %cmp9 = icmp sgt i32 %tmp2, %tmp1, !dbg !1224
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond5
  %tmp3 = phi i1 [ false, %for.cond5 ], [ %cmp9, %land.rhs ]
  br i1 %tmp3, label %for.body10, label %for.end, !dbg !1225

for.body10:                                       ; preds = %land.end
  %sub11 = sub nsw i32 %j.0, 1, !dbg !1227
  %idxprom12 = sext i32 %sub11 to i64, !dbg !1228
  %arrayidx13 = getelementptr inbounds i32* %begin, i64 %idxprom12, !dbg !1228
  %tmp4 = load i32* %arrayidx13, align 4, !dbg !1228
  %idxprom14 = sext i32 %j.0 to i64, !dbg !1229
  %arrayidx15 = getelementptr inbounds i32* %begin, i64 %idxprom14, !dbg !1229
  store i32 %tmp4, i32* %arrayidx15, align 4, !dbg !1229
  br label %for.inc, !dbg !1229

for.inc:                                          ; preds = %for.body10
  %dec = add nsw i32 %j.0, -1, !dbg !1230
  call void @llvm.dbg.value(metadata i32 %dec, i64 0, metadata !1214, metadata !432), !dbg !1215
  br label %for.cond5, !dbg !1231

for.end:                                          ; preds = %land.end
  %idxprom16 = sext i32 %j.0 to i64, !dbg !1232
  %arrayidx17 = getelementptr inbounds i32* %begin, i64 %idxprom16, !dbg !1232
  store i32 %tmp1, i32* %arrayidx17, align 4, !dbg !1232
  br label %for.inc18, !dbg !1233

for.inc18:                                        ; preds = %for.end
  %inc = add nsw i32 %i.0, 1, !dbg !1234
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !1201, metadata !432), !dbg !1202
  br label %for.cond, !dbg !1235

for.end19:                                        ; preds = %for.cond
  %add = add nsw i32 %maxvar.0, 1, !dbg !1236
  call void @solver_setnvars(%struct.solver_t* %s, i32 %add), !dbg !1237
  %assigns = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 12, !dbg !1238
  %tmp5 = load i8** %assigns, align 8, !dbg !1238
  call void @llvm.dbg.value(metadata i8* %tmp5, i64 0, metadata !1239, metadata !432), !dbg !1240
  call void @llvm.dbg.value(metadata i32 -2, i64 0, metadata !1241, metadata !432), !dbg !1242
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1214, metadata !432), !dbg !1215
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1201, metadata !432), !dbg !1202
  br label %for.cond20, !dbg !1243

for.cond20:                                       ; preds = %for.inc66, %for.end19
  %j.1 = phi i32 [ 0, %for.end19 ], [ %j.2, %for.inc66 ]
  %i.1 = phi i32 [ 0, %for.end19 ], [ %inc67, %for.inc66 ]
  %last.0 = phi i32 [ -2, %for.end19 ], [ %last.1, %for.inc66 ]
  %cmp21 = icmp slt i32 %i.1, %end, !dbg !1245
  br i1 %cmp21, label %for.body22, label %for.end68, !dbg !1247

for.body22:                                       ; preds = %for.cond20
  %idxprom23 = sext i32 %i.1 to i64, !dbg !1248
  %arrayidx24 = getelementptr inbounds i32* %begin, i64 %idxprom23, !dbg !1248
  %tmp6 = load i32* %arrayidx24, align 4, !dbg !1248
  %call25 = call fastcc i32 @lit_sign(i32 %tmp6), !dbg !1250
  %tobool = icmp ne i32 %call25, 0, !dbg !1251
  %lnot = xor i1 %tobool, true, !dbg !1251
  %lnot.ext = zext i1 %lnot to i32, !dbg !1251
  %conv = trunc i32 %lnot.ext to i8, !dbg !1251
  call void @llvm.dbg.value(metadata i8 %conv, i64 0, metadata !1252, metadata !432), !dbg !1253
  %conv26 = sext i8 %conv to i32, !dbg !1254
  %sub27 = sub nsw i32 %conv26, 1, !dbg !1254
  %conv28 = sext i8 %conv to i32, !dbg !1255
  %add29 = add nsw i32 %conv28, %sub27, !dbg !1255
  %conv30 = trunc i32 %add29 to i8, !dbg !1255
  call void @llvm.dbg.value(metadata i8 %conv30, i64 0, metadata !1252, metadata !432), !dbg !1253
  %idxprom31 = sext i32 %i.1 to i64, !dbg !1256
  %arrayidx32 = getelementptr inbounds i32* %begin, i64 %idxprom31, !dbg !1256
  %tmp7 = load i32* %arrayidx32, align 4, !dbg !1256
  %call33 = call fastcc i32 @lit_neg13(i32 %last.0), !dbg !1258
  %cmp34 = icmp eq i32 %tmp7, %call33, !dbg !1256
  br i1 %cmp34, label %if.then45, label %lor.lhs.false, !dbg !1259

lor.lhs.false:                                    ; preds = %for.body22
  %conv36 = sext i8 %conv30 to i32, !dbg !1260
  %idxprom37 = sext i32 %i.1 to i64, !dbg !1262
  %arrayidx38 = getelementptr inbounds i32* %begin, i64 %idxprom37, !dbg !1262
  %tmp8 = load i32* %arrayidx38, align 4, !dbg !1262
  %call39 = call fastcc i32 @lit_var(i32 %tmp8), !dbg !1263
  %idxprom40 = sext i32 %call39 to i64, !dbg !1264
  %arrayidx41 = getelementptr inbounds i8* %tmp5, i64 %idxprom40, !dbg !1264
  %tmp9 = load i8* %arrayidx41, align 1, !dbg !1264
  %conv42 = sext i8 %tmp9 to i32, !dbg !1264
  %cmp43 = icmp eq i32 %conv36, %conv42, !dbg !1265
  br i1 %cmp43, label %if.then45, label %if.else, !dbg !1259

if.then45:                                        ; preds = %lor.lhs.false, %for.body22
  br label %return, !dbg !1266

if.else:                                          ; preds = %lor.lhs.false
  %idxprom46 = sext i32 %i.1 to i64, !dbg !1267
  %arrayidx47 = getelementptr inbounds i32* %begin, i64 %idxprom46, !dbg !1267
  %tmp10 = load i32* %arrayidx47, align 4, !dbg !1267
  %cmp48 = icmp ne i32 %tmp10, %last.0, !dbg !1267
  br i1 %cmp48, label %land.lhs.true, label %if.end64, !dbg !1269

land.lhs.true:                                    ; preds = %if.else
  %idxprom50 = sext i32 %i.1 to i64, !dbg !1270
  %arrayidx51 = getelementptr inbounds i32* %begin, i64 %idxprom50, !dbg !1270
  %tmp11 = load i32* %arrayidx51, align 4, !dbg !1270
  %call52 = call fastcc i32 @lit_var(i32 %tmp11), !dbg !1271
  %idxprom53 = sext i32 %call52 to i64, !dbg !1272
  %arrayidx54 = getelementptr inbounds i8* %tmp5, i64 %idxprom53, !dbg !1272
  %tmp12 = load i8* %arrayidx54, align 1, !dbg !1272
  %conv55 = sext i8 %tmp12 to i32, !dbg !1272
  %cmp56 = icmp eq i32 %conv55, 0, !dbg !1272
  br i1 %cmp56, label %if.then58, label %if.end64, !dbg !1269

if.then58:                                        ; preds = %land.lhs.true
  %idxprom59 = sext i32 %i.1 to i64, !dbg !1273
  %arrayidx60 = getelementptr inbounds i32* %begin, i64 %idxprom59, !dbg !1273
  %tmp13 = load i32* %arrayidx60, align 4, !dbg !1273
  %inc61 = add nsw i32 %j.1, 1, !dbg !1274
  call void @llvm.dbg.value(metadata i32 %inc61, i64 0, metadata !1214, metadata !432), !dbg !1215
  %idxprom62 = sext i32 %j.1 to i64, !dbg !1275
  %arrayidx63 = getelementptr inbounds i32* %begin, i64 %idxprom62, !dbg !1275
  store i32 %tmp13, i32* %arrayidx63, align 4, !dbg !1275
  call void @llvm.dbg.value(metadata i32 %tmp13, i64 0, metadata !1241, metadata !432), !dbg !1242
  br label %if.end64, !dbg !1276

if.end64:                                         ; preds = %if.then58, %land.lhs.true, %if.else
  %j.2 = phi i32 [ %inc61, %if.then58 ], [ %j.1, %land.lhs.true ], [ %j.1, %if.else ]
  %last.1 = phi i32 [ %tmp13, %if.then58 ], [ %last.0, %land.lhs.true ], [ %last.0, %if.else ]
  br label %if.end65

if.end65:                                         ; preds = %if.end64
  br label %for.inc66, !dbg !1277

for.inc66:                                        ; preds = %if.end65
  %inc67 = add nsw i32 %i.1, 1, !dbg !1278
  call void @llvm.dbg.value(metadata i32 %inc67, i64 0, metadata !1201, metadata !432), !dbg !1202
  br label %for.cond20, !dbg !1279

for.end68:                                        ; preds = %for.cond20
  %cmp69 = icmp eq i32 %j.1, 0, !dbg !1280
  br i1 %cmp69, label %if.then71, label %if.else72, !dbg !1282

if.then71:                                        ; preds = %for.end68
  br label %return, !dbg !1283

if.else72:                                        ; preds = %for.end68
  %cmp73 = icmp eq i32 %j.1, 1, !dbg !1284
  br i1 %cmp73, label %if.then75, label %if.end77, !dbg !1286

if.then75:                                        ; preds = %if.else72
  %tmp14 = load i32* %begin, align 4, !dbg !1287
  %call76 = call fastcc i32 @enqueue(%struct.solver_t* %s, i32 %tmp14, %struct.clause_t* null), !dbg !1288
  br label %return, !dbg !1289

if.end77:                                         ; preds = %if.else72
  br label %if.end78

if.end78:                                         ; preds = %if.end77
  %clauses = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 4, !dbg !1290
  %call79 = call fastcc %struct.clause_t* @clause_new(%struct.solver_t* %s, i32* %begin, i32 %j.1, i32 0), !dbg !1291
  %tmp15 = bitcast %struct.clause_t* %call79 to i8*, !dbg !1291
  call fastcc void @vecp_push(%struct.vecp_t* %clauses, i8* %tmp15), !dbg !1292
  %stats = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 28, !dbg !1293
  %clauses80 = getelementptr inbounds %struct.stats_t* %stats, i32 0, i32 5, !dbg !1293
  %tmp16 = load i64* %clauses80, align 8, !dbg !1293
  %inc81 = add nsw i64 %tmp16, 1, !dbg !1293
  store i64 %inc81, i64* %clauses80, align 8, !dbg !1293
  %conv82 = sext i32 %j.1 to i64, !dbg !1294
  %stats83 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 28, !dbg !1295
  %clauses_literals = getelementptr inbounds %struct.stats_t* %stats83, i32 0, i32 6, !dbg !1295
  %tmp17 = load i64* %clauses_literals, align 8, !dbg !1295
  %add84 = add nsw i64 %tmp17, %conv82, !dbg !1295
  store i64 %add84, i64* %clauses_literals, align 8, !dbg !1295
  br label %return, !dbg !1296

return:                                           ; preds = %if.end78, %if.then75, %if.then71, %if.then45, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then45 ], [ 0, %if.then71 ], [ %call76, %if.then75 ], [ 1, %if.end78 ]
  ret i32 %retval.0, !dbg !1297
}

; Function Attrs: nounwind uwtable
define i32 @solver_simplify(%struct.solver_t* %s) #0 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !1298, metadata !432), !dbg !1299
  %call = call fastcc i32 @solver_dlevel(%struct.solver_t* %s), !dbg !1300
  %cmp = icmp eq i32 %call, 0, !dbg !1300
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1300

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1301

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8]* @.str218, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 1045, i8* getelementptr inbounds ([31 x i8]* @__PRETTY_FUNCTION__.solver_simplify, i32 0, i32 0)) #8, !dbg !1303
  unreachable, !dbg !1303

bb:                                               ; No predecessors!
  br label %cond.end, !dbg !1300

cond.end:                                         ; preds = %bb, %cond.true
  %call1 = call %struct.clause_t* @solver_propagate(%struct.solver_t* %s), !dbg !1305
  %cmp2 = icmp ne %struct.clause_t* %call1, null, !dbg !1305
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1307

if.then:                                          ; preds = %cond.end
  br label %return, !dbg !1308

if.end:                                           ; preds = %cond.end
  %qhead = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 2, !dbg !1309
  %tmp = load i32* %qhead, align 4, !dbg !1309
  %simpdb_assigns = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 25, !dbg !1311
  %tmp1 = load i32* %simpdb_assigns, align 4, !dbg !1311
  %cmp3 = icmp eq i32 %tmp, %tmp1, !dbg !1309
  br i1 %cmp3, label %if.then5, label %lor.lhs.false, !dbg !1312

lor.lhs.false:                                    ; preds = %if.end
  %simpdb_props = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 26, !dbg !1313
  %tmp2 = load i32* %simpdb_props, align 4, !dbg !1313
  %cmp4 = icmp sgt i32 %tmp2, 0, !dbg !1313
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1312

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  br label %return, !dbg !1315

if.end6:                                          ; preds = %lor.lhs.false
  %reasons7 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 14, !dbg !1316
  %tmp3 = load %struct.clause_t*** %reasons7, align 8, !dbg !1316
  call void @llvm.dbg.value(metadata %struct.clause_t** %tmp3, i64 0, metadata !1317, metadata !432), !dbg !1318
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1319, metadata !432), !dbg !1320
  br label %for.cond, !dbg !1321

for.cond:                                         ; preds = %for.inc38, %if.end6
  %type.0 = phi i32 [ 0, %if.end6 ], [ %inc39, %for.inc38 ]
  %cmp8 = icmp slt i32 %type.0, 2, !dbg !1323
  br i1 %cmp8, label %for.body, label %for.end40, !dbg !1327

for.body:                                         ; preds = %for.cond
  %tobool = icmp ne i32 %type.0, 0, !dbg !1328
  br i1 %tobool, label %cond.true9, label %cond.false10, !dbg !1328

cond.true9:                                       ; preds = %for.body
  %learnts = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 5, !dbg !1330
  br label %cond.end11, !dbg !1328

cond.false10:                                     ; preds = %for.body
  %clauses = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 4, !dbg !1331
  br label %cond.end11, !dbg !1328

cond.end11:                                       ; preds = %cond.false10, %cond.true9
  %cond = phi %struct.vecp_t* [ %learnts, %cond.true9 ], [ %clauses, %cond.false10 ], !dbg !1328
  call void @llvm.dbg.value(metadata %struct.vecp_t* %cond, i64 0, metadata !1332, metadata !432), !dbg !1333
  %call12 = call fastcc i8** @vecp_begin(%struct.vecp_t* %cond), !dbg !1334
  %tmp4 = bitcast i8** %call12 to %struct.clause_t**, !dbg !1335
  call void @llvm.dbg.value(metadata %struct.clause_t** %tmp4, i64 0, metadata !1336, metadata !432), !dbg !1337
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1338, metadata !432), !dbg !1339
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1340, metadata !432), !dbg !1341
  br label %for.cond13, !dbg !1342

for.cond13:                                       ; preds = %for.inc, %cond.end11
  %i.0 = phi i32 [ 0, %cond.end11 ], [ %inc37, %for.inc ]
  %j.0 = phi i32 [ 0, %cond.end11 ], [ %j.1, %for.inc ]
  %call14 = call fastcc i32 @vecp_size(%struct.vecp_t* %cond), !dbg !1344
  %cmp15 = icmp slt i32 %i.0, %call14, !dbg !1346
  br i1 %cmp15, label %for.body16, label %for.end, !dbg !1347

for.body16:                                       ; preds = %for.cond13
  %idxprom = sext i32 %i.0 to i64, !dbg !1348
  %arrayidx = getelementptr inbounds %struct.clause_t** %tmp4, i64 %idxprom, !dbg !1348
  %tmp5 = load %struct.clause_t** %arrayidx, align 8, !dbg !1348
  %call17 = call fastcc i32* @clause_begin(%struct.clause_t* %tmp5), !dbg !1351
  %tmp6 = load i32* %call17, align 4, !dbg !1352
  %call18 = call fastcc i32 @lit_var(i32 %tmp6), !dbg !1353
  %idxprom19 = sext i32 %call18 to i64, !dbg !1354
  %arrayidx20 = getelementptr inbounds %struct.clause_t** %tmp3, i64 %idxprom19, !dbg !1354
  %tmp7 = load %struct.clause_t** %arrayidx20, align 8, !dbg !1354
  %idxprom21 = sext i32 %i.0 to i64, !dbg !1355
  %arrayidx22 = getelementptr inbounds %struct.clause_t** %tmp4, i64 %idxprom21, !dbg !1355
  %tmp8 = load %struct.clause_t** %arrayidx22, align 8, !dbg !1355
  %cmp23 = icmp ne %struct.clause_t* %tmp7, %tmp8, !dbg !1354
  br i1 %cmp23, label %land.lhs.true, label %if.else, !dbg !1356

land.lhs.true:                                    ; preds = %for.body16
  %idxprom24 = sext i32 %i.0 to i64, !dbg !1357
  %arrayidx25 = getelementptr inbounds %struct.clause_t** %tmp4, i64 %idxprom24, !dbg !1357
  %tmp9 = load %struct.clause_t** %arrayidx25, align 8, !dbg !1357
  %call26 = call fastcc signext i8 @clause_simplify(%struct.solver_t* %s, %struct.clause_t* %tmp9), !dbg !1358
  %conv = sext i8 %call26 to i32, !dbg !1358
  %cmp27 = icmp eq i32 %conv, 1, !dbg !1358
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !1356

if.then29:                                        ; preds = %land.lhs.true
  %idxprom30 = sext i32 %i.0 to i64, !dbg !1359
  %arrayidx31 = getelementptr inbounds %struct.clause_t** %tmp4, i64 %idxprom30, !dbg !1359
  %tmp10 = load %struct.clause_t** %arrayidx31, align 8, !dbg !1359
  call fastcc void @clause_remove(%struct.solver_t* %s, %struct.clause_t* %tmp10), !dbg !1360
  br label %if.end36, !dbg !1360

if.else:                                          ; preds = %land.lhs.true, %for.body16
  %idxprom32 = sext i32 %i.0 to i64, !dbg !1361
  %arrayidx33 = getelementptr inbounds %struct.clause_t** %tmp4, i64 %idxprom32, !dbg !1361
  %tmp11 = load %struct.clause_t** %arrayidx33, align 8, !dbg !1361
  %inc = add nsw i32 %j.0, 1, !dbg !1362
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !1340, metadata !432), !dbg !1341
  %idxprom34 = sext i32 %j.0 to i64, !dbg !1363
  %arrayidx35 = getelementptr inbounds %struct.clause_t** %tmp4, i64 %idxprom34, !dbg !1363
  store %struct.clause_t* %tmp11, %struct.clause_t** %arrayidx35, align 8, !dbg !1363
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then29
  %j.1 = phi i32 [ %j.0, %if.then29 ], [ %inc, %if.else ]
  br label %for.inc, !dbg !1364

for.inc:                                          ; preds = %if.end36
  %inc37 = add nsw i32 %i.0, 1, !dbg !1365
  call void @llvm.dbg.value(metadata i32 %inc37, i64 0, metadata !1338, metadata !432), !dbg !1339
  br label %for.cond13, !dbg !1366

for.end:                                          ; preds = %for.cond13
  call fastcc void @vecp_resize(%struct.vecp_t* %cond, i32 %j.0), !dbg !1367
  br label %for.inc38, !dbg !1368

for.inc38:                                        ; preds = %for.end
  %inc39 = add nsw i32 %type.0, 1, !dbg !1369
  call void @llvm.dbg.value(metadata i32 %inc39, i64 0, metadata !1319, metadata !432), !dbg !1320
  br label %for.cond, !dbg !1370

for.end40:                                        ; preds = %for.cond
  %qhead41 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 2, !dbg !1371
  %tmp12 = load i32* %qhead41, align 4, !dbg !1371
  %simpdb_assigns42 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 25, !dbg !1372
  store i32 %tmp12, i32* %simpdb_assigns42, align 4, !dbg !1372
  %stats = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 28, !dbg !1373
  %clauses_literals = getelementptr inbounds %struct.stats_t* %stats, i32 0, i32 6, !dbg !1373
  %tmp13 = load i64* %clauses_literals, align 8, !dbg !1373
  %stats43 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 28, !dbg !1374
  %learnts_literals = getelementptr inbounds %struct.stats_t* %stats43, i32 0, i32 8, !dbg !1374
  %tmp14 = load i64* %learnts_literals, align 8, !dbg !1374
  %add = add nsw i64 %tmp13, %tmp14, !dbg !1373
  %conv44 = trunc i64 %add to i32, !dbg !1375
  %simpdb_props45 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 26, !dbg !1376
  store i32 %conv44, i32* %simpdb_props45, align 4, !dbg !1376
  br label %return, !dbg !1377

return:                                           ; preds = %for.end40, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then5 ], [ 1, %for.end40 ]
  ret i32 %retval.0, !dbg !1378
}

; Function Attrs: nounwind uwtable
define i32 @solver_solve(%struct.solver_t* %s, i32* %begin, i32* %end) #0 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !1379, metadata !432), !dbg !1380
  call void @llvm.dbg.value(metadata i32* %begin, i64 0, metadata !1381, metadata !432), !dbg !1382
  call void @llvm.dbg.value(metadata i32* %end, i64 0, metadata !1383, metadata !432), !dbg !1384
  call void @llvm.dbg.value(metadata i32 100, i64 0, metadata !1385, metadata !432), !dbg !1386
  %call = call i32 @solver_nclauses(%struct.solver_t* %s), !dbg !1387
  %div = sdiv i32 %call, 3, !dbg !1387
  call void @llvm.dbg.value(metadata i32 %div, i64 0, metadata !1388, metadata !432), !dbg !1389
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !1390, metadata !432), !dbg !1391
  %assigns = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 12, !dbg !1392
  %tmp = load i8** %assigns, align 8, !dbg !1392
  call void @llvm.dbg.value(metadata i8* %tmp, i64 0, metadata !1393, metadata !432), !dbg !1394
  call void @llvm.dbg.value(metadata i32* %begin, i64 0, metadata !1395, metadata !432), !dbg !1396
  br label %for.cond, !dbg !1397

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32* [ %begin, %entry ], [ %incdec.ptr, %for.inc ]
  %cmp = icmp ult i32* %i.0, %end, !dbg !1399
  br i1 %cmp, label %for.body, label %for.end, !dbg !1401

for.body:                                         ; preds = %for.cond
  %tmp1 = load i32* %i.0, align 4, !dbg !1402
  %call1 = call fastcc i32 @lit_sign(i32 %tmp1), !dbg !1404
  %tobool = icmp ne i32 %call1, 0, !dbg !1404
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1404

cond.true:                                        ; preds = %for.body
  %tmp2 = load i32* %i.0, align 4, !dbg !1405
  %call2 = call fastcc i32 @lit_var(i32 %tmp2), !dbg !1406
  %idxprom = sext i32 %call2 to i64, !dbg !1407
  %arrayidx = getelementptr inbounds i8* %tmp, i64 %idxprom, !dbg !1407
  %tmp3 = load i8* %arrayidx, align 1, !dbg !1407
  %conv = sext i8 %tmp3 to i32, !dbg !1407
  %sub = sub nsw i32 0, %conv, !dbg !1408
  br label %cond.end, !dbg !1404

cond.false:                                       ; preds = %for.body
  %tmp4 = load i32* %i.0, align 4, !dbg !1409
  %call3 = call fastcc i32 @lit_var(i32 %tmp4), !dbg !1410
  %idxprom4 = sext i32 %call3 to i64, !dbg !1411
  %arrayidx5 = getelementptr inbounds i8* %tmp, i64 %idxprom4, !dbg !1411
  %tmp5 = load i8* %arrayidx5, align 1, !dbg !1411
  %conv6 = sext i8 %tmp5 to i32, !dbg !1411
  br label %cond.end, !dbg !1404

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %conv6, %cond.false ], !dbg !1404
  switch i32 %cond, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb7
    i32 -1, label %sw.bb11
  ], !dbg !1412

sw.bb:                                            ; preds = %cond.end
  br label %sw.epilog, !dbg !1415

sw.bb7:                                           ; preds = %cond.end
  %tmp6 = load i32* %i.0, align 4, !dbg !1417
  call fastcc void @assume(%struct.solver_t* %s, i32 %tmp6), !dbg !1418
  %call8 = call %struct.clause_t* @solver_propagate(%struct.solver_t* %s), !dbg !1419
  %cmp9 = icmp eq %struct.clause_t* %call8, null, !dbg !1419
  br i1 %cmp9, label %if.then, label %if.end, !dbg !1421

if.then:                                          ; preds = %sw.bb7
  br label %sw.epilog, !dbg !1422

if.end:                                           ; preds = %sw.bb7
  br label %sw.bb11, !dbg !1423

sw.bb11:                                          ; preds = %if.end, %cond.end
  call fastcc void @solver_canceluntil(%struct.solver_t* %s, i32 0), !dbg !1425
  br label %return, !dbg !1426

sw.epilog:                                        ; preds = %if.then, %sw.bb, %cond.end
  br label %for.inc, !dbg !1427

for.inc:                                          ; preds = %sw.epilog
  %incdec.ptr = getelementptr inbounds i32* %i.0, i32 1, !dbg !1428
  call void @llvm.dbg.value(metadata i32* %incdec.ptr, i64 0, metadata !1395, metadata !432), !dbg !1396
  br label %for.cond, !dbg !1429

for.end:                                          ; preds = %for.cond
  %call12 = call fastcc i32 @solver_dlevel(%struct.solver_t* %s), !dbg !1430
  %root_level = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 24, !dbg !1431
  store i32 %call12, i32* %root_level, align 4, !dbg !1431
  %verbosity = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 27, !dbg !1432
  %tmp7 = load i32* %verbosity, align 4, !dbg !1432
  %cmp13 = icmp sge i32 %tmp7, 1, !dbg !1432
  br i1 %cmp13, label %if.then15, label %if.end20, !dbg !1434

if.then15:                                        ; preds = %for.end
  %call16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([80 x i8]* @.str319, i32 0, i32 0)), !dbg !1435
  %call17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([80 x i8]* @.str420, i32 0, i32 0)), !dbg !1437
  %call18 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([80 x i8]* @.str521, i32 0, i32 0)), !dbg !1438
  %call19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([80 x i8]* @.str622, i32 0, i32 0)), !dbg !1439
  br label %if.end20, !dbg !1440

if.end20:                                         ; preds = %if.then15, %for.end
  br label %while.cond, !dbg !1441

while.cond:                                       ; preds = %while.body, %if.end20
  %status.0 = phi i8 [ 0, %if.end20 ], [ %call24, %while.body ]
  %conv21 = sext i8 %status.0 to i32, !dbg !1442
  %cmp22 = icmp eq i32 %conv21, 0, !dbg !1442
  br i1 %cmp22, label %while.body, label %while.end, !dbg !1441

while.body:                                       ; preds = %while.cond
  %call24 = call fastcc signext i8 @solver_search(%struct.solver_t* %s, i32 100, i32 %div), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %call24, i64 0, metadata !1390, metadata !432), !dbg !1391
  br label %while.cond, !dbg !1441

while.end:                                        ; preds = %while.cond
  %verbosity25 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 27, !dbg !1447
  %tmp8 = load i32* %verbosity25, align 4, !dbg !1447
  %cmp26 = icmp sge i32 %tmp8, 1, !dbg !1447
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !1449

if.then28:                                        ; preds = %while.end
  %call29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([80 x i8]* @.str622, i32 0, i32 0)), !dbg !1450
  br label %if.end30, !dbg !1450

if.end30:                                         ; preds = %if.then28, %while.end
  call fastcc void @solver_canceluntil(%struct.solver_t* %s, i32 0), !dbg !1451
  %conv31 = sext i8 %status.0 to i32, !dbg !1452
  %cmp32 = icmp ne i32 %conv31, -1, !dbg !1452
  %conv33 = zext i1 %cmp32 to i32, !dbg !1452
  br label %return, !dbg !1453

return:                                           ; preds = %if.end30, %sw.bb11
  %retval.0 = phi i32 [ 0, %sw.bb11 ], [ %conv33, %if.end30 ]
  ret i32 %retval.0, !dbg !1454
}

; Function Attrs: nounwind uwtable
define i32 @solver_nclauses(%struct.solver_t* %s) #0 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !1455, metadata !432), !dbg !1456
  %clauses = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 4, !dbg !1457
  %call = call fastcc i32 @vecp_size(%struct.vecp_t* %clauses), !dbg !1458
  ret i32 %call, !dbg !1459
}

; Function Attrs: nounwind uwtable
define i32 @solver_nvars(%struct.solver_t* %s) #0 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !1460, metadata !432), !dbg !1461
  %size = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 0, !dbg !1462
  %tmp = load i32* %size, align 4, !dbg !1462
  ret i32 %tmp, !dbg !1463
}

; Function Attrs: nounwind uwtable
define i32 @solver_nconflicts(%struct.solver_t* %s) #0 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !1464, metadata !432), !dbg !1465
  %stats = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 28, !dbg !1466
  %conflicts = getelementptr inbounds %struct.stats_t* %stats, i32 0, i32 4, !dbg !1466
  %tmp = load i64* %conflicts, align 8, !dbg !1466
  %conv = trunc i64 %tmp to i32, !dbg !1467
  ret i32 %conv, !dbg !1468
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @vecp_new(%struct.vecp_t* %v) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.vecp_t* %v, i64 0, metadata !1469, metadata !432), !dbg !1470
  %size = getelementptr inbounds %struct.vecp_t* %v, i32 0, i32 0, !dbg !1471
  store i32 0, i32* %size, align 4, !dbg !1471
  %cap = getelementptr inbounds %struct.vecp_t* %v, i32 0, i32 1, !dbg !1472
  store i32 2048, i32* %cap, align 4, !dbg !1472
  %cap1 = getelementptr inbounds %struct.vecp_t* %v, i32 0, i32 1, !dbg !1473
  %tmp = load i32* %cap1, align 4, !dbg !1473
  %conv = sext i32 %tmp to i64, !dbg !1473
  %mul = mul i64 8, %conv, !dbg !1474
  %call = call noalias i8* @malloc(i64 %mul) #7, !dbg !1475
  %tmp1 = bitcast i8* %call to i8**, !dbg !1476
  %ptr = getelementptr inbounds %struct.vecp_t* %v, i32 0, i32 2, !dbg !1477
  store i8** %tmp1, i8*** %ptr, align 8, !dbg !1477
  ret void, !dbg !1478
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @veci_size11(%struct.veci_t* %v) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.veci_t* %v, i64 0, metadata !1479, metadata !432), !dbg !1480
  %size = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 0, !dbg !1481
  %tmp = load i32* %size, align 4, !dbg !1481
  ret i32 %tmp, !dbg !1482
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @veci_push12(%struct.veci_t* %v, i32 %e) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.veci_t* %v, i64 0, metadata !1483, metadata !432), !dbg !1484
  call void @llvm.dbg.value(metadata i32 %e, i64 0, metadata !1485, metadata !432), !dbg !1486
  %size = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 0, !dbg !1487
  %tmp = load i32* %size, align 4, !dbg !1487
  %cap = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 1, !dbg !1489
  %tmp1 = load i32* %cap, align 4, !dbg !1489
  %cmp = icmp eq i32 %tmp, %tmp1, !dbg !1487
  br i1 %cmp, label %if.then, label %if.end, !dbg !1490

if.then:                                          ; preds = %entry
  %cap1 = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 1, !dbg !1491
  %tmp2 = load i32* %cap1, align 4, !dbg !1491
  %mul = mul nsw i32 %tmp2, 2, !dbg !1491
  %add = add nsw i32 %mul, 1, !dbg !1491
  call void @llvm.dbg.value(metadata i32 %add, i64 0, metadata !1493, metadata !432), !dbg !1494
  %ptr = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 2, !dbg !1495
  %tmp3 = load i32** %ptr, align 8, !dbg !1495
  %tmp4 = bitcast i32* %tmp3 to i8*, !dbg !1495
  %conv = sext i32 %add to i64, !dbg !1496
  %mul2 = mul i64 4, %conv, !dbg !1497
  %call = call i8* @realloc(i8* %tmp4, i64 %mul2) #7, !dbg !1498
  %tmp5 = bitcast i8* %call to i32*, !dbg !1499
  %ptr3 = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 2, !dbg !1500
  store i32* %tmp5, i32** %ptr3, align 8, !dbg !1500
  %cap4 = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 1, !dbg !1501
  store i32 %add, i32* %cap4, align 4, !dbg !1501
  br label %if.end, !dbg !1502

if.end:                                           ; preds = %if.then, %entry
  %size5 = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 0, !dbg !1503
  %tmp6 = load i32* %size5, align 4, !dbg !1503
  %inc = add nsw i32 %tmp6, 1, !dbg !1503
  store i32 %inc, i32* %size5, align 4, !dbg !1503
  %idxprom = sext i32 %tmp6 to i64, !dbg !1504
  %ptr6 = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 2, !dbg !1504
  %tmp7 = load i32** %ptr6, align 8, !dbg !1504
  %arrayidx = getelementptr inbounds i32* %tmp7, i64 %idxprom, !dbg !1504
  store i32 %e, i32* %arrayidx, align 4, !dbg !1504
  ret void, !dbg !1505
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @order_update(%struct.solver_t* %s, i32 %v) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !1506, metadata !432), !dbg !1507
  call void @llvm.dbg.value(metadata i32 %v, i64 0, metadata !1508, metadata !432), !dbg !1509
  %orderpos1 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 13, !dbg !1510
  %tmp = load i32** %orderpos1, align 8, !dbg !1510
  call void @llvm.dbg.value(metadata i32* %tmp, i64 0, metadata !1511, metadata !432), !dbg !1512
  %activity2 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 11, !dbg !1513
  %tmp1 = load i64** %activity2, align 8, !dbg !1513
  call void @llvm.dbg.value(metadata i64* %tmp1, i64 0, metadata !1514, metadata !432), !dbg !1515
  %order = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 21, !dbg !1516
  %call = call fastcc i32* @veci_begin24(%struct.veci_t* %order), !dbg !1517
  call void @llvm.dbg.value(metadata i32* %call, i64 0, metadata !1518, metadata !432), !dbg !1519
  %idxprom = sext i32 %v to i64, !dbg !1520
  %arrayidx = getelementptr inbounds i32* %tmp, i64 %idxprom, !dbg !1520
  %tmp2 = load i32* %arrayidx, align 4, !dbg !1520
  call void @llvm.dbg.value(metadata i32 %tmp2, i64 0, metadata !1521, metadata !432), !dbg !1522
  %idxprom3 = sext i32 %tmp2 to i64, !dbg !1523
  %arrayidx4 = getelementptr inbounds i32* %call, i64 %idxprom3, !dbg !1523
  %tmp3 = load i32* %arrayidx4, align 4, !dbg !1523
  call void @llvm.dbg.value(metadata i32 %tmp3, i64 0, metadata !1524, metadata !432), !dbg !1525
  %sub = sub nsw i32 %tmp2, 1, !dbg !1526
  %div = sdiv i32 %sub, 2, !dbg !1527
  call void @llvm.dbg.value(metadata i32 %div, i64 0, metadata !1528, metadata !432), !dbg !1529
  %idxprom5 = sext i32 %v to i64, !dbg !1530
  %orderpos6 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 13, !dbg !1530
  %tmp4 = load i32** %orderpos6, align 8, !dbg !1530
  %arrayidx7 = getelementptr inbounds i32* %tmp4, i64 %idxprom5, !dbg !1530
  %tmp5 = load i32* %arrayidx7, align 4, !dbg !1530
  %cmp = icmp ne i32 %tmp5, -1, !dbg !1530
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1530

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1531

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 123, i8* getelementptr inbounds ([33 x i8]* @__PRETTY_FUNCTION__.order_update, i32 0, i32 0)) #8, !dbg !1533
  unreachable, !dbg !1533

bb:                                               ; No predecessors!
  br label %cond.end, !dbg !1530

cond.end:                                         ; preds = %bb, %cond.true
  br label %while.cond, !dbg !1535

while.cond:                                       ; preds = %while.body, %cond.end
  %i.0 = phi i32 [ %tmp2, %cond.end ], [ %parent.0, %while.body ]
  %parent.0 = phi i32 [ %div, %cond.end ], [ %div25, %while.body ]
  %cmp8 = icmp ne i32 %i.0, 0, !dbg !1536
  br i1 %cmp8, label %land.rhs, label %land.end, !dbg !1536

land.rhs:                                         ; preds = %while.cond
  %idxprom9 = sext i32 %tmp3 to i64, !dbg !1538
  %arrayidx10 = getelementptr inbounds i64* %tmp1, i64 %idxprom9, !dbg !1538
  %tmp6 = load i64* %arrayidx10, align 8, !dbg !1538
  %idxprom11 = sext i32 %parent.0 to i64, !dbg !1539
  %arrayidx12 = getelementptr inbounds i32* %call, i64 %idxprom11, !dbg !1539
  %tmp7 = load i32* %arrayidx12, align 4, !dbg !1539
  %idxprom13 = sext i32 %tmp7 to i64, !dbg !1540
  %arrayidx14 = getelementptr inbounds i64* %tmp1, i64 %idxprom13, !dbg !1540
  %tmp8 = load i64* %arrayidx14, align 8, !dbg !1540
  %cmp15 = icmp ugt i64 %tmp6, %tmp8, !dbg !1538
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %tmp9 = phi i1 [ false, %while.cond ], [ %cmp15, %land.rhs ]
  br i1 %tmp9, label %while.body, label %while.end, !dbg !1541

while.body:                                       ; preds = %land.end
  %idxprom16 = sext i32 %parent.0 to i64, !dbg !1543
  %arrayidx17 = getelementptr inbounds i32* %call, i64 %idxprom16, !dbg !1543
  %tmp10 = load i32* %arrayidx17, align 4, !dbg !1543
  %idxprom18 = sext i32 %i.0 to i64, !dbg !1545
  %arrayidx19 = getelementptr inbounds i32* %call, i64 %idxprom18, !dbg !1545
  store i32 %tmp10, i32* %arrayidx19, align 4, !dbg !1545
  %idxprom20 = sext i32 %i.0 to i64, !dbg !1546
  %arrayidx21 = getelementptr inbounds i32* %call, i64 %idxprom20, !dbg !1546
  %tmp11 = load i32* %arrayidx21, align 4, !dbg !1546
  %idxprom22 = sext i32 %tmp11 to i64, !dbg !1547
  %arrayidx23 = getelementptr inbounds i32* %tmp, i64 %idxprom22, !dbg !1547
  store i32 %i.0, i32* %arrayidx23, align 4, !dbg !1547
  call void @llvm.dbg.value(metadata i32 %parent.0, i64 0, metadata !1521, metadata !432), !dbg !1522
  %sub24 = sub nsw i32 %parent.0, 1, !dbg !1548
  %div25 = sdiv i32 %sub24, 2, !dbg !1549
  call void @llvm.dbg.value(metadata i32 %div25, i64 0, metadata !1528, metadata !432), !dbg !1529
  br label %while.cond, !dbg !1535

while.end:                                        ; preds = %land.end
  %idxprom26 = sext i32 %i.0 to i64, !dbg !1550
  %arrayidx27 = getelementptr inbounds i32* %call, i64 %idxprom26, !dbg !1550
  store i32 %tmp3, i32* %arrayidx27, align 4, !dbg !1550
  %idxprom28 = sext i32 %tmp3 to i64, !dbg !1551
  %arrayidx29 = getelementptr inbounds i32* %tmp, i64 %idxprom28, !dbg !1551
  store i32 %i.0, i32* %arrayidx29, align 4, !dbg !1551
  ret void, !dbg !1552
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.vecp_t* @solver_read_wlist(%struct.solver_t* %s, i32 %l) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !1553, metadata !432), !dbg !1554
  call void @llvm.dbg.value(metadata i32 %l, i64 0, metadata !1555, metadata !432), !dbg !1556
  %idxprom = sext i32 %l to i64, !dbg !1557
  %wlists = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 10, !dbg !1558
  %tmp = load %struct.vecp_t** %wlists, align 8, !dbg !1558
  %arrayidx = getelementptr inbounds %struct.vecp_t* %tmp, i64 %idxprom, !dbg !1557
  ret %struct.vecp_t* %arrayidx, !dbg !1559
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8** @vecp_begin(%struct.vecp_t* %v) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.vecp_t* %v, i64 0, metadata !1560, metadata !432), !dbg !1561
  %ptr = getelementptr inbounds %struct.vecp_t* %v, i32 0, i32 2, !dbg !1562
  %tmp = load i8*** %ptr, align 8, !dbg !1562
  ret i8** %tmp, !dbg !1563
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @vecp_size(%struct.vecp_t* %v) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.vecp_t* %v, i64 0, metadata !1564, metadata !432), !dbg !1565
  %size = getelementptr inbounds %struct.vecp_t* %v, i32 0, i32 0, !dbg !1566
  %tmp = load i32* %size, align 4, !dbg !1566
  ret i32 %tmp, !dbg !1567
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @enqueue(%struct.solver_t* %s, i32 %l, %struct.clause_t* %from) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !1568, metadata !432), !dbg !1569
  call void @llvm.dbg.value(metadata i32 %l, i64 0, metadata !1570, metadata !432), !dbg !1571
  call void @llvm.dbg.value(metadata %struct.clause_t* %from, i64 0, metadata !1572, metadata !432), !dbg !1573
  %assigns = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 12, !dbg !1574
  %tmp = load i8** %assigns, align 8, !dbg !1574
  call void @llvm.dbg.value(metadata i8* %tmp, i64 0, metadata !1575, metadata !432), !dbg !1576
  %call = call fastcc i32 @lit_var(i32 %l), !dbg !1577
  call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !1578, metadata !432), !dbg !1579
  %idxprom = sext i32 %call to i64, !dbg !1580
  %arrayidx = getelementptr inbounds i8* %tmp, i64 %idxprom, !dbg !1580
  %tmp1 = load i8* %arrayidx, align 1, !dbg !1580
  call void @llvm.dbg.value(metadata i8 %tmp1, i64 0, metadata !1581, metadata !432), !dbg !1582
  %call1 = call fastcc i32 @lit_sign(i32 %l), !dbg !1583
  %tobool = icmp ne i32 %call1, 0, !dbg !1584
  %lnot = xor i1 %tobool, true, !dbg !1584
  %lnot.ext = zext i1 %lnot to i32, !dbg !1584
  %conv = trunc i32 %lnot.ext to i8, !dbg !1584
  call void @llvm.dbg.value(metadata i8 %conv, i64 0, metadata !1585, metadata !432), !dbg !1586
  %conv2 = sext i8 %conv to i32, !dbg !1587
  %sub = sub nsw i32 %conv2, 1, !dbg !1587
  %conv3 = sext i8 %conv to i32, !dbg !1588
  %add = add nsw i32 %conv3, %sub, !dbg !1588
  %conv4 = trunc i32 %add to i8, !dbg !1588
  call void @llvm.dbg.value(metadata i8 %conv4, i64 0, metadata !1585, metadata !432), !dbg !1586
  %conv5 = sext i8 %tmp1 to i32, !dbg !1589
  %cmp = icmp ne i32 %conv5, 0, !dbg !1589
  br i1 %cmp, label %if.then, label %if.else, !dbg !1591

if.then:                                          ; preds = %entry
  %conv7 = sext i8 %tmp1 to i32, !dbg !1592
  %conv8 = sext i8 %conv4 to i32, !dbg !1594
  %cmp9 = icmp eq i32 %conv7, %conv8, !dbg !1592
  %conv10 = zext i1 %cmp9 to i32, !dbg !1592
  br label %return, !dbg !1595

if.else:                                          ; preds = %entry
  %levels11 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 15, !dbg !1596
  %tmp2 = load i32** %levels11, align 8, !dbg !1596
  call void @llvm.dbg.value(metadata i32* %tmp2, i64 0, metadata !1598, metadata !432), !dbg !1599
  %reasons12 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 14, !dbg !1600
  %tmp3 = load %struct.clause_t*** %reasons12, align 8, !dbg !1600
  call void @llvm.dbg.value(metadata %struct.clause_t** %tmp3, i64 0, metadata !1601, metadata !432), !dbg !1602
  %idxprom13 = sext i32 %call to i64, !dbg !1603
  %arrayidx14 = getelementptr inbounds i8* %tmp, i64 %idxprom13, !dbg !1603
  store i8 %conv4, i8* %arrayidx14, align 1, !dbg !1603
  %call15 = call fastcc i32 @solver_dlevel(%struct.solver_t* %s), !dbg !1604
  %idxprom16 = sext i32 %call to i64, !dbg !1605
  %arrayidx17 = getelementptr inbounds i32* %tmp2, i64 %idxprom16, !dbg !1605
  store i32 %call15, i32* %arrayidx17, align 4, !dbg !1605
  %idxprom18 = sext i32 %call to i64, !dbg !1606
  %arrayidx19 = getelementptr inbounds %struct.clause_t** %tmp3, i64 %idxprom18, !dbg !1606
  store %struct.clause_t* %from, %struct.clause_t** %arrayidx19, align 8, !dbg !1606
  %qtail = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 3, !dbg !1607
  %tmp4 = load i32* %qtail, align 4, !dbg !1607
  %inc = add nsw i32 %tmp4, 1, !dbg !1607
  store i32 %inc, i32* %qtail, align 4, !dbg !1607
  %idxprom20 = sext i32 %tmp4 to i64, !dbg !1608
  %trail = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 16, !dbg !1608
  %tmp5 = load i32** %trail, align 8, !dbg !1608
  %arrayidx21 = getelementptr inbounds i32* %tmp5, i64 %idxprom20, !dbg !1608
  store i32 %l, i32* %arrayidx21, align 4, !dbg !1608
  call fastcc void @order_assigned(%struct.solver_t* %s, i32 %call), !dbg !1609
  br label %return, !dbg !1610

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %conv10, %if.then ], [ 1, %if.else ]
  ret i32 %retval.0, !dbg !1611
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @lit_neg13(i32 %l) #6 {
entry:
  call void @llvm.dbg.value(metadata i32 %l, i64 0, metadata !1612, metadata !432), !dbg !1613
  %xor = xor i32 %l, 1, !dbg !1614
  ret i32 %xor, !dbg !1615
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @clause_begin(%struct.clause_t* %c) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.clause_t* %c, i64 0, metadata !1616, metadata !432), !dbg !1617
  %lits = getelementptr inbounds %struct.clause_t* %c, i32 0, i32 1, !dbg !1618
  %arraydecay = getelementptr inbounds [0 x i32]* %lits, i32 0, i32 0, !dbg !1618
  ret i32* %arraydecay, !dbg !1619
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @lit_sign(i32 %l) #6 {
entry:
  call void @llvm.dbg.value(metadata i32 %l, i64 0, metadata !1620, metadata !432), !dbg !1621
  %and = and i32 %l, 1, !dbg !1622
  ret i32 %and, !dbg !1623
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @lit_var(i32 %l) #6 {
entry:
  call void @llvm.dbg.value(metadata i32 %l, i64 0, metadata !1624, metadata !432), !dbg !1625
  %shr = ashr i32 %l, 1, !dbg !1626
  ret i32 %shr, !dbg !1627
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @clause_size(%struct.clause_t* %c) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.clause_t* %c, i64 0, metadata !1628, metadata !432), !dbg !1629
  %size_learnt = getelementptr inbounds %struct.clause_t* %c, i32 0, i32 0, !dbg !1630
  %tmp = load i32* %size_learnt, align 4, !dbg !1630
  %shr = ashr i32 %tmp, 1, !dbg !1630
  ret i32 %shr, !dbg !1631
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @vecp_push(%struct.vecp_t* %v, i8* %e) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.vecp_t* %v, i64 0, metadata !1632, metadata !432), !dbg !1633
  call void @llvm.dbg.value(metadata i8* %e, i64 0, metadata !1634, metadata !432), !dbg !1635
  %size = getelementptr inbounds %struct.vecp_t* %v, i32 0, i32 0, !dbg !1636
  %tmp = load i32* %size, align 4, !dbg !1636
  %cap = getelementptr inbounds %struct.vecp_t* %v, i32 0, i32 1, !dbg !1638
  %tmp1 = load i32* %cap, align 4, !dbg !1638
  %cmp = icmp eq i32 %tmp, %tmp1, !dbg !1636
  br i1 %cmp, label %if.then, label %if.end, !dbg !1639

if.then:                                          ; preds = %entry
  %cap1 = getelementptr inbounds %struct.vecp_t* %v, i32 0, i32 1, !dbg !1640
  %tmp2 = load i32* %cap1, align 4, !dbg !1640
  %mul = mul nsw i32 %tmp2, 2, !dbg !1640
  %add = add nsw i32 %mul, 1, !dbg !1640
  call void @llvm.dbg.value(metadata i32 %add, i64 0, metadata !1642, metadata !432), !dbg !1643
  %ptr = getelementptr inbounds %struct.vecp_t* %v, i32 0, i32 2, !dbg !1644
  %tmp3 = load i8*** %ptr, align 8, !dbg !1644
  %tmp4 = bitcast i8** %tmp3 to i8*, !dbg !1644
  %conv = sext i32 %add to i64, !dbg !1645
  %mul2 = mul i64 8, %conv, !dbg !1646
  %call = call i8* @realloc(i8* %tmp4, i64 %mul2) #7, !dbg !1647
  %tmp5 = bitcast i8* %call to i8**, !dbg !1648
  %ptr3 = getelementptr inbounds %struct.vecp_t* %v, i32 0, i32 2, !dbg !1649
  store i8** %tmp5, i8*** %ptr3, align 8, !dbg !1649
  %cap4 = getelementptr inbounds %struct.vecp_t* %v, i32 0, i32 1, !dbg !1650
  store i32 %add, i32* %cap4, align 4, !dbg !1650
  br label %if.end, !dbg !1651

if.end:                                           ; preds = %if.then, %entry
  %size5 = getelementptr inbounds %struct.vecp_t* %v, i32 0, i32 0, !dbg !1652
  %tmp6 = load i32* %size5, align 4, !dbg !1652
  %inc = add nsw i32 %tmp6, 1, !dbg !1652
  store i32 %inc, i32* %size5, align 4, !dbg !1652
  %idxprom = sext i32 %tmp6 to i64, !dbg !1653
  %ptr6 = getelementptr inbounds %struct.vecp_t* %v, i32 0, i32 2, !dbg !1653
  %tmp7 = load i8*** %ptr6, align 8, !dbg !1653
  %arrayidx = getelementptr inbounds i8** %tmp7, i64 %idxprom, !dbg !1653
  store i8* %e, i8** %arrayidx, align 8, !dbg !1653
  ret void, !dbg !1654
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @vecp_resize(%struct.vecp_t* %v, i32 %k) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.vecp_t* %v, i64 0, metadata !1655, metadata !432), !dbg !1656
  call void @llvm.dbg.value(metadata i32 %k, i64 0, metadata !1657, metadata !432), !dbg !1658
  %size = getelementptr inbounds %struct.vecp_t* %v, i32 0, i32 0, !dbg !1659
  store i32 %k, i32* %size, align 4, !dbg !1659
  ret void, !dbg !1660
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_cmp(i8* %x, i8* %y) #6 {
entry:
  call void @llvm.dbg.value(metadata i8* %x, i64 0, metadata !1661, metadata !432), !dbg !1662
  call void @llvm.dbg.value(metadata i8* %y, i64 0, metadata !1663, metadata !432), !dbg !1664
  %tmp = bitcast i8* %x to %struct.clause_t*, !dbg !1665
  %call = call fastcc i32 @clause_size(%struct.clause_t* %tmp), !dbg !1666
  %cmp = icmp sgt i32 %call, 2, !dbg !1666
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1666

land.rhs:                                         ; preds = %entry
  %tmp1 = bitcast i8* %y to %struct.clause_t*, !dbg !1667
  %call1 = call fastcc i32 @clause_size(%struct.clause_t* %tmp1), !dbg !1668
  %cmp2 = icmp eq i32 %call1, 2, !dbg !1668
  br i1 %cmp2, label %lor.end, label %lor.rhs, !dbg !1668

lor.rhs:                                          ; preds = %land.rhs
  %tmp2 = bitcast i8* %x to %struct.clause_t*, !dbg !1669
  %call3 = call fastcc i64 @clause_activity(%struct.clause_t* %tmp2), !dbg !1670
  %tmp3 = bitcast i8* %y to %struct.clause_t*, !dbg !1671
  %call4 = call fastcc i64 @clause_activity(%struct.clause_t* %tmp3), !dbg !1672
  %cmp5 = icmp ult i64 %call3, %call4, !dbg !1670
  br label %lor.end, !dbg !1668

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %tmp4 = phi i1 [ true, %land.rhs ], [ %cmp5, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %tmp5 = phi i1 [ false, %entry ], [ %tmp4, %lor.end ]
  %cond = select i1 %tmp5, i32 -1, i32 1, !dbg !1673
  ret i32 %cond, !dbg !1675
}

; Function Attrs: nounwind uwtable
define internal fastcc void @clause_remove(%struct.solver_t* %s, %struct.clause_t* %c) #0 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !1676, metadata !432), !dbg !1677
  call void @llvm.dbg.value(metadata %struct.clause_t* %c, i64 0, metadata !1678, metadata !432), !dbg !1679
  %call = call fastcc i32* @clause_begin(%struct.clause_t* %c), !dbg !1680
  call void @llvm.dbg.value(metadata i32* %call, i64 0, metadata !1681, metadata !432), !dbg !1682
  %tmp = load i32* %call, align 4, !dbg !1683
  %call1 = call fastcc i32 @lit_neg13(i32 %tmp), !dbg !1683
  %size = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 0, !dbg !1683
  %tmp1 = load i32* %size, align 4, !dbg !1683
  %mul = mul nsw i32 %tmp1, 2, !dbg !1683
  %cmp = icmp slt i32 %call1, %mul, !dbg !1683
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1683

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1684

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 309, i8* getelementptr inbounds ([39 x i8]* @__PRETTY_FUNCTION__.clause_remove, i32 0, i32 0)) #8, !dbg !1686
  unreachable, !dbg !1686

bb:                                               ; No predecessors!
  br label %cond.end, !dbg !1683

cond.end:                                         ; preds = %bb, %cond.true
  %arrayidx2 = getelementptr inbounds i32* %call, i64 1, !dbg !1688
  %tmp2 = load i32* %arrayidx2, align 4, !dbg !1688
  %call3 = call fastcc i32 @lit_neg13(i32 %tmp2), !dbg !1688
  %size4 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 0, !dbg !1688
  %tmp3 = load i32* %size4, align 4, !dbg !1688
  %mul5 = mul nsw i32 %tmp3, 2, !dbg !1688
  %cmp6 = icmp slt i32 %call3, %mul5, !dbg !1688
  br i1 %cmp6, label %cond.true7, label %cond.false8, !dbg !1688

cond.true7:                                       ; preds = %cond.end
  br label %cond.end9, !dbg !1689

cond.false8:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 310, i8* getelementptr inbounds ([39 x i8]* @__PRETTY_FUNCTION__.clause_remove, i32 0, i32 0)) #8, !dbg !1690
  unreachable, !dbg !1690

bb4:                                              ; No predecessors!
  br label %cond.end9, !dbg !1688

cond.end9:                                        ; preds = %bb4, %cond.true7
  %tmp5 = load i32* %call, align 4, !dbg !1691
  %size11 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 0, !dbg !1691
  %tmp6 = load i32* %size11, align 4, !dbg !1691
  %mul12 = mul nsw i32 %tmp6, 2, !dbg !1691
  %cmp13 = icmp slt i32 %tmp5, %mul12, !dbg !1691
  br i1 %cmp13, label %cond.true14, label %cond.false15, !dbg !1691

cond.true14:                                      ; preds = %cond.end9
  br label %cond.end16, !dbg !1692

cond.false15:                                     ; preds = %cond.end9
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 315, i8* getelementptr inbounds ([39 x i8]* @__PRETTY_FUNCTION__.clause_remove, i32 0, i32 0)) #8, !dbg !1693
  unreachable, !dbg !1693

bb7:                                              ; No predecessors!
  br label %cond.end16, !dbg !1691

cond.end16:                                       ; preds = %bb7, %cond.true14
  %tmp8 = load i32* %call, align 4, !dbg !1694
  %call18 = call fastcc i32 @lit_neg13(i32 %tmp8), !dbg !1695
  %call19 = call fastcc %struct.vecp_t* @solver_read_wlist(%struct.solver_t* %s, i32 %call18), !dbg !1696
  %call20 = call fastcc i32 @clause_size(%struct.clause_t* %c), !dbg !1697
  %cmp21 = icmp sgt i32 %call20, 2, !dbg !1697
  br i1 %cmp21, label %cond.true22, label %cond.false23, !dbg !1697

cond.true22:                                      ; preds = %cond.end16
  br label %cond.end26, !dbg !1697

cond.false23:                                     ; preds = %cond.end16
  %arrayidx24 = getelementptr inbounds i32* %call, i64 1, !dbg !1698
  %tmp9 = load i32* %arrayidx24, align 4, !dbg !1698
  %call25 = call %struct.clause_t* @clause_from_lit(i32 %tmp9), !dbg !1699
  br label %cond.end26, !dbg !1697

cond.end26:                                       ; preds = %cond.false23, %cond.true22
  %cond = phi %struct.clause_t* [ %c, %cond.true22 ], [ %call25, %cond.false23 ], !dbg !1697
  %tmp10 = bitcast %struct.clause_t* %cond to i8*, !dbg !1700
  call fastcc void @vecp_remove(%struct.vecp_t* %call19, i8* %tmp10), !dbg !1703
  %arrayidx27 = getelementptr inbounds i32* %call, i64 1, !dbg !1704
  %tmp11 = load i32* %arrayidx27, align 4, !dbg !1704
  %call28 = call fastcc i32 @lit_neg13(i32 %tmp11), !dbg !1705
  %call29 = call fastcc %struct.vecp_t* @solver_read_wlist(%struct.solver_t* %s, i32 %call28), !dbg !1706
  %call30 = call fastcc i32 @clause_size(%struct.clause_t* %c), !dbg !1707
  %cmp31 = icmp sgt i32 %call30, 2, !dbg !1707
  br i1 %cmp31, label %cond.true32, label %cond.false33, !dbg !1707

cond.true32:                                      ; preds = %cond.end26
  br label %cond.end36, !dbg !1707

cond.false33:                                     ; preds = %cond.end26
  %tmp12 = load i32* %call, align 4, !dbg !1708
  %call35 = call %struct.clause_t* @clause_from_lit(i32 %tmp12), !dbg !1709
  br label %cond.end36, !dbg !1707

cond.end36:                                       ; preds = %cond.false33, %cond.true32
  %cond37 = phi %struct.clause_t* [ %c, %cond.true32 ], [ %call35, %cond.false33 ], !dbg !1707
  %tmp13 = bitcast %struct.clause_t* %cond37 to i8*, !dbg !1710
  call fastcc void @vecp_remove(%struct.vecp_t* %call29, i8* %tmp13), !dbg !1711
  %call38 = call fastcc i32 @clause_learnt(%struct.clause_t* %c), !dbg !1712
  %tobool = icmp ne i32 %call38, 0, !dbg !1714
  br i1 %tobool, label %if.then, label %if.else, !dbg !1714

if.then:                                          ; preds = %cond.end36
  %stats = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 28, !dbg !1715
  %learnts = getelementptr inbounds %struct.stats_t* %stats, i32 0, i32 7, !dbg !1715
  %tmp14 = load i64* %learnts, align 8, !dbg !1715
  %dec = add nsw i64 %tmp14, -1, !dbg !1715
  store i64 %dec, i64* %learnts, align 8, !dbg !1715
  %call39 = call fastcc i32 @clause_size(%struct.clause_t* %c), !dbg !1717
  %conv = sext i32 %call39 to i64, !dbg !1717
  %stats40 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 28, !dbg !1718
  %learnts_literals = getelementptr inbounds %struct.stats_t* %stats40, i32 0, i32 8, !dbg !1718
  %tmp15 = load i64* %learnts_literals, align 8, !dbg !1718
  %sub = sub nsw i64 %tmp15, %conv, !dbg !1718
  store i64 %sub, i64* %learnts_literals, align 8, !dbg !1718
  br label %if.end, !dbg !1719

if.else:                                          ; preds = %cond.end36
  %stats41 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 28, !dbg !1720
  %clauses = getelementptr inbounds %struct.stats_t* %stats41, i32 0, i32 5, !dbg !1720
  %tmp16 = load i64* %clauses, align 8, !dbg !1720
  %dec42 = add nsw i64 %tmp16, -1, !dbg !1720
  store i64 %dec42, i64* %clauses, align 8, !dbg !1720
  %call43 = call fastcc i32 @clause_size(%struct.clause_t* %c), !dbg !1722
  %conv44 = sext i32 %call43 to i64, !dbg !1722
  %stats45 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 28, !dbg !1723
  %clauses_literals = getelementptr inbounds %struct.stats_t* %stats45, i32 0, i32 6, !dbg !1723
  %tmp17 = load i64* %clauses_literals, align 8, !dbg !1723
  %sub46 = sub nsw i64 %tmp17, %conv44, !dbg !1723
  store i64 %sub46, i64* %clauses_literals, align 8, !dbg !1723
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmp18 = bitcast %struct.clause_t* %c to i8*, !dbg !1724
  call void @free(i8* %tmp18) #7, !dbg !1725
  ret void, !dbg !1726
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sortrnd(i8** %array, i32 %size, i32 (i8*, i8*)* %comp, i64* %seed) #0 {
entry:
  call void @llvm.dbg.value(metadata i8** %array, i64 0, metadata !1727, metadata !432), !dbg !1728
  call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !1729, metadata !432), !dbg !1730
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %comp, i64 0, metadata !1731, metadata !432), !dbg !1732
  call void @llvm.dbg.value(metadata i64* %seed, i64 0, metadata !1733, metadata !432), !dbg !1734
  %cmp = icmp sle i32 %size, 15, !dbg !1735
  br i1 %cmp, label %if.then, label %if.else, !dbg !1737

if.then:                                          ; preds = %entry
  call fastcc void @selectionsort(i8** %array, i32 %size, i32 (i8*, i8*)* %comp), !dbg !1738
  br label %if.end24, !dbg !1738

if.else:                                          ; preds = %entry
  %tmp = load i8** %array, align 8, !dbg !1739
  call void @llvm.dbg.value(metadata i8* %tmp, i64 0, metadata !1741, metadata !432), !dbg !1742
  call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !1743, metadata !432), !dbg !1744
  call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !1745, metadata !432), !dbg !1746
  br label %for.cond, !dbg !1747

for.cond:                                         ; preds = %if.end, %if.else
  %i.0 = phi i32 [ -1, %if.else ], [ %inc, %if.end ]
  %j.0 = phi i32 [ %size, %if.else ], [ %dec, %if.end ]
  br label %do.body, !dbg !1748

do.body:                                          ; preds = %do.cond, %for.cond
  %i.1 = phi i32 [ %i.0, %for.cond ], [ %inc, %do.cond ]
  %inc = add nsw i32 %i.1, 1, !dbg !1752
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !1743, metadata !432), !dbg !1744
  br label %do.cond, !dbg !1752

do.cond:                                          ; preds = %do.body
  %idxprom = sext i32 %inc to i64, !dbg !1755
  %arrayidx3 = getelementptr inbounds i8** %array, i64 %idxprom, !dbg !1755
  %tmp1 = load i8** %arrayidx3, align 8, !dbg !1755
  %call = call i32 %comp(i8* %tmp1, i8* %tmp), !dbg !1756
  %cmp4 = icmp slt i32 %call, 0, !dbg !1756
  br i1 %cmp4, label %do.body, label %do.end, !dbg !1757

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !1758

do.body5:                                         ; preds = %do.cond6, %do.end
  %j.1 = phi i32 [ %j.0, %do.end ], [ %dec, %do.cond6 ]
  %dec = add nsw i32 %j.1, -1, !dbg !1759
  call void @llvm.dbg.value(metadata i32 %dec, i64 0, metadata !1745, metadata !432), !dbg !1746
  br label %do.cond6, !dbg !1759

do.cond6:                                         ; preds = %do.body5
  %idxprom7 = sext i32 %dec to i64, !dbg !1760
  %arrayidx8 = getelementptr inbounds i8** %array, i64 %idxprom7, !dbg !1760
  %tmp2 = load i8** %arrayidx8, align 8, !dbg !1760
  %call9 = call i32 %comp(i8* %tmp, i8* %tmp2), !dbg !1761
  %cmp10 = icmp slt i32 %call9, 0, !dbg !1761
  br i1 %cmp10, label %do.body5, label %do.end11, !dbg !1762

do.end11:                                         ; preds = %do.cond6
  %cmp12 = icmp sge i32 %inc, %dec, !dbg !1763
  br i1 %cmp12, label %if.then13, label %if.end, !dbg !1765

if.then13:                                        ; preds = %do.end11
  br label %for.end, !dbg !1766

if.end:                                           ; preds = %do.end11
  %idxprom14 = sext i32 %inc to i64, !dbg !1768
  %arrayidx15 = getelementptr inbounds i8** %array, i64 %idxprom14, !dbg !1768
  %tmp3 = load i8** %arrayidx15, align 8, !dbg !1768
  call void @llvm.dbg.value(metadata i8* %tmp3, i64 0, metadata !1769, metadata !432), !dbg !1770
  %idxprom16 = sext i32 %dec to i64, !dbg !1771
  %arrayidx17 = getelementptr inbounds i8** %array, i64 %idxprom16, !dbg !1771
  %tmp4 = load i8** %arrayidx17, align 8, !dbg !1771
  %idxprom18 = sext i32 %inc to i64, !dbg !1772
  %arrayidx19 = getelementptr inbounds i8** %array, i64 %idxprom18, !dbg !1772
  store i8* %tmp4, i8** %arrayidx19, align 8, !dbg !1772
  %idxprom20 = sext i32 %dec to i64, !dbg !1773
  %arrayidx21 = getelementptr inbounds i8** %array, i64 %idxprom20, !dbg !1773
  store i8* %tmp3, i8** %arrayidx21, align 8, !dbg !1773
  br label %for.cond, !dbg !1774

for.end:                                          ; preds = %if.then13
  call fastcc void @sortrnd(i8** %array, i32 %inc, i32 (i8*, i8*)* %comp, i64* %seed), !dbg !1775
  %idxprom22 = sext i32 %inc to i64, !dbg !1776
  %arrayidx23 = getelementptr inbounds i8** %array, i64 %idxprom22, !dbg !1776
  %sub = sub nsw i32 %size, %inc, !dbg !1777
  call fastcc void @sortrnd(i8** %arrayidx23, i32 %sub, i32 (i8*, i8*)* %comp, i64* %seed), !dbg !1778
  br label %if.end24

if.end24:                                         ; preds = %for.end, %if.then
  ret void, !dbg !1779
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @veci_new16(%struct.veci_t* %v) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.veci_t* %v, i64 0, metadata !1780, metadata !432), !dbg !1781
  %size = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 0, !dbg !1782
  store i32 0, i32* %size, align 4, !dbg !1782
  %cap = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 1, !dbg !1783
  store i32 2048, i32* %cap, align 4, !dbg !1783
  %cap1 = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 1, !dbg !1784
  %tmp = load i32* %cap1, align 4, !dbg !1784
  %conv = sext i32 %tmp to i64, !dbg !1784
  %mul = mul i64 4, %conv, !dbg !1785
  %call = call noalias i8* @malloc(i64 %mul) #7, !dbg !1786
  %tmp1 = bitcast i8* %call to i32*, !dbg !1787
  %ptr = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 2, !dbg !1788
  store i32* %tmp1, i32** %ptr, align 8, !dbg !1788
  ret void, !dbg !1789
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @vecp_delete(%struct.vecp_t* %v) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.vecp_t* %v, i64 0, metadata !1790, metadata !432), !dbg !1791
  %ptr = getelementptr inbounds %struct.vecp_t* %v, i32 0, i32 2, !dbg !1792
  %tmp = load i8*** %ptr, align 8, !dbg !1792
  %tmp1 = bitcast i8** %tmp to i8*, !dbg !1792
  call void @free(i8* %tmp1) #7, !dbg !1793
  ret void, !dbg !1794
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @veci_delete17(%struct.veci_t* %v) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.veci_t* %v, i64 0, metadata !1795, metadata !432), !dbg !1796
  %ptr = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 2, !dbg !1797
  %tmp = load i32** %ptr, align 8, !dbg !1797
  %tmp1 = bitcast i32* %tmp to i8*, !dbg !1797
  call void @free(i8* %tmp1) #7, !dbg !1798
  ret void, !dbg !1799
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.clause_t* @clause_new(%struct.solver_t* %s, i32* %begin, i32 %end, i32 %learnt) #0 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !1800, metadata !432), !dbg !1801
  call void @llvm.dbg.value(metadata i32* %begin, i64 0, metadata !1802, metadata !432), !dbg !1803
  call void @llvm.dbg.value(metadata i32 %end, i64 0, metadata !1804, metadata !432), !dbg !1805
  call void @llvm.dbg.value(metadata i32 %learnt, i64 0, metadata !1806, metadata !432), !dbg !1807
  %cmp = icmp sgt i32 %end, 1, !dbg !1808
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1808

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1809

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 275, i8* getelementptr inbounds ([46 x i8]* @__PRETTY_FUNCTION__.clause_new, i32 0, i32 0)) #8, !dbg !1811
  unreachable, !dbg !1811

bb:                                               ; No predecessors!
  br label %cond.end, !dbg !1808

cond.end:                                         ; preds = %bb, %cond.true
  %cmp1 = icmp sge i32 %learnt, 0, !dbg !1813
  br i1 %cmp1, label %land.lhs.true, label %cond.false4, !dbg !1813

land.lhs.true:                                    ; preds = %cond.end
  %cmp2 = icmp slt i32 %learnt, 2, !dbg !1814
  br i1 %cmp2, label %cond.true3, label %cond.false4, !dbg !1814

cond.true3:                                       ; preds = %land.lhs.true
  br label %cond.end5, !dbg !1815

cond.false4:                                      ; preds = %land.lhs.true, %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 276, i8* getelementptr inbounds ([46 x i8]* @__PRETTY_FUNCTION__.clause_new, i32 0, i32 0)) #8, !dbg !1817
  unreachable, !dbg !1817

bb1:                                              ; No predecessors!
  br label %cond.end5, !dbg !1813

cond.end5:                                        ; preds = %bb1, %cond.true3
  call void @llvm.dbg.value(metadata i32 %end, i64 0, metadata !1819, metadata !432), !dbg !1820
  %conv = sext i32 %end to i64, !dbg !1821
  %mul = mul i64 4, %conv, !dbg !1822
  %add = add i64 4, %mul, !dbg !1823
  %conv6 = sext i32 %learnt to i64, !dbg !1824
  %mul7 = mul i64 %conv6, 8, !dbg !1824
  %add8 = add i64 %add, %mul7, !dbg !1823
  %call = call noalias i8* @malloc(i64 %add8) #7, !dbg !1825
  %tmp = bitcast i8* %call to %struct.clause_t*, !dbg !1826
  call void @llvm.dbg.value(metadata %struct.clause_t* %tmp, i64 0, metadata !1827, metadata !432), !dbg !1828
  %shl = shl i32 %end, 1, !dbg !1829
  %or = or i32 %shl, %learnt, !dbg !1830
  %size_learnt = getelementptr inbounds %struct.clause_t* %tmp, i32 0, i32 0, !dbg !1831
  store i32 %or, i32* %size_learnt, align 4, !dbg !1831
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1832, metadata !432), !dbg !1833
  br label %for.cond, !dbg !1834

for.cond:                                         ; preds = %for.inc, %cond.end5
  %i.0 = phi i32 [ 0, %cond.end5 ], [ %inc, %for.inc ]
  %cmp9 = icmp slt i32 %i.0, %end, !dbg !1836
  br i1 %cmp9, label %for.body, label %for.end, !dbg !1838

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !1839
  %arrayidx = getelementptr inbounds i32* %begin, i64 %idxprom, !dbg !1839
  %tmp2 = load i32* %arrayidx, align 4, !dbg !1839
  %idxprom11 = sext i32 %i.0 to i64, !dbg !1840
  %lits = getelementptr inbounds %struct.clause_t* %tmp, i32 0, i32 1, !dbg !1840
  %arrayidx12 = getelementptr inbounds [0 x i32]* %lits, i32 0, i64 %idxprom11, !dbg !1840
  store i32 %tmp2, i32* %arrayidx12, align 4, !dbg !1840
  br label %for.inc, !dbg !1840

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !1841
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !1832, metadata !432), !dbg !1833
  br label %for.cond, !dbg !1842

for.end:                                          ; preds = %for.cond
  %tobool = icmp ne i32 %learnt, 0, !dbg !1843
  br i1 %tobool, label %if.then, label %if.end, !dbg !1843

if.then:                                          ; preds = %for.end
  %idxprom13 = sext i32 %end to i64, !dbg !1844
  %lits14 = getelementptr inbounds %struct.clause_t* %tmp, i32 0, i32 1, !dbg !1844
  %arrayidx15 = getelementptr inbounds [0 x i32]* %lits14, i32 0, i64 %idxprom13, !dbg !1844
  %tmp3 = bitcast i32* %arrayidx15 to i64*, !dbg !1846
  store i64 0, i64* %tmp3, align 8, !dbg !1847
  br label %if.end, !dbg !1847

if.end:                                           ; preds = %if.then, %for.end
  %tmp4 = load i32* %begin, align 4, !dbg !1848
  %cmp17 = icmp sge i32 %tmp4, 0, !dbg !1848
  br i1 %cmp17, label %cond.true19, label %cond.false20, !dbg !1848

cond.true19:                                      ; preds = %if.end
  br label %cond.end21, !dbg !1849

cond.false20:                                     ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 288, i8* getelementptr inbounds ([46 x i8]* @__PRETTY_FUNCTION__.clause_new, i32 0, i32 0)) #8, !dbg !1850
  unreachable, !dbg !1850

bb5:                                              ; No predecessors!
  br label %cond.end21, !dbg !1848

cond.end21:                                       ; preds = %bb5, %cond.true19
  %tmp6 = load i32* %begin, align 4, !dbg !1851
  %size23 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 0, !dbg !1851
  %tmp7 = load i32* %size23, align 4, !dbg !1851
  %mul24 = mul nsw i32 %tmp7, 2, !dbg !1851
  %cmp25 = icmp slt i32 %tmp6, %mul24, !dbg !1851
  br i1 %cmp25, label %cond.true27, label %cond.false28, !dbg !1851

cond.true27:                                      ; preds = %cond.end21
  br label %cond.end29, !dbg !1852

cond.false28:                                     ; preds = %cond.end21
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 289, i8* getelementptr inbounds ([46 x i8]* @__PRETTY_FUNCTION__.clause_new, i32 0, i32 0)) #8, !dbg !1853
  unreachable, !dbg !1853

bb8:                                              ; No predecessors!
  br label %cond.end29, !dbg !1851

cond.end29:                                       ; preds = %bb8, %cond.true27
  %arrayidx30 = getelementptr inbounds i32* %begin, i64 1, !dbg !1854
  %tmp9 = load i32* %arrayidx30, align 4, !dbg !1854
  %cmp31 = icmp sge i32 %tmp9, 0, !dbg !1854
  br i1 %cmp31, label %cond.true33, label %cond.false34, !dbg !1854

cond.true33:                                      ; preds = %cond.end29
  br label %cond.end35, !dbg !1855

cond.false34:                                     ; preds = %cond.end29
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 290, i8* getelementptr inbounds ([46 x i8]* @__PRETTY_FUNCTION__.clause_new, i32 0, i32 0)) #8, !dbg !1856
  unreachable, !dbg !1856

bb10:                                             ; No predecessors!
  br label %cond.end35, !dbg !1854

cond.end35:                                       ; preds = %bb10, %cond.true33
  %arrayidx36 = getelementptr inbounds i32* %begin, i64 1, !dbg !1857
  %tmp11 = load i32* %arrayidx36, align 4, !dbg !1857
  %size37 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 0, !dbg !1857
  %tmp12 = load i32* %size37, align 4, !dbg !1857
  %mul38 = mul nsw i32 %tmp12, 2, !dbg !1857
  %cmp39 = icmp slt i32 %tmp11, %mul38, !dbg !1857
  br i1 %cmp39, label %cond.true41, label %cond.false42, !dbg !1857

cond.true41:                                      ; preds = %cond.end35
  br label %cond.end43, !dbg !1858

cond.false42:                                     ; preds = %cond.end35
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 291, i8* getelementptr inbounds ([46 x i8]* @__PRETTY_FUNCTION__.clause_new, i32 0, i32 0)) #8, !dbg !1859
  unreachable, !dbg !1859

bb13:                                             ; No predecessors!
  br label %cond.end43, !dbg !1857

cond.end43:                                       ; preds = %bb13, %cond.true41
  %tmp14 = load i32* %begin, align 4, !dbg !1860
  %call45 = call fastcc i32 @lit_neg13(i32 %tmp14), !dbg !1860
  %size46 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 0, !dbg !1860
  %tmp15 = load i32* %size46, align 4, !dbg !1860
  %mul47 = mul nsw i32 %tmp15, 2, !dbg !1860
  %cmp48 = icmp slt i32 %call45, %mul47, !dbg !1860
  br i1 %cmp48, label %cond.true50, label %cond.false51, !dbg !1860

cond.true50:                                      ; preds = %cond.end43
  br label %cond.end52, !dbg !1861

cond.false51:                                     ; preds = %cond.end43
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 293, i8* getelementptr inbounds ([46 x i8]* @__PRETTY_FUNCTION__.clause_new, i32 0, i32 0)) #8, !dbg !1862
  unreachable, !dbg !1862

bb16:                                             ; No predecessors!
  br label %cond.end52, !dbg !1860

cond.end52:                                       ; preds = %bb16, %cond.true50
  %arrayidx53 = getelementptr inbounds i32* %begin, i64 1, !dbg !1863
  %tmp17 = load i32* %arrayidx53, align 4, !dbg !1863
  %call54 = call fastcc i32 @lit_neg13(i32 %tmp17), !dbg !1863
  %size55 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 0, !dbg !1863
  %tmp18 = load i32* %size55, align 4, !dbg !1863
  %mul56 = mul nsw i32 %tmp18, 2, !dbg !1863
  %cmp57 = icmp slt i32 %call54, %mul56, !dbg !1863
  br i1 %cmp57, label %cond.true59, label %cond.false60, !dbg !1863

cond.true59:                                      ; preds = %cond.end52
  br label %cond.end61, !dbg !1864

cond.false60:                                     ; preds = %cond.end52
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 294, i8* getelementptr inbounds ([46 x i8]* @__PRETTY_FUNCTION__.clause_new, i32 0, i32 0)) #8, !dbg !1865
  unreachable, !dbg !1865

bb19:                                             ; No predecessors!
  br label %cond.end61, !dbg !1863

cond.end61:                                       ; preds = %bb19, %cond.true59
  %tmp20 = load i32* %begin, align 4, !dbg !1866
  %call63 = call fastcc i32 @lit_neg13(i32 %tmp20), !dbg !1867
  %call64 = call fastcc %struct.vecp_t* @solver_read_wlist(%struct.solver_t* %s, i32 %call63), !dbg !1868
  %cmp65 = icmp sgt i32 %end, 2, !dbg !1869
  br i1 %cmp65, label %cond.true67, label %cond.false68, !dbg !1869

cond.true67:                                      ; preds = %cond.end61
  br label %cond.end71, !dbg !1869

cond.false68:                                     ; preds = %cond.end61
  %arrayidx69 = getelementptr inbounds i32* %begin, i64 1, !dbg !1870
  %tmp21 = load i32* %arrayidx69, align 4, !dbg !1870
  %call70 = call %struct.clause_t* @clause_from_lit(i32 %tmp21), !dbg !1871
  br label %cond.end71, !dbg !1869

cond.end71:                                       ; preds = %cond.false68, %cond.true67
  %cond = phi %struct.clause_t* [ %tmp, %cond.true67 ], [ %call70, %cond.false68 ], !dbg !1869
  %tmp22 = bitcast %struct.clause_t* %cond to i8*, !dbg !1872
  call fastcc void @vecp_push(%struct.vecp_t* %call64, i8* %tmp22), !dbg !1874
  %arrayidx72 = getelementptr inbounds i32* %begin, i64 1, !dbg !1875
  %tmp23 = load i32* %arrayidx72, align 4, !dbg !1875
  %call73 = call fastcc i32 @lit_neg13(i32 %tmp23), !dbg !1876
  %call74 = call fastcc %struct.vecp_t* @solver_read_wlist(%struct.solver_t* %s, i32 %call73), !dbg !1877
  %cmp75 = icmp sgt i32 %end, 2, !dbg !1878
  br i1 %cmp75, label %cond.true77, label %cond.false78, !dbg !1878

cond.true77:                                      ; preds = %cond.end71
  br label %cond.end81, !dbg !1878

cond.false78:                                     ; preds = %cond.end71
  %tmp24 = load i32* %begin, align 4, !dbg !1879
  %call80 = call %struct.clause_t* @clause_from_lit(i32 %tmp24), !dbg !1880
  br label %cond.end81, !dbg !1878

cond.end81:                                       ; preds = %cond.false78, %cond.true77
  %cond82 = phi %struct.clause_t* [ %tmp, %cond.true77 ], [ %call80, %cond.false78 ], !dbg !1878
  %tmp25 = bitcast %struct.clause_t* %cond82 to i8*, !dbg !1881
  call fastcc void @vecp_push(%struct.vecp_t* %call74, i8* %tmp25), !dbg !1882
  ret %struct.clause_t* %tmp, !dbg !1883
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @solver_dlevel(%struct.solver_t* %s) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !1884, metadata !432), !dbg !1885
  %trail_lim = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 22, !dbg !1886
  %call = call fastcc i32 @veci_size11(%struct.veci_t* %trail_lim), !dbg !1887
  ret i32 %call, !dbg !1888
}

; Function Attrs: nounwind uwtable
define internal fastcc signext i8 @clause_simplify(%struct.solver_t* %s, %struct.clause_t* %c) #0 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !1889, metadata !432), !dbg !1890
  call void @llvm.dbg.value(metadata %struct.clause_t* %c, i64 0, metadata !1891, metadata !432), !dbg !1892
  %call = call fastcc i32* @clause_begin(%struct.clause_t* %c), !dbg !1893
  call void @llvm.dbg.value(metadata i32* %call, i64 0, metadata !1894, metadata !432), !dbg !1895
  %assigns = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 12, !dbg !1896
  %tmp = load i8** %assigns, align 8, !dbg !1896
  call void @llvm.dbg.value(metadata i8* %tmp, i64 0, metadata !1897, metadata !432), !dbg !1898
  %call1 = call fastcc i32 @solver_dlevel(%struct.solver_t* %s), !dbg !1899
  %cmp = icmp eq i32 %call1, 0, !dbg !1899
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1899

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1900

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8]* @.str218, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 337, i8* getelementptr inbounds ([42 x i8]* @__PRETTY_FUNCTION__.clause_simplify, i32 0, i32 0)) #8, !dbg !1902
  unreachable, !dbg !1902

bb:                                               ; No predecessors!
  br label %cond.end, !dbg !1899

cond.end:                                         ; preds = %bb, %cond.true
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1904, metadata !432), !dbg !1905
  br label %for.cond, !dbg !1906

for.cond:                                         ; preds = %for.inc, %cond.end
  %i.0 = phi i32 [ 0, %cond.end ], [ %inc, %for.inc ]
  %call2 = call fastcc i32 @clause_size(%struct.clause_t* %c), !dbg !1908
  %cmp3 = icmp slt i32 %i.0, %call2, !dbg !1910
  br i1 %cmp3, label %for.body, label %for.end, !dbg !1911

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !1912
  %arrayidx = getelementptr inbounds i32* %call, i64 %idxprom, !dbg !1912
  %tmp1 = load i32* %arrayidx, align 4, !dbg !1912
  %call4 = call fastcc i32 @lit_sign(i32 %tmp1), !dbg !1914
  %tobool = icmp ne i32 %call4, 0, !dbg !1915
  %lnot = xor i1 %tobool, true, !dbg !1915
  %lnot.ext = zext i1 %lnot to i32, !dbg !1915
  %conv = trunc i32 %lnot.ext to i8, !dbg !1915
  call void @llvm.dbg.value(metadata i8 %conv, i64 0, metadata !1916, metadata !432), !dbg !1917
  %conv5 = sext i8 %conv to i32, !dbg !1918
  %sub = sub nsw i32 %conv5, 1, !dbg !1918
  %conv6 = sext i8 %conv to i32, !dbg !1919
  %add = add nsw i32 %conv6, %sub, !dbg !1919
  %conv7 = trunc i32 %add to i8, !dbg !1919
  call void @llvm.dbg.value(metadata i8 %conv7, i64 0, metadata !1916, metadata !432), !dbg !1917
  %idxprom8 = sext i32 %i.0 to i64, !dbg !1920
  %arrayidx9 = getelementptr inbounds i32* %call, i64 %idxprom8, !dbg !1920
  %tmp2 = load i32* %arrayidx9, align 4, !dbg !1920
  %call10 = call fastcc i32 @lit_var(i32 %tmp2), !dbg !1922
  %idxprom11 = sext i32 %call10 to i64, !dbg !1923
  %arrayidx12 = getelementptr inbounds i8* %tmp, i64 %idxprom11, !dbg !1923
  %tmp3 = load i8* %arrayidx12, align 1, !dbg !1923
  %conv13 = sext i8 %tmp3 to i32, !dbg !1923
  %conv14 = sext i8 %conv7 to i32, !dbg !1924
  %cmp15 = icmp eq i32 %conv13, %conv14, !dbg !1923
  br i1 %cmp15, label %if.then, label %if.end, !dbg !1925

if.then:                                          ; preds = %for.body
  br label %return, !dbg !1926

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1927

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !dbg !1928
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !1904, metadata !432), !dbg !1905
  br label %for.cond, !dbg !1929

for.end:                                          ; preds = %for.cond
  br label %return, !dbg !1930

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i8 [ 1, %if.then ], [ -1, %for.end ]
  ret i8 %retval.0, !dbg !1931
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @assume(%struct.solver_t* %s, i32 %l) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !1932, metadata !432), !dbg !1933
  call void @llvm.dbg.value(metadata i32 %l, i64 0, metadata !1934, metadata !432), !dbg !1935
  %qtail = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 3, !dbg !1936
  %tmp = load i32* %qtail, align 4, !dbg !1936
  %qhead = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 2, !dbg !1936
  %tmp1 = load i32* %qhead, align 4, !dbg !1936
  %cmp = icmp eq i32 %tmp, %tmp1, !dbg !1936
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1936

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1937

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 422, i8* getelementptr inbounds ([27 x i8]* @__PRETTY_FUNCTION__.assume, i32 0, i32 0)) #8, !dbg !1939
  unreachable, !dbg !1939

bb:                                               ; No predecessors!
  br label %cond.end, !dbg !1936

cond.end:                                         ; preds = %bb, %cond.true
  %call = call fastcc i32 @lit_var(i32 %l), !dbg !1941
  %idxprom = sext i32 %call to i64, !dbg !1941
  %assigns = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 12, !dbg !1941
  %tmp2 = load i8** %assigns, align 8, !dbg !1941
  %arrayidx = getelementptr inbounds i8* %tmp2, i64 %idxprom, !dbg !1941
  %tmp3 = load i8* %arrayidx, align 1, !dbg !1941
  %conv = sext i8 %tmp3 to i32, !dbg !1941
  %cmp1 = icmp eq i32 %conv, 0, !dbg !1941
  br i1 %cmp1, label %cond.true3, label %cond.false4, !dbg !1941

cond.true3:                                       ; preds = %cond.end
  br label %cond.end5, !dbg !1942

cond.false4:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 423, i8* getelementptr inbounds ([27 x i8]* @__PRETTY_FUNCTION__.assume, i32 0, i32 0)) #8, !dbg !1943
  unreachable, !dbg !1943

bb4:                                              ; No predecessors!
  br label %cond.end5, !dbg !1941

cond.end5:                                        ; preds = %bb4, %cond.true3
  %trail_lim = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 22, !dbg !1944
  %qtail6 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 3, !dbg !1945
  %tmp5 = load i32* %qtail6, align 4, !dbg !1945
  call fastcc void @veci_push12(%struct.veci_t* %trail_lim, i32 %tmp5), !dbg !1946
  %call7 = call fastcc i32 @enqueue(%struct.solver_t* %s, i32 %l, %struct.clause_t* null), !dbg !1947
  ret void, !dbg !1948
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @solver_canceluntil(%struct.solver_t* %s, i32 %level) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !1949, metadata !432), !dbg !1950
  call void @llvm.dbg.value(metadata i32 %level, i64 0, metadata !1951, metadata !432), !dbg !1952
  %call = call fastcc i32 @solver_dlevel(%struct.solver_t* %s), !dbg !1953
  %cmp = icmp sle i32 %call, %level, !dbg !1953
  br i1 %cmp, label %if.then, label %if.end, !dbg !1955

if.then:                                          ; preds = %entry
  br label %return, !dbg !1956

if.end:                                           ; preds = %entry
  %trail1 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 16, !dbg !1957
  %tmp = load i32** %trail1, align 8, !dbg !1957
  call void @llvm.dbg.value(metadata i32* %tmp, i64 0, metadata !1958, metadata !432), !dbg !1959
  %assigns = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 12, !dbg !1960
  %tmp1 = load i8** %assigns, align 8, !dbg !1960
  call void @llvm.dbg.value(metadata i8* %tmp1, i64 0, metadata !1961, metadata !432), !dbg !1962
  %reasons2 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 14, !dbg !1963
  %tmp2 = load %struct.clause_t*** %reasons2, align 8, !dbg !1963
  call void @llvm.dbg.value(metadata %struct.clause_t** %tmp2, i64 0, metadata !1964, metadata !432), !dbg !1965
  %idxprom = sext i32 %level to i64, !dbg !1966
  %trail_lim = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 22, !dbg !1967
  %call3 = call fastcc i32* @veci_begin24(%struct.veci_t* %trail_lim), !dbg !1968
  %arrayidx = getelementptr inbounds i32* %call3, i64 %idxprom, !dbg !1966
  %tmp3 = load i32* %arrayidx, align 4, !dbg !1966
  call void @llvm.dbg.value(metadata i32 %tmp3, i64 0, metadata !1969, metadata !432), !dbg !1970
  %qtail = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 3, !dbg !1971
  %tmp4 = load i32* %qtail, align 4, !dbg !1971
  %sub = sub nsw i32 %tmp4, 1, !dbg !1971
  call void @llvm.dbg.value(metadata i32 %sub, i64 0, metadata !1973, metadata !432), !dbg !1974
  br label %for.cond, !dbg !1975

for.cond:                                         ; preds = %for.inc, %if.end
  %c.0 = phi i32 [ %sub, %if.end ], [ %dec, %for.inc ]
  %cmp4 = icmp sge i32 %c.0, %tmp3, !dbg !1976
  br i1 %cmp4, label %for.body, label %for.end, !dbg !1978

for.body:                                         ; preds = %for.cond
  %idxprom5 = sext i32 %c.0 to i64, !dbg !1979
  %arrayidx6 = getelementptr inbounds i32* %tmp, i64 %idxprom5, !dbg !1979
  %tmp5 = load i32* %arrayidx6, align 4, !dbg !1979
  %call7 = call fastcc i32 @lit_var(i32 %tmp5), !dbg !1981
  call void @llvm.dbg.value(metadata i32 %call7, i64 0, metadata !1982, metadata !432), !dbg !1983
  %idxprom8 = sext i32 %call7 to i64, !dbg !1984
  %arrayidx9 = getelementptr inbounds i8* %tmp1, i64 %idxprom8, !dbg !1984
  store i8 0, i8* %arrayidx9, align 1, !dbg !1984
  %idxprom10 = sext i32 %call7 to i64, !dbg !1985
  %arrayidx11 = getelementptr inbounds %struct.clause_t** %tmp2, i64 %idxprom10, !dbg !1985
  store %struct.clause_t* null, %struct.clause_t** %arrayidx11, align 8, !dbg !1985
  br label %for.inc, !dbg !1986

for.inc:                                          ; preds = %for.body
  %dec = add nsw i32 %c.0, -1, !dbg !1987
  call void @llvm.dbg.value(metadata i32 %dec, i64 0, metadata !1973, metadata !432), !dbg !1974
  br label %for.cond, !dbg !1988

for.end:                                          ; preds = %for.cond
  %qhead = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 2, !dbg !1989
  %tmp6 = load i32* %qhead, align 4, !dbg !1989
  %sub12 = sub nsw i32 %tmp6, 1, !dbg !1989
  call void @llvm.dbg.value(metadata i32 %sub12, i64 0, metadata !1973, metadata !432), !dbg !1974
  br label %for.cond13, !dbg !1991

for.cond13:                                       ; preds = %for.inc19, %for.end
  %c.1 = phi i32 [ %sub12, %for.end ], [ %dec20, %for.inc19 ]
  %cmp14 = icmp sge i32 %c.1, %tmp3, !dbg !1992
  br i1 %cmp14, label %for.body15, label %for.end21, !dbg !1994

for.body15:                                       ; preds = %for.cond13
  %idxprom16 = sext i32 %c.1 to i64, !dbg !1995
  %arrayidx17 = getelementptr inbounds i32* %tmp, i64 %idxprom16, !dbg !1995
  %tmp7 = load i32* %arrayidx17, align 4, !dbg !1995
  %call18 = call fastcc i32 @lit_var(i32 %tmp7), !dbg !1996
  call fastcc void @order_unassigned(%struct.solver_t* %s, i32 %call18), !dbg !1997
  br label %for.inc19, !dbg !1997

for.inc19:                                        ; preds = %for.body15
  %dec20 = add nsw i32 %c.1, -1, !dbg !1998
  call void @llvm.dbg.value(metadata i32 %dec20, i64 0, metadata !1973, metadata !432), !dbg !1974
  br label %for.cond13, !dbg !1999

for.end21:                                        ; preds = %for.cond13
  %qtail22 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 3, !dbg !2000
  store i32 %tmp3, i32* %qtail22, align 4, !dbg !2000
  %qhead23 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 2, !dbg !2001
  store i32 %tmp3, i32* %qhead23, align 4, !dbg !2001
  %trail_lim24 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 22, !dbg !2002
  call fastcc void @veci_resize25(%struct.veci_t* %trail_lim24, i32 %level), !dbg !2003
  br label %return, !dbg !2004

return:                                           ; preds = %for.end21, %if.then
  ret void, !dbg !2005
}

; Function Attrs: nounwind uwtable
define internal fastcc signext i8 @solver_search(%struct.solver_t* %s, i32 %nof_conflicts, i32 %nof_learnts) #0 {
entry:
  %learnt_clause = alloca %struct.veci_t, align 8
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !2007, metadata !432), !dbg !2008
  call void @llvm.dbg.value(metadata i32 %nof_conflicts, i64 0, metadata !2009, metadata !432), !dbg !2010
  call void @llvm.dbg.value(metadata i32 %nof_learnts, i64 0, metadata !2011, metadata !432), !dbg !2012
  %levels1 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 15, !dbg !2013
  %tmp = load i32** %levels1, align 8, !dbg !2013
  call void @llvm.dbg.value(metadata i32* %tmp, i64 0, metadata !2014, metadata !432), !dbg !2015
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2016, metadata !432), !dbg !2017
  call void @llvm.dbg.declare(metadata %struct.veci_t* %learnt_clause, metadata !2018, metadata !432), !dbg !2019
  %root_level = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 24, !dbg !2020
  %tmp1 = load i32* %root_level, align 4, !dbg !2020
  %call = call fastcc i32 @solver_dlevel(%struct.solver_t* %s), !dbg !2020
  %cmp = icmp eq i32 %tmp1, %call, !dbg !2020
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2020

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !2021

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8]* @.str727, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 805, i8* getelementptr inbounds ([40 x i8]* @__PRETTY_FUNCTION__.solver_search, i32 0, i32 0)) #8, !dbg !2023
  unreachable, !dbg !2023

bb:                                               ; No predecessors!
  br label %cond.end, !dbg !2020

cond.end:                                         ; preds = %bb, %cond.true
  %stats = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 28, !dbg !2025
  %starts = getelementptr inbounds %struct.stats_t* %stats, i32 0, i32 0, !dbg !2025
  %tmp2 = load i64* %starts, align 8, !dbg !2025
  %inc = add nsw i64 %tmp2, 1, !dbg !2025
  store i64 %inc, i64* %starts, align 8, !dbg !2025
  %model = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 23, !dbg !2026
  call fastcc void @veci_resize25(%struct.veci_t* %model, i32 0), !dbg !2027
  call fastcc void @veci_new16(%struct.veci_t* %learnt_clause), !dbg !2028
  br label %for.cond, !dbg !2029

for.cond:                                         ; preds = %if.end58, %cond.end
  %conflictC.0 = phi i32 [ 0, %cond.end ], [ %conflictC.1, %if.end58 ]
  %call2 = call %struct.clause_t* @solver_propagate(%struct.solver_t* %s), !dbg !2030
  call void @llvm.dbg.value(metadata %struct.clause_t* %call2, i64 0, metadata !2034, metadata !432), !dbg !2035
  %cmp3 = icmp ne %struct.clause_t* %call2, null, !dbg !2036
  br i1 %cmp3, label %if.then, label %if.else, !dbg !2038

if.then:                                          ; preds = %for.cond
  %stats4 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 28, !dbg !2039
  %conflicts = getelementptr inbounds %struct.stats_t* %stats4, i32 0, i32 4, !dbg !2039
  %tmp3 = load i64* %conflicts, align 8, !dbg !2039
  %inc5 = add nsw i64 %tmp3, 1, !dbg !2039
  store i64 %inc5, i64* %conflicts, align 8, !dbg !2039
  %inc6 = add nsw i32 %conflictC.0, 1, !dbg !2041
  call void @llvm.dbg.value(metadata i32 %inc6, i64 0, metadata !2016, metadata !432), !dbg !2017
  %call7 = call fastcc i32 @solver_dlevel(%struct.solver_t* %s), !dbg !2042
  %root_level8 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 24, !dbg !2044
  %tmp4 = load i32* %root_level8, align 4, !dbg !2044
  %cmp9 = icmp eq i32 %call7, %tmp4, !dbg !2042
  br i1 %cmp9, label %if.then10, label %if.end, !dbg !2045

if.then10:                                        ; preds = %if.then
  call fastcc void @veci_delete17(%struct.veci_t* %learnt_clause), !dbg !2046
  br label %return, !dbg !2048

if.end:                                           ; preds = %if.then
  call fastcc void @veci_resize25(%struct.veci_t* %learnt_clause, i32 0), !dbg !2049
  call fastcc void @solver_analyze(%struct.solver_t* %s, %struct.clause_t* %call2, %struct.veci_t* %learnt_clause), !dbg !2050
  %call11 = call fastcc i32 @veci_size11(%struct.veci_t* %learnt_clause), !dbg !2051
  %cmp12 = icmp sgt i32 %call11, 1, !dbg !2051
  br i1 %cmp12, label %cond.true13, label %cond.false17, !dbg !2051

cond.true13:                                      ; preds = %if.end
  %call14 = call fastcc i32* @veci_begin24(%struct.veci_t* %learnt_clause), !dbg !2052
  %arrayidx = getelementptr inbounds i32* %call14, i64 1, !dbg !2052
  %tmp5 = load i32* %arrayidx, align 4, !dbg !2052
  %call15 = call fastcc i32 @lit_var(i32 %tmp5), !dbg !2054
  %idxprom = sext i32 %call15 to i64, !dbg !2055
  %arrayidx16 = getelementptr inbounds i32* %tmp, i64 %idxprom, !dbg !2055
  %tmp6 = load i32* %arrayidx16, align 4, !dbg !2055
  br label %cond.end19, !dbg !2051

cond.false17:                                     ; preds = %if.end
  %root_level18 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 24, !dbg !2056
  %tmp7 = load i32* %root_level18, align 4, !dbg !2056
  br label %cond.end19, !dbg !2051

cond.end19:                                       ; preds = %cond.false17, %cond.true13
  %cond = phi i32 [ %tmp6, %cond.true13 ], [ %tmp7, %cond.false17 ], !dbg !2051
  call void @llvm.dbg.value(metadata i32 %cond, i64 0, metadata !2058, metadata !432), !dbg !2059
  %root_level20 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 24, !dbg !2060
  %tmp8 = load i32* %root_level20, align 4, !dbg !2060
  %cmp21 = icmp sgt i32 %tmp8, %cond, !dbg !2060
  br i1 %cmp21, label %cond.true22, label %cond.false24, !dbg !2060

cond.true22:                                      ; preds = %cond.end19
  %root_level23 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 24, !dbg !2061
  %tmp9 = load i32* %root_level23, align 4, !dbg !2061
  br label %cond.end25, !dbg !2060

cond.false24:                                     ; preds = %cond.end19
  br label %cond.end25, !dbg !2060

cond.end25:                                       ; preds = %cond.false24, %cond.true22
  %cond26 = phi i32 [ %tmp9, %cond.true22 ], [ %cond, %cond.false24 ], !dbg !2060
  call void @llvm.dbg.value(metadata i32 %cond26, i64 0, metadata !2058, metadata !432), !dbg !2059
  call fastcc void @solver_canceluntil(%struct.solver_t* %s, i32 %cond26), !dbg !2062
  call fastcc void @solver_record(%struct.solver_t* %s, %struct.veci_t* %learnt_clause), !dbg !2063
  call fastcc void @act_var_decay(%struct.solver_t* %s), !dbg !2064
  call fastcc void @act_clause_decay(%struct.solver_t* %s), !dbg !2065
  br label %if.end58, !dbg !2066

if.else:                                          ; preds = %for.cond
  %cmp27 = icmp sge i32 %nof_conflicts, 0, !dbg !2067
  br i1 %cmp27, label %land.lhs.true, label %if.end31, !dbg !2070

land.lhs.true:                                    ; preds = %if.else
  %cmp28 = icmp sge i32 %conflictC.0, %nof_conflicts, !dbg !2071
  br i1 %cmp28, label %if.then29, label %if.end31, !dbg !2070

if.then29:                                        ; preds = %land.lhs.true
  %root_level30 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 24, !dbg !2072
  %tmp10 = load i32* %root_level30, align 4, !dbg !2072
  call fastcc void @solver_canceluntil(%struct.solver_t* %s, i32 %tmp10), !dbg !2074
  call fastcc void @veci_delete17(%struct.veci_t* %learnt_clause), !dbg !2075
  br label %return, !dbg !2076

if.end31:                                         ; preds = %land.lhs.true, %if.else
  %call32 = call fastcc i32 @solver_dlevel(%struct.solver_t* %s), !dbg !2077
  %cmp33 = icmp eq i32 %call32, 0, !dbg !2077
  br i1 %cmp33, label %if.then34, label %if.end36, !dbg !2079

if.then34:                                        ; preds = %if.end31
  %call35 = call i32 @solver_simplify(%struct.solver_t* %s), !dbg !2080
  br label %if.end36, !dbg !2080

if.end36:                                         ; preds = %if.then34, %if.end31
  %cmp37 = icmp sge i32 %nof_learnts, 0, !dbg !2081
  br i1 %cmp37, label %land.lhs.true38, label %if.end42, !dbg !2083

land.lhs.true38:                                  ; preds = %if.end36
  %learnts = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 5, !dbg !2084
  %call39 = call fastcc i32 @vecp_size(%struct.vecp_t* %learnts), !dbg !2085
  %qtail = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 3, !dbg !2086
  %tmp11 = load i32* %qtail, align 4, !dbg !2086
  %sub = sub nsw i32 %call39, %tmp11, !dbg !2085
  %cmp40 = icmp sge i32 %sub, %nof_learnts, !dbg !2085
  br i1 %cmp40, label %if.then41, label %if.end42, !dbg !2083

if.then41:                                        ; preds = %land.lhs.true38
  call void @solver_reducedb(%struct.solver_t* %s), !dbg !2087
  br label %if.end42, !dbg !2087

if.end42:                                         ; preds = %if.then41, %land.lhs.true38, %if.end36
  %stats43 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 28, !dbg !2088
  %decisions = getelementptr inbounds %struct.stats_t* %stats43, i32 0, i32 1, !dbg !2088
  %tmp12 = load i64* %decisions, align 8, !dbg !2088
  %inc44 = add nsw i64 %tmp12, 1, !dbg !2088
  store i64 %inc44, i64* %decisions, align 8, !dbg !2088
  %call45 = call fastcc i32 @order_select(%struct.solver_t* %s), !dbg !2089
  call void @llvm.dbg.value(metadata i32 %call45, i64 0, metadata !2090, metadata !432), !dbg !2091
  %cmp46 = icmp eq i32 %call45, -1, !dbg !2092
  br i1 %cmp46, label %if.then47, label %if.end55, !dbg !2094

if.then47:                                        ; preds = %if.end42
  %assigns = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 12, !dbg !2095
  %tmp13 = load i8** %assigns, align 8, !dbg !2095
  call void @llvm.dbg.value(metadata i8* %tmp13, i64 0, metadata !2097, metadata !432), !dbg !2098
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2099, metadata !432), !dbg !2100
  br label %for.cond48, !dbg !2101

for.cond48:                                       ; preds = %for.inc, %if.then47
  %i.0 = phi i32 [ 0, %if.then47 ], [ %inc53, %for.inc ]
  %size = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 0, !dbg !2103
  %tmp14 = load i32* %size, align 4, !dbg !2103
  %cmp49 = icmp slt i32 %i.0, %tmp14, !dbg !2105
  br i1 %cmp49, label %for.body, label %for.end, !dbg !2106

for.body:                                         ; preds = %for.cond48
  %model50 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 23, !dbg !2107
  %idxprom51 = sext i32 %i.0 to i64, !dbg !2108
  %arrayidx52 = getelementptr inbounds i8* %tmp13, i64 %idxprom51, !dbg !2108
  %tmp15 = load i8* %arrayidx52, align 1, !dbg !2108
  %conv = sext i8 %tmp15 to i32, !dbg !2109
  call fastcc void @veci_push12(%struct.veci_t* %model50, i32 %conv), !dbg !2110
  br label %for.inc, !dbg !2110

for.inc:                                          ; preds = %for.body
  %inc53 = add nsw i32 %i.0, 1, !dbg !2111
  call void @llvm.dbg.value(metadata i32 %inc53, i64 0, metadata !2099, metadata !432), !dbg !2100
  br label %for.cond48, !dbg !2113

for.end:                                          ; preds = %for.cond48
  %root_level54 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 24, !dbg !2114
  %tmp16 = load i32* %root_level54, align 4, !dbg !2114
  call fastcc void @solver_canceluntil(%struct.solver_t* %s, i32 %tmp16), !dbg !2115
  call fastcc void @veci_delete17(%struct.veci_t* %learnt_clause), !dbg !2116
  br label %return, !dbg !2117

if.end55:                                         ; preds = %if.end42
  %call56 = call fastcc i32 @toLit23(i32 %call45), !dbg !2118
  %call57 = call fastcc i32 @lit_neg13(i32 %call56), !dbg !2119
  call fastcc void @assume(%struct.solver_t* %s, i32 %call57), !dbg !2120
  br label %if.end58

if.end58:                                         ; preds = %if.end55, %cond.end25
  %conflictC.1 = phi i32 [ %inc6, %cond.end25 ], [ %conflictC.0, %if.end55 ]
  br label %for.cond, !dbg !2121

return:                                           ; preds = %for.end, %if.then29, %if.then10
  %retval.0 = phi i8 [ -1, %if.then10 ], [ 0, %if.then29 ], [ 1, %for.end ]
  ret i8 %retval.0, !dbg !2122
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @selectionsort(i8** %array, i32 %size, i32 (i8*, i8*)* %comp) #6 {
entry:
  call void @llvm.dbg.value(metadata i8** %array, i64 0, metadata !2123, metadata !432), !dbg !2124
  call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !2125, metadata !432), !dbg !2126
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %comp, i64 0, metadata !2127, metadata !432), !dbg !2128
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2129, metadata !432), !dbg !2130
  br label %for.cond, !dbg !2131

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc16, %for.inc15 ]
  %sub = sub nsw i32 %size, 1, !dbg !2133
  %cmp = icmp slt i32 %i.0, %sub, !dbg !2135
  br i1 %cmp, label %for.body, label %for.end17, !dbg !2136

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 %i.0, i64 0, metadata !2137, metadata !432), !dbg !2138
  %add = add nsw i32 %i.0, 1, !dbg !2139
  call void @llvm.dbg.value(metadata i32 %add, i64 0, metadata !2142, metadata !432), !dbg !2143
  br label %for.cond1, !dbg !2144

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ %add, %for.body ], [ %inc, %for.inc ]
  %best_i.0 = phi i32 [ %i.0, %for.body ], [ %best_i.1, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %size, !dbg !2145
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !2147

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %j.0 to i64, !dbg !2148
  %arrayidx = getelementptr inbounds i8** %array, i64 %idxprom, !dbg !2148
  %tmp = load i8** %arrayidx, align 8, !dbg !2148
  %idxprom4 = sext i32 %best_i.0 to i64, !dbg !2151
  %arrayidx5 = getelementptr inbounds i8** %array, i64 %idxprom4, !dbg !2151
  %tmp1 = load i8** %arrayidx5, align 8, !dbg !2151
  %call = call i32 %comp(i8* %tmp, i8* %tmp1), !dbg !2152
  %cmp6 = icmp slt i32 %call, 0, !dbg !2152
  br i1 %cmp6, label %if.then, label %if.end, !dbg !2153

if.then:                                          ; preds = %for.body3
  call void @llvm.dbg.value(metadata i32 %j.0, i64 0, metadata !2137, metadata !432), !dbg !2138
  br label %if.end, !dbg !2154

if.end:                                           ; preds = %if.then, %for.body3
  %best_i.1 = phi i32 [ %j.0, %if.then ], [ %best_i.0, %for.body3 ]
  br label %for.inc, !dbg !2155

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %j.0, 1, !dbg !2156
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !2142, metadata !432), !dbg !2143
  br label %for.cond1, !dbg !2157

for.end:                                          ; preds = %for.cond1
  %idxprom7 = sext i32 %i.0 to i64, !dbg !2158
  %arrayidx8 = getelementptr inbounds i8** %array, i64 %idxprom7, !dbg !2158
  %tmp2 = load i8** %arrayidx8, align 8, !dbg !2158
  call void @llvm.dbg.value(metadata i8* %tmp2, i64 0, metadata !2159, metadata !432), !dbg !2160
  %idxprom9 = sext i32 %best_i.0 to i64, !dbg !2161
  %arrayidx10 = getelementptr inbounds i8** %array, i64 %idxprom9, !dbg !2161
  %tmp3 = load i8** %arrayidx10, align 8, !dbg !2161
  %idxprom11 = sext i32 %i.0 to i64, !dbg !2162
  %arrayidx12 = getelementptr inbounds i8** %array, i64 %idxprom11, !dbg !2162
  store i8* %tmp3, i8** %arrayidx12, align 8, !dbg !2162
  %idxprom13 = sext i32 %best_i.0 to i64, !dbg !2163
  %arrayidx14 = getelementptr inbounds i8** %array, i64 %idxprom13, !dbg !2163
  store i8* %tmp2, i8** %arrayidx14, align 8, !dbg !2163
  br label %for.inc15, !dbg !2164

for.inc15:                                        ; preds = %for.end
  %inc16 = add nsw i32 %i.0, 1, !dbg !2165
  call void @llvm.dbg.value(metadata i32 %inc16, i64 0, metadata !2129, metadata !432), !dbg !2130
  br label %for.cond, !dbg !2166

for.end17:                                        ; preds = %for.cond
  ret void, !dbg !2167
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @toLit23(i32 %v) #6 {
entry:
  call void @llvm.dbg.value(metadata i32 %v, i64 0, metadata !2168, metadata !432), !dbg !2169
  %add = add nsw i32 %v, %v, !dbg !2170
  ret i32 %add, !dbg !2171
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @order_select(%struct.solver_t* %s) #0 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !2172, metadata !432), !dbg !2173
  %assigns = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 12, !dbg !2174
  %tmp = load i8** %assigns, align 8, !dbg !2174
  call void @llvm.dbg.value(metadata i8* %tmp, i64 0, metadata !2175, metadata !432), !dbg !2176
  %order = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 21, !dbg !2177
  %call = call fastcc i32* @veci_begin24(%struct.veci_t* %order), !dbg !2178
  call void @llvm.dbg.value(metadata i32* %call, i64 0, metadata !2179, metadata !432), !dbg !2180
  %activity1 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 11, !dbg !2181
  %tmp1 = load i64** %activity1, align 8, !dbg !2181
  call void @llvm.dbg.value(metadata i64* %tmp1, i64 0, metadata !2182, metadata !432), !dbg !2183
  %orderpos2 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 13, !dbg !2184
  %tmp2 = load i32** %orderpos2, align 8, !dbg !2184
  call void @llvm.dbg.value(metadata i32* %tmp2, i64 0, metadata !2185, metadata !432), !dbg !2186
  br label %while.cond, !dbg !2187

while.cond:                                       ; preds = %if.end58, %entry
  %order3 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 21, !dbg !2188
  %call4 = call fastcc i32 @veci_size11(%struct.veci_t* %order3), !dbg !2189
  %cmp = icmp sgt i32 %call4, 0, !dbg !2189
  br i1 %cmp, label %while.body, label %while.end59, !dbg !2187

while.body:                                       ; preds = %while.cond
  %tmp3 = load i32* %call, align 4, !dbg !2190
  call void @llvm.dbg.value(metadata i32 %tmp3, i64 0, metadata !2192, metadata !432), !dbg !2193
  %order5 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 21, !dbg !2194
  %call6 = call fastcc i32 @veci_size11(%struct.veci_t* %order5), !dbg !2195
  %sub = sub nsw i32 %call6, 1, !dbg !2195
  call void @llvm.dbg.value(metadata i32 %sub, i64 0, metadata !2196, metadata !432), !dbg !2197
  %idxprom = sext i32 %sub to i64, !dbg !2198
  %arrayidx7 = getelementptr inbounds i32* %call, i64 %idxprom, !dbg !2198
  %tmp4 = load i32* %arrayidx7, align 4, !dbg !2198
  call void @llvm.dbg.value(metadata i32 %tmp4, i64 0, metadata !2199, metadata !432), !dbg !2200
  %order8 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 21, !dbg !2201
  call fastcc void @veci_resize25(%struct.veci_t* %order8, i32 %sub), !dbg !2202
  %idxprom9 = sext i32 %tmp3 to i64, !dbg !2203
  %arrayidx10 = getelementptr inbounds i32* %tmp2, i64 %idxprom9, !dbg !2203
  store i32 -1, i32* %arrayidx10, align 4, !dbg !2203
  %cmp11 = icmp sgt i32 %sub, 0, !dbg !2204
  br i1 %cmp11, label %if.then, label %if.end52, !dbg !2206

if.then:                                          ; preds = %while.body
  %idxprom12 = sext i32 %tmp4 to i64, !dbg !2207
  %arrayidx13 = getelementptr inbounds i64* %tmp1, i64 %idxprom12, !dbg !2207
  %tmp5 = load i64* %arrayidx13, align 8, !dbg !2207
  call void @llvm.dbg.value(metadata i64 %tmp5, i64 0, metadata !2209, metadata !432), !dbg !2210
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2211, metadata !432), !dbg !2212
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2213, metadata !432), !dbg !2214
  br label %while.cond14, !dbg !2215

while.cond14:                                     ; preds = %if.end36, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %child.1, %if.end36 ]
  %child.0 = phi i32 [ 1, %if.then ], [ %add45, %if.end36 ]
  %cmp15 = icmp slt i32 %child.0, %sub, !dbg !2216
  br i1 %cmp15, label %while.body16, label %while.end, !dbg !2215

while.body16:                                     ; preds = %while.cond14
  %add = add nsw i32 %child.0, 1, !dbg !2217
  %cmp17 = icmp slt i32 %add, %sub, !dbg !2217
  br i1 %cmp17, label %land.lhs.true, label %if.end, !dbg !2220

land.lhs.true:                                    ; preds = %while.body16
  %idxprom18 = sext i32 %child.0 to i64, !dbg !2221
  %arrayidx19 = getelementptr inbounds i32* %call, i64 %idxprom18, !dbg !2221
  %tmp6 = load i32* %arrayidx19, align 4, !dbg !2221
  %idxprom20 = sext i32 %tmp6 to i64, !dbg !2222
  %arrayidx21 = getelementptr inbounds i64* %tmp1, i64 %idxprom20, !dbg !2222
  %tmp7 = load i64* %arrayidx21, align 8, !dbg !2222
  %add22 = add nsw i32 %child.0, 1, !dbg !2223
  %idxprom23 = sext i32 %add22 to i64, !dbg !2224
  %arrayidx24 = getelementptr inbounds i32* %call, i64 %idxprom23, !dbg !2224
  %tmp8 = load i32* %arrayidx24, align 4, !dbg !2224
  %idxprom25 = sext i32 %tmp8 to i64, !dbg !2225
  %arrayidx26 = getelementptr inbounds i64* %tmp1, i64 %idxprom25, !dbg !2225
  %tmp9 = load i64* %arrayidx26, align 8, !dbg !2225
  %cmp27 = icmp ult i64 %tmp7, %tmp9, !dbg !2222
  br i1 %cmp27, label %if.then28, label %if.end, !dbg !2220

if.then28:                                        ; preds = %land.lhs.true
  %inc = add nsw i32 %child.0, 1, !dbg !2226
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !2213, metadata !432), !dbg !2214
  br label %if.end, !dbg !2226

if.end:                                           ; preds = %if.then28, %land.lhs.true, %while.body16
  %child.1 = phi i32 [ %inc, %if.then28 ], [ %child.0, %land.lhs.true ], [ %child.0, %while.body16 ]
  %cmp29 = icmp slt i32 %child.1, %sub, !dbg !2227
  br i1 %cmp29, label %cond.true, label %cond.false, !dbg !2227

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !2228

cond.false:                                       ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 194, i8* getelementptr inbounds ([27 x i8]* @__PRETTY_FUNCTION__.order_select, i32 0, i32 0)) #8, !dbg !2230
  unreachable, !dbg !2230

bb:                                               ; No predecessors!
  br label %cond.end, !dbg !2227

cond.end:                                         ; preds = %bb, %cond.true
  %idxprom30 = sext i32 %child.1 to i64, !dbg !2232
  %arrayidx31 = getelementptr inbounds i32* %call, i64 %idxprom30, !dbg !2232
  %tmp10 = load i32* %arrayidx31, align 4, !dbg !2232
  %idxprom32 = sext i32 %tmp10 to i64, !dbg !2234
  %arrayidx33 = getelementptr inbounds i64* %tmp1, i64 %idxprom32, !dbg !2234
  %tmp11 = load i64* %arrayidx33, align 8, !dbg !2234
  %cmp34 = icmp uge i64 %tmp5, %tmp11, !dbg !2235
  br i1 %cmp34, label %if.then35, label %if.end36, !dbg !2236

if.then35:                                        ; preds = %cond.end
  br label %while.end, !dbg !2237

if.end36:                                         ; preds = %cond.end
  %idxprom37 = sext i32 %child.1 to i64, !dbg !2238
  %arrayidx38 = getelementptr inbounds i32* %call, i64 %idxprom37, !dbg !2238
  %tmp12 = load i32* %arrayidx38, align 4, !dbg !2238
  %idxprom39 = sext i32 %i.0 to i64, !dbg !2239
  %arrayidx40 = getelementptr inbounds i32* %call, i64 %idxprom39, !dbg !2239
  store i32 %tmp12, i32* %arrayidx40, align 4, !dbg !2239
  %idxprom41 = sext i32 %i.0 to i64, !dbg !2240
  %arrayidx42 = getelementptr inbounds i32* %call, i64 %idxprom41, !dbg !2240
  %tmp13 = load i32* %arrayidx42, align 4, !dbg !2240
  %idxprom43 = sext i32 %tmp13 to i64, !dbg !2241
  %arrayidx44 = getelementptr inbounds i32* %tmp2, i64 %idxprom43, !dbg !2241
  store i32 %i.0, i32* %arrayidx44, align 4, !dbg !2241
  call void @llvm.dbg.value(metadata i32 %child.1, i64 0, metadata !2211, metadata !432), !dbg !2212
  %mul = mul nsw i32 2, %child.1, !dbg !2242
  %add45 = add nsw i32 %mul, 1, !dbg !2242
  call void @llvm.dbg.value(metadata i32 %add45, i64 0, metadata !2213, metadata !432), !dbg !2214
  br label %while.cond14, !dbg !2215

while.end:                                        ; preds = %if.then35, %while.cond14
  %idxprom46 = sext i32 %i.0 to i64, !dbg !2243
  %arrayidx47 = getelementptr inbounds i32* %call, i64 %idxprom46, !dbg !2243
  store i32 %tmp4, i32* %arrayidx47, align 4, !dbg !2243
  %idxprom48 = sext i32 %i.0 to i64, !dbg !2244
  %arrayidx49 = getelementptr inbounds i32* %call, i64 %idxprom48, !dbg !2244
  %tmp14 = load i32* %arrayidx49, align 4, !dbg !2244
  %idxprom50 = sext i32 %tmp14 to i64, !dbg !2245
  %arrayidx51 = getelementptr inbounds i32* %tmp2, i64 %idxprom50, !dbg !2245
  store i32 %i.0, i32* %arrayidx51, align 4, !dbg !2245
  br label %if.end52, !dbg !2246

if.end52:                                         ; preds = %while.end, %while.body
  %idxprom53 = sext i32 %tmp3 to i64, !dbg !2247
  %arrayidx54 = getelementptr inbounds i8* %tmp, i64 %idxprom53, !dbg !2247
  %tmp15 = load i8* %arrayidx54, align 1, !dbg !2247
  %conv = sext i8 %tmp15 to i32, !dbg !2247
  %cmp55 = icmp eq i32 %conv, 0, !dbg !2247
  br i1 %cmp55, label %if.then57, label %if.end58, !dbg !2249

if.then57:                                        ; preds = %if.end52
  br label %return, !dbg !2250

if.end58:                                         ; preds = %if.end52
  br label %while.cond, !dbg !2187

while.end59:                                      ; preds = %while.cond
  br label %return, !dbg !2251

return:                                           ; preds = %while.end59, %if.then57
  %retval.0 = phi i32 [ %tmp3, %if.then57 ], [ -1, %while.end59 ]
  ret i32 %retval.0, !dbg !2252
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @act_clause_decay(%struct.solver_t* %s) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !2253, metadata !432), !dbg !2254
  %cla_decay = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 9, !dbg !2255
  %tmp = load i64* %cla_decay, align 8, !dbg !2255
  %cla_inc = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 8, !dbg !2256
  %tmp1 = load i64* %cla_inc, align 8, !dbg !2256
  %mul = mul i64 %tmp1, %tmp, !dbg !2256
  store i64 %mul, i64* %cla_inc, align 8, !dbg !2256
  ret void, !dbg !2257
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @act_var_decay(%struct.solver_t* %s) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !2258, metadata !432), !dbg !2259
  %var_decay = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 7, !dbg !2260
  %tmp = load i64* %var_decay, align 8, !dbg !2260
  %var_inc = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 6, !dbg !2261
  %tmp1 = load i64* %var_inc, align 8, !dbg !2261
  %mul = mul i64 %tmp1, %tmp, !dbg !2261
  store i64 %mul, i64* %var_inc, align 8, !dbg !2261
  ret void, !dbg !2262
}

; Function Attrs: nounwind uwtable
define internal fastcc void @solver_record(%struct.solver_t* %s, %struct.veci_t* %cls) #0 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !2263, metadata !432), !dbg !2264
  call void @llvm.dbg.value(metadata %struct.veci_t* %cls, i64 0, metadata !2265, metadata !432), !dbg !2266
  %call = call fastcc i32* @veci_begin24(%struct.veci_t* %cls), !dbg !2267
  call void @llvm.dbg.value(metadata i32* %call, i64 0, metadata !2268, metadata !432), !dbg !2269
  %call1 = call fastcc i32 @veci_size11(%struct.veci_t* %cls), !dbg !2270
  call void @llvm.dbg.value(metadata i32 %call1, i64 0, metadata !2271, metadata !432), !dbg !2272
  %call2 = call fastcc i32 @veci_size11(%struct.veci_t* %cls), !dbg !2273
  %cmp = icmp sgt i32 %call2, 1, !dbg !2273
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2274

cond.true:                                        ; preds = %entry
  %call3 = call fastcc %struct.clause_t* @clause_new(%struct.solver_t* %s, i32* %call, i32 %call1, i32 1), !dbg !2275
  br label %cond.end, !dbg !2274

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2276

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.clause_t* [ %call3, %cond.true ], [ null, %cond.false ], !dbg !2274
  call void @llvm.dbg.value(metadata %struct.clause_t* %cond, i64 0, metadata !2278, metadata !432), !dbg !2279
  %tmp = load i32* %call, align 4, !dbg !2280
  %call4 = call fastcc i32 @enqueue(%struct.solver_t* %s, i32 %tmp, %struct.clause_t* %cond), !dbg !2281
  %call5 = call fastcc i32 @veci_size11(%struct.veci_t* %cls), !dbg !2282
  %cmp6 = icmp sgt i32 %call5, 0, !dbg !2282
  br i1 %cmp6, label %cond.true7, label %cond.false8, !dbg !2282

cond.true7:                                       ; preds = %cond.end
  br label %cond.end9, !dbg !2283

cond.false8:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 467, i8* getelementptr inbounds ([37 x i8]* @__PRETTY_FUNCTION__.solver_record, i32 0, i32 0)) #8, !dbg !2285
  unreachable, !dbg !2285

bb:                                               ; No predecessors!
  br label %cond.end9, !dbg !2282

cond.end9:                                        ; preds = %bb, %cond.true7
  %cmp10 = icmp ne %struct.clause_t* %cond, null, !dbg !2286
  br i1 %cmp10, label %if.then, label %if.end, !dbg !2288

if.then:                                          ; preds = %cond.end9
  %learnts = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 5, !dbg !2289
  %tmp1 = bitcast %struct.clause_t* %cond to i8*, !dbg !2291
  call fastcc void @vecp_push(%struct.vecp_t* %learnts, i8* %tmp1), !dbg !2292
  call fastcc void @act_clause_bump(%struct.solver_t* %s, %struct.clause_t* %cond), !dbg !2293
  %stats = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 28, !dbg !2294
  %learnts11 = getelementptr inbounds %struct.stats_t* %stats, i32 0, i32 7, !dbg !2294
  %tmp2 = load i64* %learnts11, align 8, !dbg !2294
  %inc = add nsw i64 %tmp2, 1, !dbg !2294
  store i64 %inc, i64* %learnts11, align 8, !dbg !2294
  %call12 = call fastcc i32 @veci_size11(%struct.veci_t* %cls), !dbg !2295
  %conv = sext i32 %call12 to i64, !dbg !2295
  %stats13 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 28, !dbg !2296
  %learnts_literals = getelementptr inbounds %struct.stats_t* %stats13, i32 0, i32 8, !dbg !2296
  %tmp3 = load i64* %learnts_literals, align 8, !dbg !2296
  %add = add nsw i64 %tmp3, %conv, !dbg !2296
  store i64 %add, i64* %learnts_literals, align 8, !dbg !2296
  br label %if.end, !dbg !2297

if.end:                                           ; preds = %if.then, %cond.end9
  ret void, !dbg !2298
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @act_clause_bump(%struct.solver_t* %s, %struct.clause_t* %c) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !2299, metadata !432), !dbg !2300
  call void @llvm.dbg.value(metadata %struct.clause_t* %c, i64 0, metadata !2301, metadata !432), !dbg !2302
  %call = call fastcc i64 @clause_activity(%struct.clause_t* %c), !dbg !2303
  %cla_inc = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 8, !dbg !2304
  %tmp = load i64* %cla_inc, align 8, !dbg !2304
  %add = add i64 %call, %tmp, !dbg !2303
  call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !2305, metadata !432), !dbg !2306
  call fastcc void @clause_setactivity(%struct.clause_t* %c, i64 %add), !dbg !2307
  ret void, !dbg !2308
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @clause_setactivity(%struct.clause_t* %c, i64 %a) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.clause_t* %c, i64 0, metadata !2309, metadata !432), !dbg !2310
  call void @llvm.dbg.value(metadata i64 %a, i64 0, metadata !2311, metadata !432), !dbg !2312
  %size_learnt = getelementptr inbounds %struct.clause_t* %c, i32 0, i32 0, !dbg !2313
  %tmp = load i32* %size_learnt, align 4, !dbg !2313
  %shr = ashr i32 %tmp, 1, !dbg !2313
  %idxprom = sext i32 %shr to i64, !dbg !2314
  %lits = getelementptr inbounds %struct.clause_t* %c, i32 0, i32 1, !dbg !2314
  %arrayidx = getelementptr inbounds [0 x i32]* %lits, i32 0, i64 %idxprom, !dbg !2314
  %tmp1 = bitcast i32* %arrayidx to i64*, !dbg !2315
  store i64 %a, i64* %tmp1, align 8, !dbg !2316
  ret void, !dbg !2317
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @clause_activity(%struct.clause_t* %c) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.clause_t* %c, i64 0, metadata !2318, metadata !432), !dbg !2319
  %size_learnt = getelementptr inbounds %struct.clause_t* %c, i32 0, i32 0, !dbg !2320
  %tmp = load i32* %size_learnt, align 4, !dbg !2320
  %shr = ashr i32 %tmp, 1, !dbg !2320
  %idxprom = sext i32 %shr to i64, !dbg !2321
  %lits = getelementptr inbounds %struct.clause_t* %c, i32 0, i32 1, !dbg !2321
  %arrayidx = getelementptr inbounds [0 x i32]* %lits, i32 0, i64 %idxprom, !dbg !2321
  %tmp1 = bitcast i32* %arrayidx to i64*, !dbg !2322
  %tmp2 = load i64* %tmp1, align 8, !dbg !2323
  ret i64 %tmp2, !dbg !2324
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @veci_begin24(%struct.veci_t* %v) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.veci_t* %v, i64 0, metadata !2325, metadata !432), !dbg !2326
  %ptr = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 2, !dbg !2327
  %tmp = load i32** %ptr, align 8, !dbg !2327
  ret i32* %tmp, !dbg !2328
}

; Function Attrs: nounwind uwtable
define internal fastcc void @solver_analyze(%struct.solver_t* %s, %struct.clause_t* %c, %struct.veci_t* %learnt) #0 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !2329, metadata !432), !dbg !2330
  call void @llvm.dbg.value(metadata %struct.clause_t* %c, i64 0, metadata !2331, metadata !432), !dbg !2332
  call void @llvm.dbg.value(metadata %struct.veci_t* %learnt, i64 0, metadata !2333, metadata !432), !dbg !2334
  %trail1 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 16, !dbg !2335
  %tmp = load i32** %trail1, align 8, !dbg !2335
  call void @llvm.dbg.value(metadata i32* %tmp, i64 0, metadata !2336, metadata !432), !dbg !2337
  %tags2 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 18, !dbg !2338
  %tmp1 = load i8** %tags2, align 8, !dbg !2338
  call void @llvm.dbg.value(metadata i8* %tmp1, i64 0, metadata !2339, metadata !432), !dbg !2340
  %reasons3 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 14, !dbg !2341
  %tmp2 = load %struct.clause_t*** %reasons3, align 8, !dbg !2341
  call void @llvm.dbg.value(metadata %struct.clause_t** %tmp2, i64 0, metadata !2342, metadata !432), !dbg !2343
  %levels4 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 15, !dbg !2344
  %tmp3 = load i32** %levels4, align 8, !dbg !2344
  call void @llvm.dbg.value(metadata i32* %tmp3, i64 0, metadata !2345, metadata !432), !dbg !2346
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2347, metadata !432), !dbg !2348
  call void @llvm.dbg.value(metadata i32 -2, i64 0, metadata !2349, metadata !432), !dbg !2350
  %qtail = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 3, !dbg !2351
  %tmp4 = load i32* %qtail, align 4, !dbg !2351
  %sub = sub nsw i32 %tmp4, 1, !dbg !2351
  call void @llvm.dbg.value(metadata i32 %sub, i64 0, metadata !2352, metadata !432), !dbg !2353
  call fastcc void @veci_push12(%struct.veci_t* %learnt, i32 -2), !dbg !2354
  br label %do.body, !dbg !2355

do.body:                                          ; preds = %do.cond, %entry
  %ind.0 = phi i32 [ %sub, %entry ], [ %dec, %do.cond ]
  %p.0 = phi i32 [ -2, %entry ], [ %tmp18, %do.cond ]
  %cnt.0 = phi i32 [ 0, %entry ], [ %dec107, %do.cond ]
  %c.addr.0 = phi %struct.clause_t* [ %c, %entry ], [ %tmp19, %do.cond ]
  %cmp = icmp ne %struct.clause_t* %c.addr.0, null, !dbg !2356
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2356

cond.true:                                        ; preds = %do.body
  br label %cond.end, !dbg !2358

cond.false:                                       ; preds = %do.body
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 576, i8* getelementptr inbounds ([48 x i8]* @__PRETTY_FUNCTION__.solver_analyze, i32 0, i32 0)) #8, !dbg !2360
  unreachable, !dbg !2360

bb:                                               ; No predecessors!
  br label %cond.end, !dbg !2356

cond.end:                                         ; preds = %bb, %cond.true
  %call = call i32 @clause_is_lit(%struct.clause_t* %c.addr.0), !dbg !2362
  %tobool = icmp ne i32 %call, 0, !dbg !2364
  br i1 %tobool, label %if.then, label %if.else37, !dbg !2364

if.then:                                          ; preds = %cond.end
  %call5 = call i32 @clause_read_lit(%struct.clause_t* %c.addr.0), !dbg !2365
  call void @llvm.dbg.value(metadata i32 %call5, i64 0, metadata !2367, metadata !432), !dbg !2368
  %call6 = call fastcc i32 @lit_var(i32 %call5), !dbg !2369
  %cmp7 = icmp sge i32 %call6, 0, !dbg !2369
  br i1 %cmp7, label %land.lhs.true, label %cond.false11, !dbg !2369

land.lhs.true:                                    ; preds = %if.then
  %call8 = call fastcc i32 @lit_var(i32 %call5), !dbg !2370
  %size = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 0, !dbg !2370
  %tmp5 = load i32* %size, align 4, !dbg !2370
  %cmp9 = icmp slt i32 %call8, %tmp5, !dbg !2370
  br i1 %cmp9, label %cond.true10, label %cond.false11, !dbg !2370

cond.true10:                                      ; preds = %land.lhs.true
  br label %cond.end12, !dbg !2372

cond.false11:                                     ; preds = %land.lhs.true, %if.then
  call void @__assert_fail(i8* getelementptr inbounds ([40 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 580, i8* getelementptr inbounds ([48 x i8]* @__PRETTY_FUNCTION__.solver_analyze, i32 0, i32 0)) #8, !dbg !2374
  unreachable, !dbg !2374

bb6:                                              ; No predecessors!
  br label %cond.end12, !dbg !2369

cond.end12:                                       ; preds = %bb6, %cond.true10
  %call13 = call fastcc i32 @lit_var(i32 %call5), !dbg !2377
  %idxprom = sext i32 %call13 to i64, !dbg !2379
  %arrayidx = getelementptr inbounds i8* %tmp1, i64 %idxprom, !dbg !2379
  %tmp7 = load i8* %arrayidx, align 1, !dbg !2379
  %conv = sext i8 %tmp7 to i32, !dbg !2379
  %cmp14 = icmp eq i32 %conv, 0, !dbg !2379
  br i1 %cmp14, label %land.lhs.true16, label %if.end36, !dbg !2380

land.lhs.true16:                                  ; preds = %cond.end12
  %call17 = call fastcc i32 @lit_var(i32 %call5), !dbg !2381
  %idxprom18 = sext i32 %call17 to i64, !dbg !2382
  %arrayidx19 = getelementptr inbounds i32* %tmp3, i64 %idxprom18, !dbg !2382
  %tmp8 = load i32* %arrayidx19, align 4, !dbg !2382
  %cmp20 = icmp sgt i32 %tmp8, 0, !dbg !2382
  br i1 %cmp20, label %if.then22, label %if.end36, !dbg !2380

if.then22:                                        ; preds = %land.lhs.true16
  %call23 = call fastcc i32 @lit_var(i32 %call5), !dbg !2383
  %idxprom24 = sext i32 %call23 to i64, !dbg !2385
  %arrayidx25 = getelementptr inbounds i8* %tmp1, i64 %idxprom24, !dbg !2385
  store i8 1, i8* %arrayidx25, align 1, !dbg !2385
  %tagged26 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 19, !dbg !2386
  %call27 = call fastcc i32 @lit_var(i32 %call5), !dbg !2387
  call fastcc void @veci_push12(%struct.veci_t* %tagged26, i32 %call27), !dbg !2388
  %call28 = call fastcc i32 @lit_var(i32 %call5), !dbg !2389
  call fastcc void @act_var_bump(%struct.solver_t* %s, i32 %call28), !dbg !2390
  %call29 = call fastcc i32 @lit_var(i32 %call5), !dbg !2391
  %idxprom30 = sext i32 %call29 to i64, !dbg !2393
  %arrayidx31 = getelementptr inbounds i32* %tmp3, i64 %idxprom30, !dbg !2393
  %tmp9 = load i32* %arrayidx31, align 4, !dbg !2393
  %call32 = call fastcc i32 @solver_dlevel(%struct.solver_t* %s), !dbg !2394
  %cmp33 = icmp eq i32 %tmp9, %call32, !dbg !2393
  br i1 %cmp33, label %if.then35, label %if.else, !dbg !2395

if.then35:                                        ; preds = %if.then22
  %inc = add nsw i32 %cnt.0, 1, !dbg !2396
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !2347, metadata !432), !dbg !2348
  br label %if.end, !dbg !2396

if.else:                                          ; preds = %if.then22
  call fastcc void @veci_push12(%struct.veci_t* %learnt, i32 %call5), !dbg !2397
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then35
  %cnt.1 = phi i32 [ %inc, %if.then35 ], [ %cnt.0, %if.else ]
  br label %if.end36, !dbg !2398

if.end36:                                         ; preds = %if.end, %land.lhs.true16, %cond.end12
  %cnt.2 = phi i32 [ %cnt.1, %if.end ], [ %cnt.0, %land.lhs.true16 ], [ %cnt.0, %cond.end12 ]
  br label %if.end93, !dbg !2399

if.else37:                                        ; preds = %cond.end
  %call38 = call fastcc i32 @clause_learnt(%struct.clause_t* %c.addr.0), !dbg !2400
  %tobool39 = icmp ne i32 %call38, 0, !dbg !2403
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !2403

if.then40:                                        ; preds = %if.else37
  call fastcc void @act_clause_bump(%struct.solver_t* %s, %struct.clause_t* %c.addr.0), !dbg !2404
  br label %if.end41, !dbg !2404

if.end41:                                         ; preds = %if.then40, %if.else37
  %call42 = call fastcc i32* @clause_begin(%struct.clause_t* %c.addr.0), !dbg !2405
  call void @llvm.dbg.value(metadata i32* %call42, i64 0, metadata !2406, metadata !432), !dbg !2407
  %cmp43 = icmp eq i32 %p.0, -2, !dbg !2408
  %cond = select i1 %cmp43, i32 0, i32 1, !dbg !2408
  call void @llvm.dbg.value(metadata i32 %cond, i64 0, metadata !2410, metadata !432), !dbg !2411
  br label %for.cond, !dbg !2412

for.cond:                                         ; preds = %for.inc, %if.end41
  %cnt.3 = phi i32 [ %cnt.0, %if.end41 ], [ %cnt.5, %for.inc ]
  %j.0 = phi i32 [ %cond, %if.end41 ], [ %inc92, %for.inc ]
  %call45 = call fastcc i32 @clause_size(%struct.clause_t* %c.addr.0), !dbg !2413
  %cmp46 = icmp slt i32 %j.0, %call45, !dbg !2415
  br i1 %cmp46, label %for.body, label %for.end, !dbg !2416

for.body:                                         ; preds = %for.cond
  %idxprom49 = sext i32 %j.0 to i64, !dbg !2417
  %arrayidx50 = getelementptr inbounds i32* %call42, i64 %idxprom49, !dbg !2417
  %tmp10 = load i32* %arrayidx50, align 4, !dbg !2417
  call void @llvm.dbg.value(metadata i32 %tmp10, i64 0, metadata !2419, metadata !432), !dbg !2420
  %call51 = call fastcc i32 @lit_var(i32 %tmp10), !dbg !2421
  %cmp52 = icmp sge i32 %call51, 0, !dbg !2421
  br i1 %cmp52, label %land.lhs.true54, label %cond.false60, !dbg !2421

land.lhs.true54:                                  ; preds = %for.body
  %call55 = call fastcc i32 @lit_var(i32 %tmp10), !dbg !2422
  %size56 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 0, !dbg !2422
  %tmp11 = load i32* %size56, align 4, !dbg !2422
  %cmp57 = icmp slt i32 %call55, %tmp11, !dbg !2422
  br i1 %cmp57, label %cond.true59, label %cond.false60, !dbg !2422

cond.true59:                                      ; preds = %land.lhs.true54
  br label %cond.end61, !dbg !2424

cond.false60:                                     ; preds = %land.lhs.true54, %for.body
  call void @__assert_fail(i8* getelementptr inbounds ([40 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 599, i8* getelementptr inbounds ([48 x i8]* @__PRETTY_FUNCTION__.solver_analyze, i32 0, i32 0)) #8, !dbg !2426
  unreachable, !dbg !2426

bb12:                                             ; No predecessors!
  br label %cond.end61, !dbg !2421

cond.end61:                                       ; preds = %bb12, %cond.true59
  %call62 = call fastcc i32 @lit_var(i32 %tmp10), !dbg !2429
  %idxprom63 = sext i32 %call62 to i64, !dbg !2431
  %arrayidx64 = getelementptr inbounds i8* %tmp1, i64 %idxprom63, !dbg !2431
  %tmp13 = load i8* %arrayidx64, align 1, !dbg !2431
  %conv65 = sext i8 %tmp13 to i32, !dbg !2431
  %cmp66 = icmp eq i32 %conv65, 0, !dbg !2431
  br i1 %cmp66, label %land.lhs.true68, label %if.end91, !dbg !2432

land.lhs.true68:                                  ; preds = %cond.end61
  %call69 = call fastcc i32 @lit_var(i32 %tmp10), !dbg !2433
  %idxprom70 = sext i32 %call69 to i64, !dbg !2434
  %arrayidx71 = getelementptr inbounds i32* %tmp3, i64 %idxprom70, !dbg !2434
  %tmp14 = load i32* %arrayidx71, align 4, !dbg !2434
  %cmp72 = icmp sgt i32 %tmp14, 0, !dbg !2434
  br i1 %cmp72, label %if.then74, label %if.end91, !dbg !2432

if.then74:                                        ; preds = %land.lhs.true68
  %call75 = call fastcc i32 @lit_var(i32 %tmp10), !dbg !2435
  %idxprom76 = sext i32 %call75 to i64, !dbg !2437
  %arrayidx77 = getelementptr inbounds i8* %tmp1, i64 %idxprom76, !dbg !2437
  store i8 1, i8* %arrayidx77, align 1, !dbg !2437
  %tagged78 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 19, !dbg !2438
  %call79 = call fastcc i32 @lit_var(i32 %tmp10), !dbg !2439
  call fastcc void @veci_push12(%struct.veci_t* %tagged78, i32 %call79), !dbg !2440
  %call80 = call fastcc i32 @lit_var(i32 %tmp10), !dbg !2441
  call fastcc void @act_var_bump(%struct.solver_t* %s, i32 %call80), !dbg !2442
  %call81 = call fastcc i32 @lit_var(i32 %tmp10), !dbg !2443
  %idxprom82 = sext i32 %call81 to i64, !dbg !2445
  %arrayidx83 = getelementptr inbounds i32* %tmp3, i64 %idxprom82, !dbg !2445
  %tmp15 = load i32* %arrayidx83, align 4, !dbg !2445
  %call84 = call fastcc i32 @solver_dlevel(%struct.solver_t* %s), !dbg !2446
  %cmp85 = icmp eq i32 %tmp15, %call84, !dbg !2445
  br i1 %cmp85, label %if.then87, label %if.else89, !dbg !2447

if.then87:                                        ; preds = %if.then74
  %inc88 = add nsw i32 %cnt.3, 1, !dbg !2448
  call void @llvm.dbg.value(metadata i32 %inc88, i64 0, metadata !2347, metadata !432), !dbg !2348
  br label %if.end90, !dbg !2448

if.else89:                                        ; preds = %if.then74
  call fastcc void @veci_push12(%struct.veci_t* %learnt, i32 %tmp10), !dbg !2449
  br label %if.end90

if.end90:                                         ; preds = %if.else89, %if.then87
  %cnt.4 = phi i32 [ %inc88, %if.then87 ], [ %cnt.3, %if.else89 ]
  br label %if.end91, !dbg !2450

if.end91:                                         ; preds = %if.end90, %land.lhs.true68, %cond.end61
  %cnt.5 = phi i32 [ %cnt.4, %if.end90 ], [ %cnt.3, %land.lhs.true68 ], [ %cnt.3, %cond.end61 ]
  br label %for.inc, !dbg !2451

for.inc:                                          ; preds = %if.end91
  %inc92 = add nsw i32 %j.0, 1, !dbg !2452
  call void @llvm.dbg.value(metadata i32 %inc92, i64 0, metadata !2410, metadata !432), !dbg !2411
  br label %for.cond, !dbg !2453

for.end:                                          ; preds = %for.cond
  br label %if.end93

if.end93:                                         ; preds = %for.end, %if.end36
  %cnt.6 = phi i32 [ %cnt.2, %if.end36 ], [ %cnt.3, %for.end ]
  br label %while.cond, !dbg !2454

while.cond:                                       ; preds = %while.body, %if.end93
  %ind.1 = phi i32 [ %ind.0, %if.end93 ], [ %dec, %while.body ]
  %dec = add nsw i32 %ind.1, -1, !dbg !2455
  call void @llvm.dbg.value(metadata i32 %dec, i64 0, metadata !2352, metadata !432), !dbg !2353
  %idxprom94 = sext i32 %ind.1 to i64, !dbg !2457
  %arrayidx95 = getelementptr inbounds i32* %tmp, i64 %idxprom94, !dbg !2457
  %tmp16 = load i32* %arrayidx95, align 4, !dbg !2457
  %call96 = call fastcc i32 @lit_var(i32 %tmp16), !dbg !2458
  %idxprom97 = sext i32 %call96 to i64, !dbg !2459
  %arrayidx98 = getelementptr inbounds i8* %tmp1, i64 %idxprom97, !dbg !2459
  %tmp17 = load i8* %arrayidx98, align 1, !dbg !2459
  %conv99 = sext i8 %tmp17 to i32, !dbg !2459
  %cmp100 = icmp eq i32 %conv99, 0, !dbg !2459
  br i1 %cmp100, label %while.body, label %while.end, !dbg !2454

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !2460

while.end:                                        ; preds = %while.cond
  %idxprom102 = sext i32 %ind.1 to i64, !dbg !2461
  %arrayidx103 = getelementptr inbounds i32* %tmp, i64 %idxprom102, !dbg !2461
  %tmp18 = load i32* %arrayidx103, align 4, !dbg !2461
  call void @llvm.dbg.value(metadata i32 %tmp18, i64 0, metadata !2349, metadata !432), !dbg !2350
  %call104 = call fastcc i32 @lit_var(i32 %tmp18), !dbg !2462
  %idxprom105 = sext i32 %call104 to i64, !dbg !2463
  %arrayidx106 = getelementptr inbounds %struct.clause_t** %tmp2, i64 %idxprom105, !dbg !2463
  %tmp19 = load %struct.clause_t** %arrayidx106, align 8, !dbg !2463
  call void @llvm.dbg.value(metadata %struct.clause_t* %tmp19, i64 0, metadata !2331, metadata !432), !dbg !2332
  %dec107 = add nsw i32 %cnt.6, -1, !dbg !2464
  call void @llvm.dbg.value(metadata i32 %dec107, i64 0, metadata !2347, metadata !432), !dbg !2348
  br label %do.cond, !dbg !2465

do.cond:                                          ; preds = %while.end
  %cmp108 = icmp sgt i32 %dec107, 0, !dbg !2466
  br i1 %cmp108, label %do.body, label %do.end, !dbg !2465

do.end:                                           ; preds = %do.cond
  %call110 = call fastcc i32 @lit_neg13(i32 %tmp18), !dbg !2468
  %call111 = call fastcc i32* @veci_begin24(%struct.veci_t* %learnt), !dbg !2469
  store i32 %call110, i32* %call111, align 4, !dbg !2470
  %call112 = call fastcc i32* @veci_begin24(%struct.veci_t* %learnt), !dbg !2471
  call void @llvm.dbg.value(metadata i32* %call112, i64 0, metadata !2406, metadata !432), !dbg !2407
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2472, metadata !432), !dbg !2473
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2474, metadata !432), !dbg !2475
  br label %for.cond113, !dbg !2476

for.cond113:                                      ; preds = %for.inc123, %do.end
  %i.0 = phi i32 [ 1, %do.end ], [ %inc124, %for.inc123 ]
  %minl.0 = phi i32 [ 0, %do.end ], [ %or, %for.inc123 ]
  %call114 = call fastcc i32 @veci_size11(%struct.veci_t* %learnt), !dbg !2478
  %cmp115 = icmp slt i32 %i.0, %call114, !dbg !2480
  br i1 %cmp115, label %for.body117, label %for.end125, !dbg !2481

for.body117:                                      ; preds = %for.cond113
  %idxprom118 = sext i32 %i.0 to i64, !dbg !2482
  %arrayidx119 = getelementptr inbounds i32* %call112, i64 %idxprom118, !dbg !2482
  %tmp20 = load i32* %arrayidx119, align 4, !dbg !2482
  %call120 = call fastcc i32 @lit_var(i32 %tmp20), !dbg !2484
  %idxprom121 = sext i32 %call120 to i64, !dbg !2485
  %arrayidx122 = getelementptr inbounds i32* %tmp3, i64 %idxprom121, !dbg !2485
  %tmp21 = load i32* %arrayidx122, align 4, !dbg !2485
  call void @llvm.dbg.value(metadata i32 %tmp21, i64 0, metadata !2486, metadata !432), !dbg !2487
  %and = and i32 %tmp21, 31, !dbg !2488
  %shl = shl i32 1, %and, !dbg !2489
  %or = or i32 %minl.0, %shl, !dbg !2490
  call void @llvm.dbg.value(metadata i32 %or, i64 0, metadata !2472, metadata !432), !dbg !2473
  br label %for.inc123, !dbg !2491

for.inc123:                                       ; preds = %for.body117
  %inc124 = add nsw i32 %i.0, 1, !dbg !2492
  call void @llvm.dbg.value(metadata i32 %inc124, i64 0, metadata !2474, metadata !432), !dbg !2475
  br label %for.cond113, !dbg !2493

for.end125:                                       ; preds = %for.cond113
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2410, metadata !432), !dbg !2411
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2474, metadata !432), !dbg !2475
  br label %for.cond126, !dbg !2494

for.cond126:                                      ; preds = %for.inc149, %for.end125
  %i.1 = phi i32 [ 1, %for.end125 ], [ %inc150, %for.inc149 ]
  %j.1 = phi i32 [ 1, %for.end125 ], [ %j.2, %for.inc149 ]
  %call127 = call fastcc i32 @veci_size11(%struct.veci_t* %learnt), !dbg !2496
  %cmp128 = icmp slt i32 %i.1, %call127, !dbg !2498
  br i1 %cmp128, label %for.body130, label %for.end151, !dbg !2499

for.body130:                                      ; preds = %for.cond126
  %idxprom131 = sext i32 %i.1 to i64, !dbg !2500
  %arrayidx132 = getelementptr inbounds i32* %call112, i64 %idxprom131, !dbg !2500
  %tmp22 = load i32* %arrayidx132, align 4, !dbg !2500
  %call133 = call fastcc i32 @lit_var(i32 %tmp22), !dbg !2503
  %idxprom134 = sext i32 %call133 to i64, !dbg !2504
  %arrayidx135 = getelementptr inbounds %struct.clause_t** %tmp2, i64 %idxprom134, !dbg !2504
  %tmp23 = load %struct.clause_t** %arrayidx135, align 8, !dbg !2504
  %cmp136 = icmp eq %struct.clause_t* %tmp23, null, !dbg !2504
  br i1 %cmp136, label %if.then142, label %lor.lhs.false, !dbg !2505

lor.lhs.false:                                    ; preds = %for.body130
  %idxprom138 = sext i32 %i.1 to i64, !dbg !2506
  %arrayidx139 = getelementptr inbounds i32* %call112, i64 %idxprom138, !dbg !2506
  %tmp24 = load i32* %arrayidx139, align 4, !dbg !2506
  %call140 = call fastcc i32 @solver_lit_removable(%struct.solver_t* %s, i32 %tmp24, i32 %minl.0), !dbg !2507
  %tobool141 = icmp ne i32 %call140, 0, !dbg !2505
  br i1 %tobool141, label %if.end148, label %if.then142, !dbg !2505

if.then142:                                       ; preds = %lor.lhs.false, %for.body130
  %idxprom143 = sext i32 %i.1 to i64, !dbg !2508
  %arrayidx144 = getelementptr inbounds i32* %call112, i64 %idxprom143, !dbg !2508
  %tmp25 = load i32* %arrayidx144, align 4, !dbg !2508
  %inc145 = add nsw i32 %j.1, 1, !dbg !2509
  call void @llvm.dbg.value(metadata i32 %inc145, i64 0, metadata !2410, metadata !432), !dbg !2411
  %idxprom146 = sext i32 %j.1 to i64, !dbg !2510
  %arrayidx147 = getelementptr inbounds i32* %call112, i64 %idxprom146, !dbg !2510
  store i32 %tmp25, i32* %arrayidx147, align 4, !dbg !2510
  br label %if.end148, !dbg !2510

if.end148:                                        ; preds = %if.then142, %lor.lhs.false
  %j.2 = phi i32 [ %inc145, %if.then142 ], [ %j.1, %lor.lhs.false ]
  br label %for.inc149, !dbg !2511

for.inc149:                                       ; preds = %if.end148
  %inc150 = add nsw i32 %i.1, 1, !dbg !2512
  call void @llvm.dbg.value(metadata i32 %inc150, i64 0, metadata !2474, metadata !432), !dbg !2475
  br label %for.cond126, !dbg !2513

for.end151:                                       ; preds = %for.cond126
  %call152 = call fastcc i32 @veci_size11(%struct.veci_t* %learnt), !dbg !2514
  %conv153 = sext i32 %call152 to i64, !dbg !2514
  %stats = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 28, !dbg !2515
  %max_literals = getelementptr inbounds %struct.stats_t* %stats, i32 0, i32 9, !dbg !2515
  %tmp26 = load i64* %max_literals, align 8, !dbg !2515
  %add154 = add nsw i64 %tmp26, %conv153, !dbg !2515
  store i64 %add154, i64* %max_literals, align 8, !dbg !2515
  call fastcc void @veci_resize25(%struct.veci_t* %learnt, i32 %j.1), !dbg !2516
  %conv155 = sext i32 %j.1 to i64, !dbg !2517
  %stats156 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 28, !dbg !2518
  %tot_literals = getelementptr inbounds %struct.stats_t* %stats156, i32 0, i32 10, !dbg !2518
  %tmp27 = load i64* %tot_literals, align 8, !dbg !2518
  %add157 = add nsw i64 %tmp27, %conv155, !dbg !2518
  store i64 %add157, i64* %tot_literals, align 8, !dbg !2518
  %tagged158 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 19, !dbg !2519
  %call159 = call fastcc i32* @veci_begin24(%struct.veci_t* %tagged158), !dbg !2520
  call void @llvm.dbg.value(metadata i32* %call159, i64 0, metadata !2521, metadata !432), !dbg !2522
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2474, metadata !432), !dbg !2475
  br label %for.cond160, !dbg !2523

for.cond160:                                      ; preds = %for.inc170, %for.end151
  %i.2 = phi i32 [ 0, %for.end151 ], [ %inc171, %for.inc170 ]
  %tagged161 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 19, !dbg !2525
  %call162 = call fastcc i32 @veci_size11(%struct.veci_t* %tagged161), !dbg !2527
  %cmp163 = icmp slt i32 %i.2, %call162, !dbg !2528
  br i1 %cmp163, label %for.body165, label %for.end172, !dbg !2529

for.body165:                                      ; preds = %for.cond160
  %idxprom166 = sext i32 %i.2 to i64, !dbg !2530
  %arrayidx167 = getelementptr inbounds i32* %call159, i64 %idxprom166, !dbg !2530
  %tmp28 = load i32* %arrayidx167, align 4, !dbg !2530
  %idxprom168 = sext i32 %tmp28 to i64, !dbg !2531
  %arrayidx169 = getelementptr inbounds i8* %tmp1, i64 %idxprom168, !dbg !2531
  store i8 0, i8* %arrayidx169, align 1, !dbg !2531
  br label %for.inc170, !dbg !2531

for.inc170:                                       ; preds = %for.body165
  %inc171 = add nsw i32 %i.2, 1, !dbg !2532
  call void @llvm.dbg.value(metadata i32 %inc171, i64 0, metadata !2474, metadata !432), !dbg !2475
  br label %for.cond160, !dbg !2533

for.end172:                                       ; preds = %for.cond160
  %tagged173 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 19, !dbg !2534
  call fastcc void @veci_resize25(%struct.veci_t* %tagged173, i32 0), !dbg !2535
  %call174 = call fastcc i32 @veci_size11(%struct.veci_t* %learnt), !dbg !2536
  %cmp175 = icmp sgt i32 %call174, 1, !dbg !2536
  br i1 %cmp175, label %if.then177, label %if.end210, !dbg !2538

if.then177:                                       ; preds = %for.end172
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2539, metadata !432), !dbg !2541
  %arrayidx178 = getelementptr inbounds i32* %call112, i64 1, !dbg !2542
  %tmp29 = load i32* %arrayidx178, align 4, !dbg !2542
  %call179 = call fastcc i32 @lit_var(i32 %tmp29), !dbg !2543
  %idxprom180 = sext i32 %call179 to i64, !dbg !2544
  %arrayidx181 = getelementptr inbounds i32* %tmp3, i64 %idxprom180, !dbg !2544
  %tmp30 = load i32* %arrayidx181, align 4, !dbg !2544
  call void @llvm.dbg.value(metadata i32 %tmp30, i64 0, metadata !2545, metadata !432), !dbg !2546
  call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !2474, metadata !432), !dbg !2475
  br label %for.cond182, !dbg !2547

for.cond182:                                      ; preds = %for.inc201, %if.then177
  %i.3 = phi i32 [ 2, %if.then177 ], [ %inc202, %for.inc201 ]
  %max_i.0 = phi i32 [ 1, %if.then177 ], [ %max_i.1, %for.inc201 ]
  %max.0 = phi i32 [ %tmp30, %if.then177 ], [ %max.1, %for.inc201 ]
  %call183 = call fastcc i32 @veci_size11(%struct.veci_t* %learnt), !dbg !2549
  %cmp184 = icmp slt i32 %i.3, %call183, !dbg !2551
  br i1 %cmp184, label %for.body186, label %for.end203, !dbg !2552

for.body186:                                      ; preds = %for.cond182
  %idxprom187 = sext i32 %i.3 to i64, !dbg !2553
  %arrayidx188 = getelementptr inbounds i32* %call112, i64 %idxprom187, !dbg !2553
  %tmp31 = load i32* %arrayidx188, align 4, !dbg !2553
  %call189 = call fastcc i32 @lit_var(i32 %tmp31), !dbg !2555
  %idxprom190 = sext i32 %call189 to i64, !dbg !2556
  %arrayidx191 = getelementptr inbounds i32* %tmp3, i64 %idxprom190, !dbg !2556
  %tmp32 = load i32* %arrayidx191, align 4, !dbg !2556
  %cmp192 = icmp sgt i32 %tmp32, %max.0, !dbg !2556
  br i1 %cmp192, label %if.then194, label %if.end200, !dbg !2557

if.then194:                                       ; preds = %for.body186
  %idxprom195 = sext i32 %i.3 to i64, !dbg !2558
  %arrayidx196 = getelementptr inbounds i32* %call112, i64 %idxprom195, !dbg !2558
  %tmp33 = load i32* %arrayidx196, align 4, !dbg !2558
  %call197 = call fastcc i32 @lit_var(i32 %tmp33), !dbg !2560
  %idxprom198 = sext i32 %call197 to i64, !dbg !2561
  %arrayidx199 = getelementptr inbounds i32* %tmp3, i64 %idxprom198, !dbg !2561
  %tmp34 = load i32* %arrayidx199, align 4, !dbg !2561
  call void @llvm.dbg.value(metadata i32 %tmp34, i64 0, metadata !2545, metadata !432), !dbg !2546
  call void @llvm.dbg.value(metadata i32 %i.3, i64 0, metadata !2539, metadata !432), !dbg !2541
  br label %if.end200, !dbg !2562

if.end200:                                        ; preds = %if.then194, %for.body186
  %max_i.1 = phi i32 [ %i.3, %if.then194 ], [ %max_i.0, %for.body186 ]
  %max.1 = phi i32 [ %tmp34, %if.then194 ], [ %max.0, %for.body186 ]
  br label %for.inc201, !dbg !2563

for.inc201:                                       ; preds = %if.end200
  %inc202 = add nsw i32 %i.3, 1, !dbg !2565
  call void @llvm.dbg.value(metadata i32 %inc202, i64 0, metadata !2474, metadata !432), !dbg !2475
  br label %for.cond182, !dbg !2566

for.end203:                                       ; preds = %for.cond182
  %arrayidx204 = getelementptr inbounds i32* %call112, i64 1, !dbg !2567
  %tmp35 = load i32* %arrayidx204, align 4, !dbg !2567
  call void @llvm.dbg.value(metadata i32 %tmp35, i64 0, metadata !2568, metadata !432), !dbg !2569
  %idxprom205 = sext i32 %max_i.0 to i64, !dbg !2570
  %arrayidx206 = getelementptr inbounds i32* %call112, i64 %idxprom205, !dbg !2570
  %tmp36 = load i32* %arrayidx206, align 4, !dbg !2570
  %arrayidx207 = getelementptr inbounds i32* %call112, i64 1, !dbg !2571
  store i32 %tmp36, i32* %arrayidx207, align 4, !dbg !2571
  %idxprom208 = sext i32 %max_i.0 to i64, !dbg !2572
  %arrayidx209 = getelementptr inbounds i32* %call112, i64 %idxprom208, !dbg !2572
  store i32 %tmp35, i32* %arrayidx209, align 4, !dbg !2572
  br label %if.end210, !dbg !2573

if.end210:                                        ; preds = %for.end203, %for.end172
  ret void, !dbg !2574
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @solver_lit_removable(%struct.solver_t* %s, i32 %l, i32 %minl) #0 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !2575, metadata !432), !dbg !2576
  call void @llvm.dbg.value(metadata i32 %l, i64 0, metadata !2577, metadata !432), !dbg !2578
  call void @llvm.dbg.value(metadata i32 %minl, i64 0, metadata !2579, metadata !432), !dbg !2580
  %tags1 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 18, !dbg !2581
  %tmp = load i8** %tags1, align 8, !dbg !2581
  call void @llvm.dbg.value(metadata i8* %tmp, i64 0, metadata !2582, metadata !432), !dbg !2583
  %reasons2 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 14, !dbg !2584
  %tmp1 = load %struct.clause_t*** %reasons2, align 8, !dbg !2584
  call void @llvm.dbg.value(metadata %struct.clause_t** %tmp1, i64 0, metadata !2585, metadata !432), !dbg !2586
  %levels3 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 15, !dbg !2587
  %tmp2 = load i32** %levels3, align 8, !dbg !2587
  call void @llvm.dbg.value(metadata i32* %tmp2, i64 0, metadata !2588, metadata !432), !dbg !2589
  %tagged = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 19, !dbg !2590
  %call = call fastcc i32 @veci_size11(%struct.veci_t* %tagged), !dbg !2591
  call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !2592, metadata !432), !dbg !2593
  %call4 = call fastcc i32 @lit_var(i32 %l), !dbg !2594
  %cmp = icmp sge i32 %call4, 0, !dbg !2594
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !2594

land.lhs.true:                                    ; preds = %entry
  %call5 = call fastcc i32 @lit_var(i32 %l), !dbg !2595
  %size = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 0, !dbg !2595
  %tmp3 = load i32* %size, align 4, !dbg !2595
  %cmp6 = icmp slt i32 %call5, %tmp3, !dbg !2595
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !2595

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end, !dbg !2597

cond.false:                                       ; preds = %land.lhs.true, %entry
  call void @__assert_fail(i8* getelementptr inbounds ([40 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 504, i8* getelementptr inbounds ([46 x i8]* @__PRETTY_FUNCTION__.solver_lit_removable, i32 0, i32 0)) #8, !dbg !2599
  unreachable, !dbg !2599

bb:                                               ; No predecessors!
  br label %cond.end, !dbg !2594

cond.end:                                         ; preds = %bb, %cond.true
  %call7 = call fastcc i32 @lit_var(i32 %l), !dbg !2602
  %idxprom = sext i32 %call7 to i64, !dbg !2602
  %arrayidx = getelementptr inbounds %struct.clause_t** %tmp1, i64 %idxprom, !dbg !2602
  %tmp4 = load %struct.clause_t** %arrayidx, align 8, !dbg !2602
  %cmp8 = icmp ne %struct.clause_t* %tmp4, null, !dbg !2602
  br i1 %cmp8, label %cond.true9, label %cond.false10, !dbg !2602

cond.true9:                                       ; preds = %cond.end
  br label %cond.end11, !dbg !2603

cond.false10:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 505, i8* getelementptr inbounds ([46 x i8]* @__PRETTY_FUNCTION__.solver_lit_removable, i32 0, i32 0)) #8, !dbg !2604
  unreachable, !dbg !2604

bb5:                                              ; No predecessors!
  br label %cond.end11, !dbg !2602

cond.end11:                                       ; preds = %bb5, %cond.true9
  %stack = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 20, !dbg !2605
  call fastcc void @veci_resize25(%struct.veci_t* %stack, i32 0), !dbg !2606
  %stack12 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 20, !dbg !2607
  %call13 = call fastcc i32 @lit_var(i32 %l), !dbg !2608
  call fastcc void @veci_push12(%struct.veci_t* %stack12, i32 %call13), !dbg !2609
  br label %while.cond, !dbg !2610

while.cond:                                       ; preds = %if.end148, %cond.end11
  %stack14 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 20, !dbg !2611
  %call15 = call fastcc i32 @veci_size11(%struct.veci_t* %stack14), !dbg !2612
  %cmp16 = icmp sgt i32 %call15, 0, !dbg !2612
  br i1 %cmp16, label %while.body, label %while.end, !dbg !2610

while.body:                                       ; preds = %while.cond
  %stack17 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 20, !dbg !2613
  %call18 = call fastcc i32 @veci_size11(%struct.veci_t* %stack17), !dbg !2615
  %sub = sub nsw i32 %call18, 1, !dbg !2615
  %idxprom19 = sext i32 %sub to i64, !dbg !2616
  %stack20 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 20, !dbg !2617
  %call21 = call fastcc i32* @veci_begin24(%struct.veci_t* %stack20), !dbg !2616
  %arrayidx22 = getelementptr inbounds i32* %call21, i64 %idxprom19, !dbg !2616
  %tmp6 = load i32* %arrayidx22, align 4, !dbg !2616
  call void @llvm.dbg.value(metadata i32 %tmp6, i64 0, metadata !2618, metadata !432), !dbg !2619
  %cmp23 = icmp sge i32 %tmp6, 0, !dbg !2620
  br i1 %cmp23, label %land.lhs.true24, label %cond.false28, !dbg !2620

land.lhs.true24:                                  ; preds = %while.body
  %size25 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 0, !dbg !2621
  %tmp7 = load i32* %size25, align 4, !dbg !2621
  %cmp26 = icmp slt i32 %tmp6, %tmp7, !dbg !2621
  br i1 %cmp26, label %cond.true27, label %cond.false28, !dbg !2621

cond.true27:                                      ; preds = %land.lhs.true24
  br label %cond.end29, !dbg !2623

cond.false28:                                     ; preds = %land.lhs.true24, %while.body
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8]* @.str1426, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 512, i8* getelementptr inbounds ([46 x i8]* @__PRETTY_FUNCTION__.solver_lit_removable, i32 0, i32 0)) #8, !dbg !2625
  unreachable, !dbg !2625

bb8:                                              ; No predecessors!
  br label %cond.end29, !dbg !2620

cond.end29:                                       ; preds = %bb8, %cond.true27
  %stack30 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 20, !dbg !2628
  %stack31 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 20, !dbg !2629
  %call32 = call fastcc i32 @veci_size11(%struct.veci_t* %stack31), !dbg !2630
  %sub33 = sub nsw i32 %call32, 1, !dbg !2630
  call fastcc void @veci_resize25(%struct.veci_t* %stack30, i32 %sub33), !dbg !2631
  %idxprom34 = sext i32 %tmp6 to i64, !dbg !2632
  %arrayidx35 = getelementptr inbounds %struct.clause_t** %tmp1, i64 %idxprom34, !dbg !2632
  %tmp9 = load %struct.clause_t** %arrayidx35, align 8, !dbg !2632
  %cmp36 = icmp ne %struct.clause_t* %tmp9, null, !dbg !2632
  br i1 %cmp36, label %cond.true37, label %cond.false38, !dbg !2632

cond.true37:                                      ; preds = %cond.end29
  br label %cond.end39, !dbg !2633

cond.false38:                                     ; preds = %cond.end29
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 514, i8* getelementptr inbounds ([46 x i8]* @__PRETTY_FUNCTION__.solver_lit_removable, i32 0, i32 0)) #8, !dbg !2634
  unreachable, !dbg !2634

bb10:                                             ; No predecessors!
  br label %cond.end39, !dbg !2632

cond.end39:                                       ; preds = %bb10, %cond.true37
  %idxprom40 = sext i32 %tmp6 to i64, !dbg !2635
  %arrayidx41 = getelementptr inbounds %struct.clause_t** %tmp1, i64 %idxprom40, !dbg !2635
  %tmp11 = load %struct.clause_t** %arrayidx41, align 8, !dbg !2635
  call void @llvm.dbg.value(metadata %struct.clause_t* %tmp11, i64 0, metadata !2636, metadata !432), !dbg !2637
  %call42 = call i32 @clause_is_lit(%struct.clause_t* %tmp11), !dbg !2638
  %tobool = icmp ne i32 %call42, 0, !dbg !2640
  br i1 %tobool, label %if.then, label %if.else83, !dbg !2640

if.then:                                          ; preds = %cond.end39
  %call44 = call i32 @clause_read_lit(%struct.clause_t* %tmp11), !dbg !2641
  %call45 = call fastcc i32 @lit_var(i32 %call44), !dbg !2643
  call void @llvm.dbg.value(metadata i32 %call45, i64 0, metadata !2644, metadata !432), !dbg !2645
  %idxprom46 = sext i32 %call45 to i64, !dbg !2646
  %arrayidx47 = getelementptr inbounds i8* %tmp, i64 %idxprom46, !dbg !2646
  %tmp12 = load i8* %arrayidx47, align 1, !dbg !2646
  %conv = sext i8 %tmp12 to i32, !dbg !2646
  %cmp48 = icmp eq i32 %conv, 0, !dbg !2646
  br i1 %cmp48, label %land.lhs.true50, label %if.end82, !dbg !2648

land.lhs.true50:                                  ; preds = %if.then
  %idxprom51 = sext i32 %call45 to i64, !dbg !2649
  %arrayidx52 = getelementptr inbounds i32* %tmp2, i64 %idxprom51, !dbg !2649
  %tmp13 = load i32* %arrayidx52, align 4, !dbg !2649
  %cmp53 = icmp ne i32 %tmp13, 0, !dbg !2649
  br i1 %cmp53, label %if.then55, label %if.end82, !dbg !2648

if.then55:                                        ; preds = %land.lhs.true50
  %idxprom56 = sext i32 %call45 to i64, !dbg !2650
  %arrayidx57 = getelementptr inbounds %struct.clause_t** %tmp1, i64 %idxprom56, !dbg !2650
  %tmp14 = load %struct.clause_t** %arrayidx57, align 8, !dbg !2650
  %cmp58 = icmp ne %struct.clause_t* %tmp14, null, !dbg !2650
  br i1 %cmp58, label %land.lhs.true60, label %if.else, !dbg !2653

land.lhs.true60:                                  ; preds = %if.then55
  %idxprom61 = sext i32 %call45 to i64, !dbg !2654
  %arrayidx62 = getelementptr inbounds i32* %tmp2, i64 %idxprom61, !dbg !2654
  %tmp15 = load i32* %arrayidx62, align 4, !dbg !2654
  %and = and i32 %tmp15, 31, !dbg !2654
  %shl = shl i32 1, %and, !dbg !2655
  %and63 = and i32 %shl, %minl, !dbg !2656
  %tobool64 = icmp ne i32 %and63, 0, !dbg !2653
  br i1 %tobool64, label %if.then65, label %if.else, !dbg !2653

if.then65:                                        ; preds = %land.lhs.true60
  %stack66 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 20, !dbg !2657
  call fastcc void @veci_push12(%struct.veci_t* %stack66, i32 %call45), !dbg !2659
  %idxprom67 = sext i32 %call45 to i64, !dbg !2660
  %arrayidx68 = getelementptr inbounds i8* %tmp, i64 %idxprom67, !dbg !2660
  store i8 1, i8* %arrayidx68, align 1, !dbg !2660
  %tagged69 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 19, !dbg !2661
  call fastcc void @veci_push12(%struct.veci_t* %tagged69, i32 %call45), !dbg !2662
  br label %if.end, !dbg !2663

if.else:                                          ; preds = %land.lhs.true60, %if.then55
  %tagged71 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 19, !dbg !2664
  %call72 = call fastcc i32* @veci_begin24(%struct.veci_t* %tagged71), !dbg !2666
  call void @llvm.dbg.value(metadata i32* %call72, i64 0, metadata !2667, metadata !432), !dbg !2668
  call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !2669, metadata !432), !dbg !2670
  br label %for.cond, !dbg !2671

for.cond:                                         ; preds = %for.inc, %if.else
  %j.0 = phi i32 [ %call, %if.else ], [ %inc, %for.inc ]
  %tagged73 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 19, !dbg !2673
  %call74 = call fastcc i32 @veci_size11(%struct.veci_t* %tagged73), !dbg !2675
  %cmp75 = icmp slt i32 %j.0, %call74, !dbg !2676
  br i1 %cmp75, label %for.body, label %for.end, !dbg !2677

for.body:                                         ; preds = %for.cond
  %idxprom77 = sext i32 %j.0 to i64, !dbg !2678
  %arrayidx78 = getelementptr inbounds i32* %call72, i64 %idxprom77, !dbg !2678
  %tmp16 = load i32* %arrayidx78, align 4, !dbg !2678
  %idxprom79 = sext i32 %tmp16 to i64, !dbg !2679
  %arrayidx80 = getelementptr inbounds i8* %tmp, i64 %idxprom79, !dbg !2679
  store i8 0, i8* %arrayidx80, align 1, !dbg !2679
  br label %for.inc, !dbg !2679

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %j.0, 1, !dbg !2680
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !2669, metadata !432), !dbg !2670
  br label %for.cond, !dbg !2681

for.end:                                          ; preds = %for.cond
  %tagged81 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 19, !dbg !2682
  call fastcc void @veci_resize25(%struct.veci_t* %tagged81, i32 %call), !dbg !2683
  br label %return, !dbg !2684

if.end:                                           ; preds = %if.then65
  br label %if.end82, !dbg !2685

if.end82:                                         ; preds = %if.end, %land.lhs.true50, %if.then
  br label %if.end148, !dbg !2686

if.else83:                                        ; preds = %cond.end39
  %call84 = call fastcc i32* @clause_begin(%struct.clause_t* %tmp11), !dbg !2687
  call void @llvm.dbg.value(metadata i32* %call84, i64 0, metadata !2689, metadata !432), !dbg !2690
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !2691, metadata !432), !dbg !2692
  br label %for.cond86, !dbg !2693

for.cond86:                                       ; preds = %for.inc145, %if.else83
  %i.0 = phi i32 [ 1, %if.else83 ], [ %inc146, %for.inc145 ]
  %call87 = call fastcc i32 @clause_size(%struct.clause_t* %tmp11), !dbg !2695
  %cmp88 = icmp slt i32 %i.0, %call87, !dbg !2697
  br i1 %cmp88, label %for.body90, label %for.end147, !dbg !2698

for.body90:                                       ; preds = %for.cond86
  %idxprom92 = sext i32 %i.0 to i64, !dbg !2699
  %arrayidx93 = getelementptr inbounds i32* %call84, i64 %idxprom92, !dbg !2699
  %tmp17 = load i32* %arrayidx93, align 4, !dbg !2699
  %call94 = call fastcc i32 @lit_var(i32 %tmp17), !dbg !2701
  call void @llvm.dbg.value(metadata i32 %call94, i64 0, metadata !2702, metadata !432), !dbg !2703
  %idxprom95 = sext i32 %call94 to i64, !dbg !2704
  %arrayidx96 = getelementptr inbounds i8* %tmp, i64 %idxprom95, !dbg !2704
  %tmp18 = load i8* %arrayidx96, align 1, !dbg !2704
  %conv97 = sext i8 %tmp18 to i32, !dbg !2704
  %cmp98 = icmp eq i32 %conv97, 0, !dbg !2704
  br i1 %cmp98, label %land.lhs.true100, label %if.end144, !dbg !2706

land.lhs.true100:                                 ; preds = %for.body90
  %idxprom101 = sext i32 %call94 to i64, !dbg !2707
  %arrayidx102 = getelementptr inbounds i32* %tmp2, i64 %idxprom101, !dbg !2707
  %tmp19 = load i32* %arrayidx102, align 4, !dbg !2707
  %cmp103 = icmp ne i32 %tmp19, 0, !dbg !2707
  br i1 %cmp103, label %if.then105, label %if.end144, !dbg !2706

if.then105:                                       ; preds = %land.lhs.true100
  %idxprom106 = sext i32 %call94 to i64, !dbg !2708
  %arrayidx107 = getelementptr inbounds %struct.clause_t** %tmp1, i64 %idxprom106, !dbg !2708
  %tmp20 = load %struct.clause_t** %arrayidx107, align 8, !dbg !2708
  %cmp108 = icmp ne %struct.clause_t* %tmp20, null, !dbg !2708
  br i1 %cmp108, label %land.lhs.true110, label %if.else125, !dbg !2711

land.lhs.true110:                                 ; preds = %if.then105
  %idxprom111 = sext i32 %call94 to i64, !dbg !2712
  %arrayidx112 = getelementptr inbounds i32* %tmp2, i64 %idxprom111, !dbg !2712
  %tmp21 = load i32* %arrayidx112, align 4, !dbg !2712
  %and113 = and i32 %tmp21, 31, !dbg !2712
  %shl114 = shl i32 1, %and113, !dbg !2713
  %and115 = and i32 %shl114, %minl, !dbg !2714
  %tobool116 = icmp ne i32 %and115, 0, !dbg !2711
  br i1 %tobool116, label %if.then117, label %if.else125, !dbg !2711

if.then117:                                       ; preds = %land.lhs.true110
  %stack118 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 20, !dbg !2715
  %idxprom119 = sext i32 %i.0 to i64, !dbg !2717
  %arrayidx120 = getelementptr inbounds i32* %call84, i64 %idxprom119, !dbg !2717
  %tmp22 = load i32* %arrayidx120, align 4, !dbg !2717
  %call121 = call fastcc i32 @lit_var(i32 %tmp22), !dbg !2718
  call fastcc void @veci_push12(%struct.veci_t* %stack118, i32 %call121), !dbg !2719
  %idxprom122 = sext i32 %call94 to i64, !dbg !2720
  %arrayidx123 = getelementptr inbounds i8* %tmp, i64 %idxprom122, !dbg !2720
  store i8 1, i8* %arrayidx123, align 1, !dbg !2720
  %tagged124 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 19, !dbg !2721
  call fastcc void @veci_push12(%struct.veci_t* %tagged124, i32 %call94), !dbg !2722
  br label %if.end143, !dbg !2723

if.else125:                                       ; preds = %land.lhs.true110, %if.then105
  %tagged127 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 19, !dbg !2724
  %call128 = call fastcc i32* @veci_begin24(%struct.veci_t* %tagged127), !dbg !2726
  call void @llvm.dbg.value(metadata i32* %call128, i64 0, metadata !2727, metadata !432), !dbg !2728
  call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !2729, metadata !432), !dbg !2730
  br label %for.cond129, !dbg !2731

for.cond129:                                      ; preds = %for.inc139, %if.else125
  %j85.0 = phi i32 [ %call, %if.else125 ], [ %inc140, %for.inc139 ]
  %tagged130 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 19, !dbg !2733
  %call131 = call fastcc i32 @veci_size11(%struct.veci_t* %tagged130), !dbg !2735
  %cmp132 = icmp slt i32 %j85.0, %call131, !dbg !2736
  br i1 %cmp132, label %for.body134, label %for.end141, !dbg !2737

for.body134:                                      ; preds = %for.cond129
  %idxprom135 = sext i32 %j85.0 to i64, !dbg !2738
  %arrayidx136 = getelementptr inbounds i32* %call128, i64 %idxprom135, !dbg !2738
  %tmp23 = load i32* %arrayidx136, align 4, !dbg !2738
  %idxprom137 = sext i32 %tmp23 to i64, !dbg !2739
  %arrayidx138 = getelementptr inbounds i8* %tmp, i64 %idxprom137, !dbg !2739
  store i8 0, i8* %arrayidx138, align 1, !dbg !2739
  br label %for.inc139, !dbg !2739

for.inc139:                                       ; preds = %for.body134
  %inc140 = add nsw i32 %j85.0, 1, !dbg !2740
  call void @llvm.dbg.value(metadata i32 %inc140, i64 0, metadata !2729, metadata !432), !dbg !2730
  br label %for.cond129, !dbg !2741

for.end141:                                       ; preds = %for.cond129
  %tagged142 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 19, !dbg !2742
  call fastcc void @veci_resize25(%struct.veci_t* %tagged142, i32 %call), !dbg !2743
  br label %return, !dbg !2744

if.end143:                                        ; preds = %if.then117
  br label %if.end144, !dbg !2745

if.end144:                                        ; preds = %if.end143, %land.lhs.true100, %for.body90
  br label %for.inc145, !dbg !2746

for.inc145:                                       ; preds = %if.end144
  %inc146 = add nsw i32 %i.0, 1, !dbg !2747
  call void @llvm.dbg.value(metadata i32 %inc146, i64 0, metadata !2691, metadata !432), !dbg !2692
  br label %for.cond86, !dbg !2748

for.end147:                                       ; preds = %for.cond86
  br label %if.end148

if.end148:                                        ; preds = %for.end147, %if.end82
  br label %while.cond, !dbg !2610

while.end:                                        ; preds = %while.cond
  br label %return, !dbg !2749

return:                                           ; preds = %while.end, %for.end141, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ 0, %for.end141 ], [ 1, %while.end ]
  ret i32 %retval.0, !dbg !2750
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @clause_learnt(%struct.clause_t* %c) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.clause_t* %c, i64 0, metadata !2751, metadata !432), !dbg !2752
  %size_learnt = getelementptr inbounds %struct.clause_t* %c, i32 0, i32 0, !dbg !2753
  %tmp = load i32* %size_learnt, align 4, !dbg !2753
  %and = and i32 %tmp, 1, !dbg !2753
  ret i32 %and, !dbg !2754
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @act_var_bump(%struct.solver_t* %s, i32 %v) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !2755, metadata !432), !dbg !2756
  call void @llvm.dbg.value(metadata i32 %v, i64 0, metadata !2757, metadata !432), !dbg !2758
  %idxprom = sext i32 %v to i64, !dbg !2759
  %orderpos = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 13, !dbg !2759
  %tmp = load i32** %orderpos, align 8, !dbg !2759
  %arrayidx = getelementptr inbounds i32* %tmp, i64 %idxprom, !dbg !2759
  %tmp1 = load i32* %arrayidx, align 4, !dbg !2759
  %cmp = icmp ne i32 %tmp1, -1, !dbg !2759
  br i1 %cmp, label %if.then, label %if.end, !dbg !2761

if.then:                                          ; preds = %entry
  call fastcc void @order_update(%struct.solver_t* %s, i32 %v), !dbg !2762
  br label %if.end, !dbg !2762

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2763
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @veci_resize25(%struct.veci_t* %v, i32 %k) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.veci_t* %v, i64 0, metadata !2764, metadata !432), !dbg !2765
  call void @llvm.dbg.value(metadata i32 %k, i64 0, metadata !2766, metadata !432), !dbg !2767
  %size = getelementptr inbounds %struct.veci_t* %v, i32 0, i32 0, !dbg !2768
  store i32 %k, i32* %size, align 4, !dbg !2768
  ret void, !dbg !2769
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @order_unassigned(%struct.solver_t* %s, i32 %v) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !2770, metadata !432), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %v, i64 0, metadata !2772, metadata !432), !dbg !2773
  %orderpos1 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 13, !dbg !2774
  %tmp = load i32** %orderpos1, align 8, !dbg !2774
  call void @llvm.dbg.value(metadata i32* %tmp, i64 0, metadata !2775, metadata !432), !dbg !2776
  %idxprom = sext i32 %v to i64, !dbg !2777
  %arrayidx = getelementptr inbounds i32* %tmp, i64 %idxprom, !dbg !2777
  %tmp1 = load i32* %arrayidx, align 4, !dbg !2777
  %cmp = icmp eq i32 %tmp1, -1, !dbg !2777
  br i1 %cmp, label %if.then, label %if.end, !dbg !2779

if.then:                                          ; preds = %entry
  %order = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 21, !dbg !2780
  %call = call fastcc i32 @veci_size11(%struct.veci_t* %order), !dbg !2782
  %idxprom2 = sext i32 %v to i64, !dbg !2783
  %arrayidx3 = getelementptr inbounds i32* %tmp, i64 %idxprom2, !dbg !2783
  store i32 %call, i32* %arrayidx3, align 4, !dbg !2783
  %order4 = getelementptr inbounds %struct.solver_t* %s, i32 0, i32 21, !dbg !2784
  call fastcc void @veci_push12(%struct.veci_t* %order4, i32 %v), !dbg !2785
  call fastcc void @order_update(%struct.solver_t* %s, i32 %v), !dbg !2786
  br label %if.end, !dbg !2787

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2788
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @vecp_remove(%struct.vecp_t* %v, i8* %e) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.vecp_t* %v, i64 0, metadata !2789, metadata !432), !dbg !2790
  call void @llvm.dbg.value(metadata i8* %e, i64 0, metadata !2791, metadata !432), !dbg !2792
  %call = call fastcc i8** @vecp_begin(%struct.vecp_t* %v), !dbg !2793
  call void @llvm.dbg.value(metadata i8** %call, i64 0, metadata !2794, metadata !432), !dbg !2795
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2796, metadata !432), !dbg !2797
  br label %for.cond, !dbg !2798

for.cond:                                         ; preds = %for.inc, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %idxprom = sext i32 %j.0 to i64, !dbg !2799
  %arrayidx = getelementptr inbounds i8** %call, i64 %idxprom, !dbg !2799
  %tmp = load i8** %arrayidx, align 8, !dbg !2799
  %cmp = icmp ne i8* %tmp, %e, !dbg !2799
  br i1 %cmp, label %for.body, label %for.end, !dbg !2802

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !2803

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %j.0, 1, !dbg !2805
  call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !2796, metadata !432), !dbg !2797
  br label %for.cond, !dbg !2807

for.end:                                          ; preds = %for.cond
  %call1 = call fastcc i32 @vecp_size(%struct.vecp_t* %v), !dbg !2808
  %cmp2 = icmp slt i32 %j.0, %call1, !dbg !2808
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !2808

cond.true:                                        ; preds = %for.end
  br label %cond.end, !dbg !2809

cond.false:                                       ; preds = %for.end
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str115, i32 0, i32 0), i32 106, i8* getelementptr inbounds ([33 x i8]* @__PRETTY_FUNCTION__.vecp_remove, i32 0, i32 0)) #8, !dbg !2811
  unreachable, !dbg !2811

bb:                                               ; No predecessors!
  br label %cond.end, !dbg !2808

cond.end:                                         ; preds = %bb, %cond.true
  br label %for.cond3, !dbg !2813

for.cond3:                                        ; preds = %for.inc11, %cond.end
  %j.1 = phi i32 [ %j.0, %cond.end ], [ %inc12, %for.inc11 ]
  %call4 = call fastcc i32 @vecp_size(%struct.vecp_t* %v), !dbg !2814
  %sub = sub nsw i32 %call4, 1, !dbg !2814
  %cmp5 = icmp slt i32 %j.1, %sub, !dbg !2817
  br i1 %cmp5, label %for.body6, label %for.end13, !dbg !2818

for.body6:                                        ; preds = %for.cond3
  %add = add nsw i32 %j.1, 1, !dbg !2819
  %idxprom7 = sext i32 %add to i64, !dbg !2821
  %arrayidx8 = getelementptr inbounds i8** %call, i64 %idxprom7, !dbg !2821
  %tmp1 = load i8** %arrayidx8, align 8, !dbg !2821
  %idxprom9 = sext i32 %j.1 to i64, !dbg !2822
  %arrayidx10 = getelementptr inbounds i8** %call, i64 %idxprom9, !dbg !2822
  store i8* %tmp1, i8** %arrayidx10, align 8, !dbg !2822
  br label %for.inc11, !dbg !2822

for.inc11:                                        ; preds = %for.body6
  %inc12 = add nsw i32 %j.1, 1, !dbg !2823
  call void @llvm.dbg.value(metadata i32 %inc12, i64 0, metadata !2796, metadata !432), !dbg !2797
  br label %for.cond3, !dbg !2825

for.end13:                                        ; preds = %for.cond3
  %call14 = call fastcc i32 @vecp_size(%struct.vecp_t* %v), !dbg !2826
  %sub15 = sub nsw i32 %call14, 1, !dbg !2826
  call fastcc void @vecp_resize(%struct.vecp_t* %v, i32 %sub15), !dbg !2827
  ret void, !dbg !2828
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @order_assigned(%struct.solver_t* %s, i32 %v) #6 {
entry:
  call void @llvm.dbg.value(metadata %struct.solver_t* %s, i64 0, metadata !2829, metadata !432), !dbg !2830
  call void @llvm.dbg.value(metadata i32 %v, i64 0, metadata !2831, metadata !432), !dbg !2832
  ret void, !dbg !2833
}

; Function Attrs: nounwind uwtable
define i8* @readFile(%struct._IO_FILE* %in) #0 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %in, i64 0, metadata !2834, metadata !432), !dbg !2835
  %call = call noalias i8* @malloc(i64 65536) #7, !dbg !2836
  call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !2837, metadata !432), !dbg !2838
  call void @llvm.dbg.value(metadata i32 65536, i64 0, metadata !2839, metadata !432), !dbg !2840
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2841, metadata !432), !dbg !2842
  br label %while.cond, !dbg !2843

while.cond:                                       ; preds = %if.end, %entry
  %cap.0 = phi i32 [ 65536, %entry ], [ %cap.1, %if.end ]
  %data.0 = phi i8* [ %call, %entry ], [ %data.1, %if.end ]
  %size.0 = phi i32 [ 0, %entry ], [ %conv5, %if.end ]
  %call1 = call i32 @feof(%struct._IO_FILE* %in) #7, !dbg !2844
  %tobool = icmp ne i32 %call1, 0, !dbg !2845
  %lnot = xor i1 %tobool, true, !dbg !2845
  br i1 %lnot, label %while.body, label %while.end, !dbg !2843

while.body:                                       ; preds = %while.cond
  %cmp = icmp eq i32 %size.0, %cap.0, !dbg !2846
  br i1 %cmp, label %if.then, label %if.end, !dbg !2849

if.then:                                          ; preds = %while.body
  %mul = mul nsw i32 %cap.0, 2, !dbg !2850
  call void @llvm.dbg.value(metadata i32 %mul, i64 0, metadata !2839, metadata !432), !dbg !2840
  %conv = sext i32 %mul to i64, !dbg !2852
  %call2 = call i8* @realloc(i8* %data.0, i64 %conv) #7, !dbg !2853
  call void @llvm.dbg.value(metadata i8* %call2, i64 0, metadata !2837, metadata !432), !dbg !2838
  br label %if.end, !dbg !2854

if.end:                                           ; preds = %if.then, %while.body
  %cap.1 = phi i32 [ %mul, %if.then ], [ %cap.0, %while.body ]
  %data.1 = phi i8* [ %call2, %if.then ], [ %data.0, %while.body ]
  %idxprom = sext i32 %size.0 to i64, !dbg !2855
  %arrayidx = getelementptr inbounds i8* %data.1, i64 %idxprom, !dbg !2855
  %call3 = call i64 @fread(i8* %arrayidx, i64 1, i64 65536, %struct._IO_FILE* %in), !dbg !2856
  %conv4 = sext i32 %size.0 to i64, !dbg !2857
  %add = add i64 %conv4, %call3, !dbg !2857
  %conv5 = trunc i64 %add to i32, !dbg !2857
  call void @llvm.dbg.value(metadata i32 %conv5, i64 0, metadata !2841, metadata !432), !dbg !2842
  br label %while.cond, !dbg !2843

while.end:                                        ; preds = %while.cond
  %add6 = add nsw i32 %size.0, 1, !dbg !2858
  %conv7 = sext i32 %add6 to i64, !dbg !2858
  %call8 = call i8* @realloc(i8* %data.0, i64 %conv7) #7, !dbg !2859
  call void @llvm.dbg.value(metadata i8* %call8, i64 0, metadata !2837, metadata !432), !dbg !2838
  %idxprom9 = sext i32 %size.0 to i64, !dbg !2860
  %arrayidx10 = getelementptr inbounds i8* %call8, i64 %idxprom9, !dbg !2860
  store i8 0, i8* %arrayidx10, align 1, !dbg !2860
  ret i8* %call8, !dbg !2861
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!0, !137, !363}
!llvm.ident = !{!428, !428, !428}
!llvm.module.flags = !{!429, !430}

!0 = !{!"0x11\0012\00clang version 3.6.2 (tags/RELEASE_362/final)\000\00\000\00\001", !1, !2, !3, !6, !129, !2} ; [ DW_TAG_compile_unit ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c] [DW_LANG_C99]
!1 = !{!"main.c", !"/home/eq/repos/falco/bench/MiniSat-C_v1.14.1"}
!2 = !{}
!3 = !{!4}
!4 = !{!"0xf\00\000\0064\0064\000\000", null, null, !5} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!5 = !{!"0x24\00int\000\0032\0032\000\000\005", null, null} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!6 = !{!7, !14, !95, !100, !103, !106, !110, !114, !117, !120, !123, !124, !127, !128}
!7 = !{!"0x2e\00main\00main\00\00168\000\001\000\000\00256\000\00169", !1, !8, !9, null, i32 (i32, i8**)* @main, null, null, !2} ; [ DW_TAG_subprogram ] [line 168] [def] [scope 169] [main]
!8 = !{!"0x29", !1}                               ; [ DW_TAG_file_type ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!9 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !10, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!10 = !{!5, !5, !11}
!11 = !{!"0xf\00\000\0064\0064\000\000", null, null, !12} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!12 = !{!"0xf\00\000\0064\0064\000\000", null, null, !13} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!13 = !{!"0x24\00char\000\008\008\000\000\006", null, null} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!14 = !{!"0x2e\00parse_DIMACS_main\00parse_DIMACS_main\00\00106\001\001\000\000\00256\000\00106", !1, !8, !15, null, i8 (i8*, %struct.solver_t*)* @parse_DIMACS_main, null, null, !2} ; [ DW_TAG_subprogram ] [line 106] [local] [def] [parse_DIMACS_main]
!15 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !16, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!16 = !{!17, !19, !21}
!17 = !{!"0x16\00lbool\0040\000\000\000\000", !18, null, !13} ; [ DW_TAG_typedef ] [lbool] [line 40, size 0, align 0, offset 0] [from char]
!18 = !{!"./solver.h", !"/home/eq/repos/falco/bench/MiniSat-C_v1.14.1"}
!19 = !{!"0xf\00\000\0064\0064\000\000", null, null, !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!20 = !{!"0x26\00\000\000\000\000\000", null, null, !13} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!21 = !{!"0xf\00\000\0064\0064\000\000", null, null, !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from solver]
!22 = !{!"0x16\00solver\0065\000\000\000\000", !18, null, !23} ; [ DW_TAG_typedef ] [solver] [line 65, size 0, align 0, offset 0] [from solver_t]
!23 = !{!"0x13\00solver_t\0093\002688\0064\000\000\000", !18, null, null, !24, null, null, null} ; [ DW_TAG_structure_type ] [solver_t] [line 93, size 2688, align 64, offset 0] [def] [from ]
!24 = !{!25, !26, !27, !28, !29, !39, !40, !43, !44, !45, !46, !48, !50, !52, !53, !58, !59, !62, !63, !64, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!25 = !{!"0xd\00size\0095\0032\0032\000\000", !18, !23, !5} ; [ DW_TAG_member ] [size] [line 95, size 32, align 32, offset 0] [from int]
!26 = !{!"0xd\00cap\0096\0032\0032\0032\000", !18, !23, !5} ; [ DW_TAG_member ] [cap] [line 96, size 32, align 32, offset 32] [from int]
!27 = !{!"0xd\00qhead\0097\0032\0032\0064\000", !18, !23, !5} ; [ DW_TAG_member ] [qhead] [line 97, size 32, align 32, offset 64] [from int]
!28 = !{!"0xd\00qtail\0098\0032\0032\0096\000", !18, !23, !5} ; [ DW_TAG_member ] [qtail] [line 98, size 32, align 32, offset 96] [from int]
!29 = !{!"0xd\00clauses\00101\00128\0064\00128\000", !18, !23, !30} ; [ DW_TAG_member ] [clauses] [line 101, size 128, align 64, offset 128] [from vecp]
!30 = !{!"0x16\00vecp\0062\000\000\000\000", !31, null, !32} ; [ DW_TAG_typedef ] [vecp] [line 62, size 0, align 0, offset 0] [from vecp_t]
!31 = !{!"./vec.h", !"/home/eq/repos/falco/bench/MiniSat-C_v1.14.1"}
!32 = !{!"0x13\00vecp_t\0057\00128\0064\000\000\000", !31, null, null, !33, null, null, null} ; [ DW_TAG_structure_type ] [vecp_t] [line 57, size 128, align 64, offset 0] [def] [from ]
!33 = !{!34, !35, !36}
!34 = !{!"0xd\00size\0058\0032\0032\000\000", !31, !32, !5} ; [ DW_TAG_member ] [size] [line 58, size 32, align 32, offset 0] [from int]
!35 = !{!"0xd\00cap\0059\0032\0032\0032\000", !31, !32, !5} ; [ DW_TAG_member ] [cap] [line 59, size 32, align 32, offset 32] [from int]
!36 = !{!"0xd\00ptr\0060\0064\0064\0064\000", !31, !32, !37} ; [ DW_TAG_member ] [ptr] [line 60, size 64, align 64, offset 64] [from ]
!37 = !{!"0xf\00\000\0064\0064\000\000", null, null, !38} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!38 = !{!"0xf\00\000\0064\0064\000\000", null, null, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!39 = !{!"0xd\00learnts\00102\00128\0064\00256\000", !18, !23, !30} ; [ DW_TAG_member ] [learnts] [line 102, size 128, align 64, offset 256] [from vecp]
!40 = !{!"0xd\00var_inc\00105\0064\0064\00384\000", !18, !23, !41} ; [ DW_TAG_member ] [var_inc] [line 105, size 64, align 64, offset 384] [from uint64]
!41 = !{!"0x16\00uint64\0045\000\000\000\000", !18, null, !42} ; [ DW_TAG_typedef ] [uint64] [line 45, size 0, align 0, offset 0] [from long long unsigned int]
!42 = !{!"0x24\00long long unsigned int\000\0064\0064\000\000\007", null, null} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!43 = !{!"0xd\00var_decay\00106\0064\0064\00448\000", !18, !23, !41} ; [ DW_TAG_member ] [var_decay] [line 106, size 64, align 64, offset 448] [from uint64]
!44 = !{!"0xd\00cla_inc\00107\0064\0064\00512\000", !18, !23, !41} ; [ DW_TAG_member ] [cla_inc] [line 107, size 64, align 64, offset 512] [from uint64]
!45 = !{!"0xd\00cla_decay\00108\0064\0064\00576\000", !18, !23, !41} ; [ DW_TAG_member ] [cla_decay] [line 108, size 64, align 64, offset 576] [from uint64]
!46 = !{!"0xd\00wlists\00110\0064\0064\00640\000", !18, !23, !47} ; [ DW_TAG_member ] [wlists] [line 110, size 64, align 64, offset 640] [from ]
!47 = !{!"0xf\00\000\0064\0064\000\000", null, null, !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from vecp]
!48 = !{!"0xd\00activity\00111\0064\0064\00704\000", !18, !23, !49} ; [ DW_TAG_member ] [activity] [line 111, size 64, align 64, offset 704] [from ]
!49 = !{!"0xf\00\000\0064\0064\000\000", null, null, !41} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from uint64]
!50 = !{!"0xd\00assigns\00112\0064\0064\00768\000", !18, !23, !51} ; [ DW_TAG_member ] [assigns] [line 112, size 64, align 64, offset 768] [from ]
!51 = !{!"0xf\00\000\0064\0064\000\000", null, null, !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from lbool]
!52 = !{!"0xd\00orderpos\00113\0064\0064\00832\000", !18, !23, !4} ; [ DW_TAG_member ] [orderpos] [line 113, size 64, align 64, offset 832] [from ]
!53 = !{!"0xd\00reasons\00114\0064\0064\00896\000", !18, !23, !54} ; [ DW_TAG_member ] [reasons] [line 114, size 64, align 64, offset 896] [from ]
!54 = !{!"0xf\00\000\0064\0064\000\000", null, null, !55} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!55 = !{!"0xf\00\000\0064\0064\000\000", null, null, !56} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from clause]
!56 = !{!"0x16\00clause\0091\000\000\000\000", !18, null, !57} ; [ DW_TAG_typedef ] [clause] [line 91, size 0, align 0, offset 0] [from clause_t]
!57 = !{!"0x13\00clause_t\0090\000\000\000\004\000", !18, null, null, null, null, null, null} ; [ DW_TAG_structure_type ] [clause_t] [line 90, size 0, align 0, offset 0] [decl] [from ]
!58 = !{!"0xd\00levels\00115\0064\0064\00960\000", !18, !23, !4} ; [ DW_TAG_member ] [levels] [line 115, size 64, align 64, offset 960] [from ]
!59 = !{!"0xd\00trail\00116\0064\0064\001024\000", !18, !23, !60} ; [ DW_TAG_member ] [trail] [line 116, size 64, align 64, offset 1024] [from ]
!60 = !{!"0xf\00\000\0064\0064\000\000", null, null, !61} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from lit]
!61 = !{!"0x16\00lit\0039\000\000\000\000", !18, null, !5} ; [ DW_TAG_typedef ] [lit] [line 39, size 0, align 0, offset 0] [from int]
!62 = !{!"0xd\00binary\00118\0064\0064\001088\000", !18, !23, !55} ; [ DW_TAG_member ] [binary] [line 118, size 64, align 64, offset 1088] [from ]
!63 = !{!"0xd\00tags\00119\0064\0064\001152\000", !18, !23, !51} ; [ DW_TAG_member ] [tags] [line 119, size 64, align 64, offset 1152] [from ]
!64 = !{!"0xd\00tagged\00120\00128\0064\001216\000", !18, !23, !65} ; [ DW_TAG_member ] [tagged] [line 120, size 128, align 64, offset 1216] [from veci]
!65 = !{!"0x16\00veci\0034\000\000\000\000", !31, null, !66} ; [ DW_TAG_typedef ] [veci] [line 34, size 0, align 0, offset 0] [from veci_t]
!66 = !{!"0x13\00veci_t\0029\00128\0064\000\000\000", !31, null, null, !67, null, null, null} ; [ DW_TAG_structure_type ] [veci_t] [line 29, size 128, align 64, offset 0] [def] [from ]
!67 = !{!68, !69, !70}
!68 = !{!"0xd\00size\0030\0032\0032\000\000", !31, !66, !5} ; [ DW_TAG_member ] [size] [line 30, size 32, align 32, offset 0] [from int]
!69 = !{!"0xd\00cap\0031\0032\0032\0032\000", !31, !66, !5} ; [ DW_TAG_member ] [cap] [line 31, size 32, align 32, offset 32] [from int]
!70 = !{!"0xd\00ptr\0032\0064\0064\0064\000", !31, !66, !4} ; [ DW_TAG_member ] [ptr] [line 32, size 64, align 64, offset 64] [from ]
!71 = !{!"0xd\00stack\00121\00128\0064\001344\000", !18, !23, !65} ; [ DW_TAG_member ] [stack] [line 121, size 128, align 64, offset 1344] [from veci]
!72 = !{!"0xd\00order\00123\00128\0064\001472\000", !18, !23, !65} ; [ DW_TAG_member ] [order] [line 123, size 128, align 64, offset 1472] [from veci]
!73 = !{!"0xd\00trail_lim\00124\00128\0064\001600\000", !18, !23, !65} ; [ DW_TAG_member ] [trail_lim] [line 124, size 128, align 64, offset 1600] [from veci]
!74 = !{!"0xd\00model\00125\00128\0064\001728\000", !18, !23, !65} ; [ DW_TAG_member ] [model] [line 125, size 128, align 64, offset 1728] [from veci]
!75 = !{!"0xd\00root_level\00127\0032\0032\001856\000", !18, !23, !5} ; [ DW_TAG_member ] [root_level] [line 127, size 32, align 32, offset 1856] [from int]
!76 = !{!"0xd\00simpdb_assigns\00128\0032\0032\001888\000", !18, !23, !5} ; [ DW_TAG_member ] [simpdb_assigns] [line 128, size 32, align 32, offset 1888] [from int]
!77 = !{!"0xd\00simpdb_props\00129\0032\0032\001920\000", !18, !23, !5} ; [ DW_TAG_member ] [simpdb_props] [line 129, size 32, align 32, offset 1920] [from int]
!78 = !{!"0xd\00verbosity\00132\0032\0032\001952\000", !18, !23, !5} ; [ DW_TAG_member ] [verbosity] [line 132, size 32, align 32, offset 1952] [from int]
!79 = !{!"0xd\00stats\00134\00704\0064\001984\000", !18, !23, !80} ; [ DW_TAG_member ] [stats] [line 134, size 704, align 64, offset 1984] [from stats]
!80 = !{!"0x16\00stats\0085\000\000\000\000", !18, null, !81} ; [ DW_TAG_typedef ] [stats] [line 85, size 0, align 0, offset 0] [from stats_t]
!81 = !{!"0x13\00stats_t\0080\00704\0064\000\000\000", !18, null, null, !82, null, null, null} ; [ DW_TAG_structure_type ] [stats_t] [line 80, size 704, align 64, offset 0] [def] [from ]
!82 = !{!83, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!83 = !{!"0xd\00starts\0082\0064\0064\000\000", !18, !81, !84} ; [ DW_TAG_member ] [starts] [line 82, size 64, align 64, offset 0] [from long long int]
!84 = !{!"0x24\00long long int\000\0064\0064\000\000\005", null, null} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!85 = !{!"0xd\00decisions\0082\0064\0064\0064\000", !18, !81, !84} ; [ DW_TAG_member ] [decisions] [line 82, size 64, align 64, offset 64] [from long long int]
!86 = !{!"0xd\00propagations\0082\0064\0064\00128\000", !18, !81, !84} ; [ DW_TAG_member ] [propagations] [line 82, size 64, align 64, offset 128] [from long long int]
!87 = !{!"0xd\00inspects\0082\0064\0064\00192\000", !18, !81, !84} ; [ DW_TAG_member ] [inspects] [line 82, size 64, align 64, offset 192] [from long long int]
!88 = !{!"0xd\00conflicts\0082\0064\0064\00256\000", !18, !81, !84} ; [ DW_TAG_member ] [conflicts] [line 82, size 64, align 64, offset 256] [from long long int]
!89 = !{!"0xd\00clauses\0083\0064\0064\00320\000", !18, !81, !84} ; [ DW_TAG_member ] [clauses] [line 83, size 64, align 64, offset 320] [from long long int]
!90 = !{!"0xd\00clauses_literals\0083\0064\0064\00384\000", !18, !81, !84} ; [ DW_TAG_member ] [clauses_literals] [line 83, size 64, align 64, offset 384] [from long long int]
!91 = !{!"0xd\00learnts\0083\0064\0064\00448\000", !18, !81, !84} ; [ DW_TAG_member ] [learnts] [line 83, size 64, align 64, offset 448] [from long long int]
!92 = !{!"0xd\00learnts_literals\0083\0064\0064\00512\000", !18, !81, !84} ; [ DW_TAG_member ] [learnts_literals] [line 83, size 64, align 64, offset 512] [from long long int]
!93 = !{!"0xd\00max_literals\0083\0064\0064\00576\000", !18, !81, !84} ; [ DW_TAG_member ] [max_literals] [line 83, size 64, align 64, offset 576] [from long long int]
!94 = !{!"0xd\00tot_literals\0083\0064\0064\00640\000", !18, !81, !84} ; [ DW_TAG_member ] [tot_literals] [line 83, size 64, align 64, offset 640] [from long long int]
!95 = !{!"0x2e\00veci_delete\00veci_delete\00\0042\001\001\000\000\00256\000\0042", !31, !96, !97, null, void (%struct.veci_t*)* @veci_delete, null, null, !2} ; [ DW_TAG_subprogram ] [line 42] [local] [def] [veci_delete]
!96 = !{!"0x29", !31}                             ; [ DW_TAG_file_type ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/./vec.h]
!97 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !98, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!98 = !{null, !99}
!99 = !{!"0xf\00\000\0064\0064\000\000", null, null, !65} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from veci]
!100 = !{!"0x2e\00veci_size\00veci_size\00\0044\001\001\000\000\00256\000\0044", !31, !96, !101, null, i32 (%struct.veci_t*)* @veci_size, null, null, !2} ; [ DW_TAG_subprogram ] [line 44] [local] [def] [veci_size]
!101 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !102, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!102 = !{!5, !99}
!103 = !{!"0x2e\00veci_begin\00veci_begin\00\0043\001\001\000\000\00256\000\0043", !31, !96, !104, null, i32* (%struct.veci_t*)* @veci_begin, null, null, !2} ; [ DW_TAG_subprogram ] [line 43] [local] [def] [veci_begin]
!104 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !105, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!105 = !{!4, !99}
!106 = !{!"0x2e\00readClause\00readClause\00\0095\001\001\000\000\00256\000\0095", !1, !8, !107, null, void (i8**, %struct.solver_t*, %struct.veci_t*)* @readClause, null, null, !2} ; [ DW_TAG_subprogram ] [line 95] [local] [def] [readClause]
!107 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !108, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!108 = !{null, !109, !21, !99}
!109 = !{!"0xf\00\000\0064\0064\000\000", null, null, !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!110 = !{!"0x2e\00lit_neg\00lit_neg\00\0056\001\001\000\000\00256\000\0056", !18, !111, !112, null, i32 (i32)* @lit_neg, null, null, !2} ; [ DW_TAG_subprogram ] [line 56] [local] [def] [lit_neg]
!111 = !{!"0x29", !18}                            ; [ DW_TAG_file_type ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/./solver.h]
!112 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !113, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!113 = !{!61, !61}
!114 = !{!"0x2e\00toLit\00toLit\00\0055\001\001\000\000\00256\000\0055", !18, !111, !115, null, i32 (i32)* @toLit, null, null, !2} ; [ DW_TAG_subprogram ] [line 55] [local] [def] [toLit]
!115 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !116, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!116 = !{!61, !5}
!117 = !{!"0x2e\00veci_push\00veci_push\00\0046\001\001\000\000\00256\000\0047", !31, !96, !118, null, void (%struct.veci_t*, i32)* @veci_push, null, null, !2} ; [ DW_TAG_subprogram ] [line 46] [local] [def] [scope 47] [veci_push]
!118 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !119, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!119 = !{null, !99, !5}
!120 = !{!"0x2e\00parseInt\00parseInt\00\0083\001\001\000\000\00256\000\0083", !1, !8, !121, null, i32 (i8**)* @parseInt, null, null, !2} ; [ DW_TAG_subprogram ] [line 83] [local] [def] [parseInt]
!121 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !122, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!122 = !{!5, !109}
!123 = !{!"0x2e\00veci_resize\00veci_resize\00\0045\001\001\000\000\00256\000\0045", !31, !96, !118, null, void (%struct.veci_t*, i32)* @veci_resize, null, null, !2} ; [ DW_TAG_subprogram ] [line 45] [local] [def] [veci_resize]
!124 = !{!"0x2e\00skipLine\00skipLine\00\0077\001\001\000\000\00256\000\0077", !1, !8, !125, null, void (i8**)* @skipLine, null, null, !2} ; [ DW_TAG_subprogram ] [line 77] [local] [def] [skipLine]
!125 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !126, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!126 = !{null, !109}
!127 = !{!"0x2e\00skipWhitespace\00skipWhitespace\00\0073\001\001\000\000\00256\000\0073", !1, !8, !125, null, void (i8**)* @skipWhitespace, null, null, !2} ; [ DW_TAG_subprogram ] [line 73] [local] [def] [skipWhitespace]
!128 = !{!"0x2e\00veci_new\00veci_new\00\0036\001\001\000\000\00256\000\0036", !31, !96, !97, null, void (%struct.veci_t*)* @veci_new, null, null, !2} ; [ DW_TAG_subprogram ] [line 36] [local] [def] [veci_new]
!129 = !{!130, !132, !133}
!130 = !{!"0x34\00l_False\00l_False\00\0053\001\001", null, !111, !131, i8 -1, null} ; [ DW_TAG_variable ] [l_False] [line 53] [local] [def]
!131 = !{!"0x26\00\000\000\000\000\000", null, null, !17} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from lbool]
!132 = !{!"0x34\00l_True\00l_True\00\0052\001\001", null, !111, !131, i8 1, null} ; [ DW_TAG_variable ] [l_True] [line 52] [local] [def]
!133 = !{!"0x34\00sampleFile\00sampleFile\00\0047\001\001", null, !8, !134, [224 x i8]* @sampleFile, null} ; [ DW_TAG_variable ] [sampleFile] [line 47] [local] [def]
!134 = !{!"0x1\00\000\001792\008\000\000\000", null, null, !20, !135, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1792, align 8, offset 0] [from ]
!135 = !{!136}
!136 = !{!"0x21\000\00224"}                       ; [ DW_TAG_subrange_type ] [0, 223]
!137 = !{!"0x11\0012\00clang version 3.6.2 (tags/RELEASE_362/final)\000\00\000\00\001", !138, !2, !139, !211, !354, !2} ; [ DW_TAG_compile_unit ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c] [DW_LANG_C99]
!138 = !{!"solver.c", !"/home/eq/repos/falco/bench/MiniSat-C_v1.14.1"}
!139 = !{!140, !149, !61, !150, !49, !51, !4, !157, !60, null, !158, !5, !38, !37}
!140 = !{!"0xf\00\000\0064\0064\000\000", null, null, !141} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from clause]
!141 = !{!"0x16\00clause\0091\000\000\000\000", !18, null, !142} ; [ DW_TAG_typedef ] [clause] [line 91, size 0, align 0, offset 0] [from clause_t]
!142 = !{!"0x13\00clause_t\0076\0032\0032\000\000\000", !138, null, null, !143, null, null, null} ; [ DW_TAG_structure_type ] [clause_t] [line 76, size 32, align 32, offset 0] [def] [from ]
!143 = !{!144, !145}
!144 = !{!"0xd\00size_learnt\0078\0032\0032\000\000", !138, !142, !5} ; [ DW_TAG_member ] [size_learnt] [line 78, size 32, align 32, offset 0] [from int]
!145 = !{!"0xd\00lits\0079\000\0032\0032\000", !138, !142, !146} ; [ DW_TAG_member ] [lits] [line 79, size 0, align 32, offset 32] [from ]
!146 = !{!"0x1\00\000\000\0032\000\000\000", null, null, !61, !147, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 0, align 32, offset 0] [from lit]
!147 = !{!148}
!148 = !{!"0x21\000\000"}                         ; [ DW_TAG_subrange_type ] [0, -1]
!149 = !{!"0x24\00long unsigned int\000\0064\0064\000\000\007", null, null} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!150 = !{!"0xf\00\000\0064\0064\000\000", null, null, !151} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from vecp]
!151 = !{!"0x16\00vecp\0062\000\000\000\000", !31, null, !152} ; [ DW_TAG_typedef ] [vecp] [line 62, size 0, align 0, offset 0] [from vecp_t]
!152 = !{!"0x13\00vecp_t\0057\00128\0064\000\000\000", !31, null, null, !153, null, null, null} ; [ DW_TAG_structure_type ] [vecp_t] [line 57, size 128, align 64, offset 0] [def] [from ]
!153 = !{!154, !155, !156}
!154 = !{!"0xd\00size\0058\0032\0032\000\000", !31, !152, !5} ; [ DW_TAG_member ] [size] [line 58, size 32, align 32, offset 0] [from int]
!155 = !{!"0xd\00cap\0059\0032\0032\0032\000", !31, !152, !5} ; [ DW_TAG_member ] [cap] [line 59, size 32, align 32, offset 32] [from int]
!156 = !{!"0xd\00ptr\0060\0064\0064\0064\000", !31, !152, !37} ; [ DW_TAG_member ] [ptr] [line 60, size 64, align 64, offset 64] [from ]
!157 = !{!"0xf\00\000\0064\0064\000\000", null, null, !140} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!158 = !{!"0xf\00\000\0064\0064\000\000", null, null, !159} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from solver]
!159 = !{!"0x16\00solver\0065\000\000\000\000", !18, null, !160} ; [ DW_TAG_typedef ] [solver] [line 65, size 0, align 0, offset 0] [from solver_t]
!160 = !{!"0x13\00solver_t\0093\002688\0064\000\000\000", !18, null, null, !161, null, null, null} ; [ DW_TAG_structure_type ] [solver_t] [line 93, size 2688, align 64, offset 0] [def] [from ]
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !188, !189, !190, !191, !192, !193, !194, !195, !196}
!162 = !{!"0xd\00size\0095\0032\0032\000\000", !18, !160, !5} ; [ DW_TAG_member ] [size] [line 95, size 32, align 32, offset 0] [from int]
!163 = !{!"0xd\00cap\0096\0032\0032\0032\000", !18, !160, !5} ; [ DW_TAG_member ] [cap] [line 96, size 32, align 32, offset 32] [from int]
!164 = !{!"0xd\00qhead\0097\0032\0032\0064\000", !18, !160, !5} ; [ DW_TAG_member ] [qhead] [line 97, size 32, align 32, offset 64] [from int]
!165 = !{!"0xd\00qtail\0098\0032\0032\0096\000", !18, !160, !5} ; [ DW_TAG_member ] [qtail] [line 98, size 32, align 32, offset 96] [from int]
!166 = !{!"0xd\00clauses\00101\00128\0064\00128\000", !18, !160, !151} ; [ DW_TAG_member ] [clauses] [line 101, size 128, align 64, offset 128] [from vecp]
!167 = !{!"0xd\00learnts\00102\00128\0064\00256\000", !18, !160, !151} ; [ DW_TAG_member ] [learnts] [line 102, size 128, align 64, offset 256] [from vecp]
!168 = !{!"0xd\00var_inc\00105\0064\0064\00384\000", !18, !160, !41} ; [ DW_TAG_member ] [var_inc] [line 105, size 64, align 64, offset 384] [from uint64]
!169 = !{!"0xd\00var_decay\00106\0064\0064\00448\000", !18, !160, !41} ; [ DW_TAG_member ] [var_decay] [line 106, size 64, align 64, offset 448] [from uint64]
!170 = !{!"0xd\00cla_inc\00107\0064\0064\00512\000", !18, !160, !41} ; [ DW_TAG_member ] [cla_inc] [line 107, size 64, align 64, offset 512] [from uint64]
!171 = !{!"0xd\00cla_decay\00108\0064\0064\00576\000", !18, !160, !41} ; [ DW_TAG_member ] [cla_decay] [line 108, size 64, align 64, offset 576] [from uint64]
!172 = !{!"0xd\00wlists\00110\0064\0064\00640\000", !18, !160, !150} ; [ DW_TAG_member ] [wlists] [line 110, size 64, align 64, offset 640] [from ]
!173 = !{!"0xd\00activity\00111\0064\0064\00704\000", !18, !160, !49} ; [ DW_TAG_member ] [activity] [line 111, size 64, align 64, offset 704] [from ]
!174 = !{!"0xd\00assigns\00112\0064\0064\00768\000", !18, !160, !51} ; [ DW_TAG_member ] [assigns] [line 112, size 64, align 64, offset 768] [from ]
!175 = !{!"0xd\00orderpos\00113\0064\0064\00832\000", !18, !160, !4} ; [ DW_TAG_member ] [orderpos] [line 113, size 64, align 64, offset 832] [from ]
!176 = !{!"0xd\00reasons\00114\0064\0064\00896\000", !18, !160, !157} ; [ DW_TAG_member ] [reasons] [line 114, size 64, align 64, offset 896] [from ]
!177 = !{!"0xd\00levels\00115\0064\0064\00960\000", !18, !160, !4} ; [ DW_TAG_member ] [levels] [line 115, size 64, align 64, offset 960] [from ]
!178 = !{!"0xd\00trail\00116\0064\0064\001024\000", !18, !160, !60} ; [ DW_TAG_member ] [trail] [line 116, size 64, align 64, offset 1024] [from ]
!179 = !{!"0xd\00binary\00118\0064\0064\001088\000", !18, !160, !140} ; [ DW_TAG_member ] [binary] [line 118, size 64, align 64, offset 1088] [from ]
!180 = !{!"0xd\00tags\00119\0064\0064\001152\000", !18, !160, !51} ; [ DW_TAG_member ] [tags] [line 119, size 64, align 64, offset 1152] [from ]
!181 = !{!"0xd\00tagged\00120\00128\0064\001216\000", !18, !160, !182} ; [ DW_TAG_member ] [tagged] [line 120, size 128, align 64, offset 1216] [from veci]
!182 = !{!"0x16\00veci\0034\000\000\000\000", !31, null, !183} ; [ DW_TAG_typedef ] [veci] [line 34, size 0, align 0, offset 0] [from veci_t]
!183 = !{!"0x13\00veci_t\0029\00128\0064\000\000\000", !31, null, null, !184, null, null, null} ; [ DW_TAG_structure_type ] [veci_t] [line 29, size 128, align 64, offset 0] [def] [from ]
!184 = !{!185, !186, !187}
!185 = !{!"0xd\00size\0030\0032\0032\000\000", !31, !183, !5} ; [ DW_TAG_member ] [size] [line 30, size 32, align 32, offset 0] [from int]
!186 = !{!"0xd\00cap\0031\0032\0032\0032\000", !31, !183, !5} ; [ DW_TAG_member ] [cap] [line 31, size 32, align 32, offset 32] [from int]
!187 = !{!"0xd\00ptr\0032\0064\0064\0064\000", !31, !183, !4} ; [ DW_TAG_member ] [ptr] [line 32, size 64, align 64, offset 64] [from ]
!188 = !{!"0xd\00stack\00121\00128\0064\001344\000", !18, !160, !182} ; [ DW_TAG_member ] [stack] [line 121, size 128, align 64, offset 1344] [from veci]
!189 = !{!"0xd\00order\00123\00128\0064\001472\000", !18, !160, !182} ; [ DW_TAG_member ] [order] [line 123, size 128, align 64, offset 1472] [from veci]
!190 = !{!"0xd\00trail_lim\00124\00128\0064\001600\000", !18, !160, !182} ; [ DW_TAG_member ] [trail_lim] [line 124, size 128, align 64, offset 1600] [from veci]
!191 = !{!"0xd\00model\00125\00128\0064\001728\000", !18, !160, !182} ; [ DW_TAG_member ] [model] [line 125, size 128, align 64, offset 1728] [from veci]
!192 = !{!"0xd\00root_level\00127\0032\0032\001856\000", !18, !160, !5} ; [ DW_TAG_member ] [root_level] [line 127, size 32, align 32, offset 1856] [from int]
!193 = !{!"0xd\00simpdb_assigns\00128\0032\0032\001888\000", !18, !160, !5} ; [ DW_TAG_member ] [simpdb_assigns] [line 128, size 32, align 32, offset 1888] [from int]
!194 = !{!"0xd\00simpdb_props\00129\0032\0032\001920\000", !18, !160, !5} ; [ DW_TAG_member ] [simpdb_props] [line 129, size 32, align 32, offset 1920] [from int]
!195 = !{!"0xd\00verbosity\00132\0032\0032\001952\000", !18, !160, !5} ; [ DW_TAG_member ] [verbosity] [line 132, size 32, align 32, offset 1952] [from int]
!196 = !{!"0xd\00stats\00134\00704\0064\001984\000", !18, !160, !197} ; [ DW_TAG_member ] [stats] [line 134, size 704, align 64, offset 1984] [from stats]
!197 = !{!"0x16\00stats\0085\000\000\000\000", !18, null, !198} ; [ DW_TAG_typedef ] [stats] [line 85, size 0, align 0, offset 0] [from stats_t]
!198 = !{!"0x13\00stats_t\0080\00704\0064\000\000\000", !18, null, null, !199, null, null, null} ; [ DW_TAG_structure_type ] [stats_t] [line 80, size 704, align 64, offset 0] [def] [from ]
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210}
!200 = !{!"0xd\00starts\0082\0064\0064\000\000", !18, !198, !84} ; [ DW_TAG_member ] [starts] [line 82, size 64, align 64, offset 0] [from long long int]
!201 = !{!"0xd\00decisions\0082\0064\0064\0064\000", !18, !198, !84} ; [ DW_TAG_member ] [decisions] [line 82, size 64, align 64, offset 64] [from long long int]
!202 = !{!"0xd\00propagations\0082\0064\0064\00128\000", !18, !198, !84} ; [ DW_TAG_member ] [propagations] [line 82, size 64, align 64, offset 128] [from long long int]
!203 = !{!"0xd\00inspects\0082\0064\0064\00192\000", !18, !198, !84} ; [ DW_TAG_member ] [inspects] [line 82, size 64, align 64, offset 192] [from long long int]
!204 = !{!"0xd\00conflicts\0082\0064\0064\00256\000", !18, !198, !84} ; [ DW_TAG_member ] [conflicts] [line 82, size 64, align 64, offset 256] [from long long int]
!205 = !{!"0xd\00clauses\0083\0064\0064\00320\000", !18, !198, !84} ; [ DW_TAG_member ] [clauses] [line 83, size 64, align 64, offset 320] [from long long int]
!206 = !{!"0xd\00clauses_literals\0083\0064\0064\00384\000", !18, !198, !84} ; [ DW_TAG_member ] [clauses_literals] [line 83, size 64, align 64, offset 384] [from long long int]
!207 = !{!"0xd\00learnts\0083\0064\0064\00448\000", !18, !198, !84} ; [ DW_TAG_member ] [learnts] [line 83, size 64, align 64, offset 448] [from long long int]
!208 = !{!"0xd\00learnts_literals\0083\0064\0064\00512\000", !18, !198, !84} ; [ DW_TAG_member ] [learnts_literals] [line 83, size 64, align 64, offset 512] [from long long int]
!209 = !{!"0xd\00max_literals\0083\0064\0064\00576\000", !18, !198, !84} ; [ DW_TAG_member ] [max_literals] [line 83, size 64, align 64, offset 576] [from long long int]
!210 = !{!"0xd\00tot_literals\0083\0064\0064\00640\000", !18, !198, !84} ; [ DW_TAG_member ] [tot_literals] [line 83, size 64, align 64, offset 640] [from long long int]
!211 = !{!212, !216, !220, !223, !226, !229, !232, !235, !236, !239, !242, !245, !248, !249, !250, !258, !261, !262, !265, !266, !267, !268, !269, !273, !276, !279, !282, !285, !288, !291, !294, !295, !298, !299, !300, !303, !306, !307, !310, !313, !316, !317, !318, !321, !322, !325, !326, !327, !330, !331, !334, !335, !338, !339, !342, !345, !348, !349, !350, !353}
!212 = !{!"0x2e\00clause_from_lit\00clause_from_lit\00\0091\000\001\000\000\00256\000\0091", !138, !213, !214, null, %struct.clause_t* (i32)* @clause_from_lit, null, null, !2} ; [ DW_TAG_subprogram ] [line 91] [def] [clause_from_lit]
!213 = !{!"0x29", !138}                           ; [ DW_TAG_file_type ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!214 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !215, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!215 = !{!140, !61}
!216 = !{!"0x2e\00clause_is_lit\00clause_is_lit\00\0092\000\001\000\000\00256\000\0092", !138, !213, !217, null, i32 (%struct.clause_t*)* @clause_is_lit, null, null, !2} ; [ DW_TAG_subprogram ] [line 92] [def] [clause_is_lit]
!217 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !218, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!218 = !{!219, !140}
!219 = !{!"0x16\00bool\0035\000\000\000\000", !18, null, !5} ; [ DW_TAG_typedef ] [bool] [line 35, size 0, align 0, offset 0] [from int]
!220 = !{!"0x2e\00clause_read_lit\00clause_read_lit\00\0093\000\001\000\000\00256\000\0093", !138, !213, !221, null, i32 (%struct.clause_t*)* @clause_read_lit, null, null, !2} ; [ DW_TAG_subprogram ] [line 93] [def] [clause_read_lit]
!221 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !222, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!222 = !{!61, !140}
!223 = !{!"0x2e\00solver_setnvars\00solver_setnvars\00\00350\000\001\000\000\00256\000\00351", !138, !213, !224, null, void (%struct.solver_t*, i32)* @solver_setnvars, null, null, !2} ; [ DW_TAG_subprogram ] [line 350] [def] [scope 351] [solver_setnvars]
!224 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !225, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!225 = !{null, !158, !5}
!226 = !{!"0x2e\00solver_propagate\00solver_propagate\00\00679\000\001\000\000\00256\000\00680", !138, !213, !227, null, %struct.clause_t* (%struct.solver_t*)* @solver_propagate, null, null, !2} ; [ DW_TAG_subprogram ] [line 679] [def] [scope 680] [solver_propagate]
!227 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !228, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!228 = !{!140, !158}
!229 = !{!"0x2e\00solver_reducedb\00solver_reducedb\00\00765\000\001\000\000\00256\000\00766", !138, !213, !230, null, void (%struct.solver_t*)* @solver_reducedb, null, null, !2} ; [ DW_TAG_subprogram ] [line 765] [def] [scope 766] [solver_reducedb]
!230 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !231, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!231 = !{null, !158}
!232 = !{!"0x2e\00solver_new\00solver_new\00\00889\000\001\000\000\00256\000\00890", !138, !213, !233, null, %struct.solver_t* ()* @solver_new, null, null, !2} ; [ DW_TAG_subprogram ] [line 889] [def] [scope 890] [solver_new]
!233 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !234, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!234 = !{!158}
!235 = !{!"0x2e\00solver_delete\00solver_delete\00\00947\000\001\000\000\00256\000\00948", !138, !213, !230, null, void (%struct.solver_t*)* @solver_delete, null, null, !2} ; [ DW_TAG_subprogram ] [line 947] [def] [scope 948] [solver_delete]
!236 = !{!"0x2e\00solver_addclause\00solver_addclause\00\00987\000\001\000\000\00256\000\00988", !138, !213, !237, null, i32 (%struct.solver_t*, i32*, i32)* @solver_addclause, null, null, !2} ; [ DW_TAG_subprogram ] [line 987] [def] [scope 988] [solver_addclause]
!237 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !238, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!238 = !{!219, !158, !60, !5}
!239 = !{!"0x2e\00solver_simplify\00solver_simplify\00\001040\000\001\000\000\00256\000\001041", !138, !213, !240, null, i32 (%struct.solver_t*)* @solver_simplify, null, null, !2} ; [ DW_TAG_subprogram ] [line 1040] [def] [scope 1041] [solver_simplify]
!240 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !241, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!241 = !{!219, !158}
!242 = !{!"0x2e\00solver_solve\00solver_solve\00\001077\000\001\000\000\00256\000\001078", !138, !213, !243, null, i32 (%struct.solver_t*, i32*, i32*)* @solver_solve, null, null, !2} ; [ DW_TAG_subprogram ] [line 1077] [def] [scope 1078] [solver_solve]
!243 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !244, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!244 = !{!219, !158, !60, !60}
!245 = !{!"0x2e\00solver_nvars\00solver_nvars\00\001140\000\001\000\000\00256\000\001141", !138, !213, !246, null, i32 (%struct.solver_t*)* @solver_nvars, null, null, !2} ; [ DW_TAG_subprogram ] [line 1140] [def] [scope 1141] [solver_nvars]
!246 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !247, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!247 = !{!5, !158}
!248 = !{!"0x2e\00solver_nclauses\00solver_nclauses\00\001146\000\001\000\000\00256\000\001147", !138, !213, !246, null, i32 (%struct.solver_t*)* @solver_nclauses, null, null, !2} ; [ DW_TAG_subprogram ] [line 1146] [def] [scope 1147] [solver_nclauses]
!249 = !{!"0x2e\00solver_nconflicts\00solver_nconflicts\00\001152\000\001\000\000\00256\000\001153", !138, !213, !246, null, i32 (%struct.solver_t*)* @solver_nconflicts, null, null, !2} ; [ DW_TAG_subprogram ] [line 1152] [def] [scope 1153] [solver_nconflicts]
!250 = !{!"0x2e\00sort\00sort\00\001201\000\001\000\000\00256\000\001202", !138, !213, !251, null, void (i8**, i32, i32 (i8*, i8*)*)* @sort, null, null, !2} ; [ DW_TAG_subprogram ] [line 1201] [def] [scope 1202] [sort]
!251 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !252, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!252 = !{null, !37, !5, !253}
!253 = !{!"0xf\00\000\0064\0064\000\000", null, null, !254} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!254 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !255, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!255 = !{!5, !256, !256}
!256 = !{!"0xf\00\000\0064\0064\000\000", null, null, !257} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!257 = !{!"0x26\00\000\000\000\000\000", null, null, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!258 = !{!"0x2e\00sortrnd\00sortrnd\00\001176\001\001\000\000\00256\000\001177", !138, !213, !259, null, void (i8**, i32, i32 (i8*, i8*)*, i64*)* @sortrnd, null, null, !2} ; [ DW_TAG_subprogram ] [line 1176] [local] [def] [scope 1177] [sortrnd]
!259 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !260, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!260 = !{null, !37, !5, !253, !49}
!261 = !{!"0x2e\00selectionsort\00selectionsort\00\001160\001\001\000\000\00256\000\001161", !138, !213, !251, null, void (i8**, i32, i32 (i8*, i8*)*)* @selectionsort, null, null, !2} ; [ DW_TAG_subprogram ] [line 1160] [local] [def] [scope 1161] [selectionsort]
!262 = !{!"0x2e\00solver_search\00solver_search\00\00795\001\001\000\000\00256\000\00796", !138, !213, !263, null, i8 (%struct.solver_t*, i32, i32)* @solver_search, null, null, !2} ; [ DW_TAG_subprogram ] [line 795] [local] [def] [scope 796] [solver_search]
!263 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !264, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!264 = !{!17, !158, !5, !5}
!265 = !{!"0x2e\00toLit\00toLit\00\0055\001\001\000\000\00256\000\0055", !18, !111, !115, null, i32 (i32)* @toLit23, null, null, !2} ; [ DW_TAG_subprogram ] [line 55] [local] [def] [toLit]
!266 = !{!"0x2e\00order_select\00order_select\00\00149\001\001\000\000\00256\000\00150", !138, !213, !246, null, i32 (%struct.solver_t*)* @order_select, null, null, !2} ; [ DW_TAG_subprogram ] [line 149] [local] [def] [scope 150] [order_select]
!267 = !{!"0x2e\00act_clause_decay\00act_clause_decay\00\00261\001\001\000\000\00256\000\00261", !138, !213, !230, null, void (%struct.solver_t*)* @act_clause_decay, null, null, !2} ; [ DW_TAG_subprogram ] [line 261] [local] [def] [act_clause_decay]
!268 = !{!"0x2e\00act_var_decay\00act_var_decay\00\00240\001\001\000\000\00256\000\00240", !138, !213, !230, null, void (%struct.solver_t*)* @act_var_decay, null, null, !2} ; [ DW_TAG_subprogram ] [line 240] [local] [def] [act_var_decay]
!269 = !{!"0x2e\00solver_record\00solver_record\00\00460\001\001\000\000\00256\000\00461", !138, !213, !270, null, void (%struct.solver_t*, %struct.veci_t*)* @solver_record, null, null, !2} ; [ DW_TAG_subprogram ] [line 460] [local] [def] [scope 461] [solver_record]
!270 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !271, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!271 = !{null, !158, !272}
!272 = !{!"0xf\00\000\0064\0064\000\000", null, null, !182} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from veci]
!273 = !{!"0x2e\00act_clause_bump\00act_clause_bump\00\00255\001\001\000\000\00256\000\00255", !138, !213, !274, null, void (%struct.solver_t*, %struct.clause_t*)* @act_clause_bump, null, null, !2} ; [ DW_TAG_subprogram ] [line 255] [local] [def] [act_clause_bump]
!274 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !275, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!275 = !{null, !158, !140}
!276 = !{!"0x2e\00clause_setactivity\00clause_setactivity\00\0086\001\001\000\000\00256\000\0086", !138, !213, !277, null, void (%struct.clause_t*, i64)* @clause_setactivity, null, null, !2} ; [ DW_TAG_subprogram ] [line 86] [local] [def] [clause_setactivity]
!277 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !278, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!278 = !{null, !140, !41}
!279 = !{!"0x2e\00clause_activity\00clause_activity\00\0085\001\001\000\000\00256\000\0085", !138, !213, !280, null, i64 (%struct.clause_t*)* @clause_activity, null, null, !2} ; [ DW_TAG_subprogram ] [line 85] [local] [def] [clause_activity]
!280 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !281, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!281 = !{!41, !140}
!282 = !{!"0x2e\00veci_begin\00veci_begin\00\0043\001\001\000\000\00256\000\0043", !31, !96, !283, null, i32* (%struct.veci_t*)* @veci_begin24, null, null, !2} ; [ DW_TAG_subprogram ] [line 43] [local] [def] [veci_begin]
!283 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !284, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!284 = !{!4, !272}
!285 = !{!"0x2e\00solver_analyze\00solver_analyze\00\00560\001\001\000\000\00256\000\00561", !138, !213, !286, null, void (%struct.solver_t*, %struct.clause_t*, %struct.veci_t*)* @solver_analyze, null, null, !2} ; [ DW_TAG_subprogram ] [line 560] [local] [def] [scope 561] [solver_analyze]
!286 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !287, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!287 = !{null, !158, !140, !272}
!288 = !{!"0x2e\00solver_lit_removable\00solver_lit_removable\00\00497\001\001\000\000\00256\000\00498", !138, !213, !289, null, i32 (%struct.solver_t*, i32, i32)* @solver_lit_removable, null, null, !2} ; [ DW_TAG_subprogram ] [line 497] [local] [def] [scope 498] [solver_lit_removable]
!289 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !290, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!290 = !{!219, !158, !61, !5}
!291 = !{!"0x2e\00clause_learnt\00clause_learnt\00\0084\001\001\000\000\00256\000\0084", !138, !213, !292, null, i32 (%struct.clause_t*)* @clause_learnt, null, null, !2} ; [ DW_TAG_subprogram ] [line 84] [local] [def] [clause_learnt]
!292 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !293, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!293 = !{!5, !140}
!294 = !{!"0x2e\00act_var_bump\00act_var_bump\00\00228\001\001\000\000\00256\000\00228", !138, !213, !224, null, void (%struct.solver_t*, i32)* @act_var_bump, null, null, !2} ; [ DW_TAG_subprogram ] [line 228] [local] [def] [act_var_bump]
!295 = !{!"0x2e\00veci_resize\00veci_resize\00\0045\001\001\000\000\00256\000\0045", !31, !96, !296, null, void (%struct.veci_t*, i32)* @veci_resize25, null, null, !2} ; [ DW_TAG_subprogram ] [line 45] [local] [def] [veci_resize]
!296 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !297, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!297 = !{null, !272, !5}
!298 = !{!"0x2e\00solver_canceluntil\00solver_canceluntil\00\00432\001\001\000\000\00256\000\00432", !138, !213, !224, null, void (%struct.solver_t*, i32)* @solver_canceluntil, null, null, !2} ; [ DW_TAG_subprogram ] [line 432] [local] [def] [solver_canceluntil]
!299 = !{!"0x2e\00order_unassigned\00order_unassigned\00\00139\001\001\000\000\00256\000\00140", !138, !213, !224, null, void (%struct.solver_t*, i32)* @order_unassigned, null, null, !2} ; [ DW_TAG_subprogram ] [line 139] [local] [def] [scope 140] [order_unassigned]
!300 = !{!"0x2e\00assume\00assume\00\00421\001\001\000\000\00256\000\00421", !138, !213, !301, null, void (%struct.solver_t*, i32)* @assume, null, null, !2} ; [ DW_TAG_subprogram ] [line 421] [local] [def] [assume]
!301 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !302, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!302 = !{null, !158, !61}
!303 = !{!"0x2e\00clause_simplify\00clause_simplify\00\00331\001\001\000\000\00256\000\00332", !138, !213, !304, null, i8 (%struct.solver_t*, %struct.clause_t*)* @clause_simplify, null, null, !2} ; [ DW_TAG_subprogram ] [line 331] [local] [def] [scope 332] [clause_simplify]
!304 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !305, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!305 = !{!17, !158, !140}
!306 = !{!"0x2e\00solver_dlevel\00solver_dlevel\00\0098\001\001\000\000\00256\000\0098", !138, !213, !246, null, i32 (%struct.solver_t*)* @solver_dlevel, null, null, !2} ; [ DW_TAG_subprogram ] [line 98] [local] [def] [solver_dlevel]
!307 = !{!"0x2e\00clause_new\00clause_new\00\00269\001\001\000\000\00256\000\00270", !138, !213, !308, null, %struct.clause_t* (%struct.solver_t*, i32*, i32, i32)* @clause_new, null, null, !2} ; [ DW_TAG_subprogram ] [line 269] [local] [def] [scope 270] [clause_new]
!308 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !309, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!309 = !{!140, !158, !60, !5, !5}
!310 = !{!"0x2e\00veci_delete\00veci_delete\00\0042\001\001\000\000\00256\000\0042", !31, !96, !311, null, void (%struct.veci_t*)* @veci_delete17, null, null, !2} ; [ DW_TAG_subprogram ] [line 42] [local] [def] [veci_delete]
!311 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !312, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!312 = !{null, !272}
!313 = !{!"0x2e\00vecp_delete\00vecp_delete\00\0070\001\001\000\000\00256\000\0070", !31, !96, !314, null, void (%struct.vecp_t*)* @vecp_delete, null, null, !2} ; [ DW_TAG_subprogram ] [line 70] [local] [def] [vecp_delete]
!314 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !315, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!315 = !{null, !150}
!316 = !{!"0x2e\00veci_new\00veci_new\00\0036\001\001\000\000\00256\000\0036", !31, !96, !311, null, void (%struct.veci_t*)* @veci_new16, null, null, !2} ; [ DW_TAG_subprogram ] [line 36] [local] [def] [veci_new]
!317 = !{!"0x2e\00clause_remove\00clause_remove\00\00306\001\001\000\000\00256\000\00307", !138, !213, !274, null, void (%struct.solver_t*, %struct.clause_t*)* @clause_remove, null, null, !2} ; [ DW_TAG_subprogram ] [line 306] [local] [def] [scope 307] [clause_remove]
!318 = !{!"0x2e\00vecp_remove\00vecp_remove\00\00100\001\001\000\000\00256\000\00101", !138, !213, !319, null, void (%struct.vecp_t*, i8*)* @vecp_remove, null, null, !2} ; [ DW_TAG_subprogram ] [line 100] [local] [def] [scope 101] [vecp_remove]
!319 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !320, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!320 = !{null, !150, !38}
!321 = !{!"0x2e\00clause_cmp\00clause_cmp\00\00762\001\001\000\000\00256\000\00762", !138, !213, !254, null, i32 (i8*, i8*)* @clause_cmp, null, null, !2} ; [ DW_TAG_subprogram ] [line 762] [local] [def] [clause_cmp]
!322 = !{!"0x2e\00vecp_resize\00vecp_resize\00\0073\001\001\000\000\00256\000\0073", !31, !96, !323, null, void (%struct.vecp_t*, i32)* @vecp_resize, null, null, !2} ; [ DW_TAG_subprogram ] [line 73] [local] [def] [vecp_resize]
!323 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !324, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!324 = !{null, !150, !5}
!325 = !{!"0x2e\00vecp_push\00vecp_push\00\0074\001\001\000\000\00256\000\0075", !31, !96, !319, null, void (%struct.vecp_t*, i8*)* @vecp_push, null, null, !2} ; [ DW_TAG_subprogram ] [line 74] [local] [def] [scope 75] [vecp_push]
!326 = !{!"0x2e\00clause_size\00clause_size\00\0082\001\001\000\000\00256\000\0082", !138, !213, !292, null, i32 (%struct.clause_t*)* @clause_size, null, null, !2} ; [ DW_TAG_subprogram ] [line 82] [local] [def] [clause_size]
!327 = !{!"0x2e\00lit_var\00lit_var\00\0057\001\001\000\000\00256\000\0057", !18, !111, !328, null, i32 (i32)* @lit_var, null, null, !2} ; [ DW_TAG_subprogram ] [line 57] [local] [def] [lit_var]
!328 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !329, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!329 = !{!5, !61}
!330 = !{!"0x2e\00lit_sign\00lit_sign\00\0058\001\001\000\000\00256\000\0058", !18, !111, !328, null, i32 (i32)* @lit_sign, null, null, !2} ; [ DW_TAG_subprogram ] [line 58] [local] [def] [lit_sign]
!331 = !{!"0x2e\00clause_begin\00clause_begin\00\0083\001\001\000\000\00256\000\0083", !138, !213, !332, null, i32* (%struct.clause_t*)* @clause_begin, null, null, !2} ; [ DW_TAG_subprogram ] [line 83] [local] [def] [clause_begin]
!332 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !333, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!333 = !{!60, !140}
!334 = !{!"0x2e\00lit_neg\00lit_neg\00\0056\001\001\000\000\00256\000\0056", !18, !111, !112, null, i32 (i32)* @lit_neg13, null, null, !2} ; [ DW_TAG_subprogram ] [line 56] [local] [def] [lit_neg]
!335 = !{!"0x2e\00enqueue\00enqueue\00\00390\001\001\000\000\00256\000\00391", !138, !213, !336, null, i32 (%struct.solver_t*, i32, %struct.clause_t*)* @enqueue, null, null, !2} ; [ DW_TAG_subprogram ] [line 390] [local] [def] [scope 391] [enqueue]
!336 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !337, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!337 = !{!219, !158, !61, !140}
!338 = !{!"0x2e\00order_assigned\00order_assigned\00\00135\001\001\000\000\00256\000\00136", !138, !213, !224, null, void (%struct.solver_t*, i32)* @order_assigned, null, null, !2} ; [ DW_TAG_subprogram ] [line 135] [local] [def] [scope 136] [order_assigned]
!339 = !{!"0x2e\00vecp_size\00vecp_size\00\0072\001\001\000\000\00256\000\0072", !31, !96, !340, null, i32 (%struct.vecp_t*)* @vecp_size, null, null, !2} ; [ DW_TAG_subprogram ] [line 72] [local] [def] [vecp_size]
!340 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !341, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!341 = !{!5, !150}
!342 = !{!"0x2e\00vecp_begin\00vecp_begin\00\0071\001\001\000\000\00256\000\0071", !31, !96, !343, null, i8** (%struct.vecp_t*)* @vecp_begin, null, null, !2} ; [ DW_TAG_subprogram ] [line 71] [local] [def] [vecp_begin]
!343 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !344, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!344 = !{!37, !150}
!345 = !{!"0x2e\00solver_read_wlist\00solver_read_wlist\00\0099\001\001\000\000\00256\000\0099", !138, !213, !346, null, %struct.vecp_t* (%struct.solver_t*, i32)* @solver_read_wlist, null, null, !2} ; [ DW_TAG_subprogram ] [line 99] [local] [def] [solver_read_wlist]
!346 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !347, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!347 = !{!150, !158, !61}
!348 = !{!"0x2e\00order_update\00order_update\00\00114\001\001\000\000\00256\000\00115", !138, !213, !224, null, void (%struct.solver_t*, i32)* @order_update, null, null, !2} ; [ DW_TAG_subprogram ] [line 114] [local] [def] [scope 115] [order_update]
!349 = !{!"0x2e\00veci_push\00veci_push\00\0046\001\001\000\000\00256\000\0047", !31, !96, !296, null, void (%struct.veci_t*, i32)* @veci_push12, null, null, !2} ; [ DW_TAG_subprogram ] [line 46] [local] [def] [scope 47] [veci_push]
!350 = !{!"0x2e\00veci_size\00veci_size\00\0044\001\001\000\000\00256\000\0044", !31, !96, !351, null, i32 (%struct.veci_t*)* @veci_size11, null, null, !2} ; [ DW_TAG_subprogram ] [line 44] [local] [def] [veci_size]
!351 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !352, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!352 = !{!5, !272}
!353 = !{!"0x2e\00vecp_new\00vecp_new\00\0064\001\001\000\000\00256\000\0064", !31, !96, !314, null, void (%struct.vecp_t*)* @vecp_new, null, null, !2} ; [ DW_TAG_subprogram ] [line 64] [local] [def] [vecp_new]
!354 = !{!355, !356, !358, !360, !132, !130, !361}
!355 = !{!"0x34\00l_Undef\00l_Undef\00\0051\001\001", null, !111, !131, i8 0, null} ; [ DW_TAG_variable ] [l_Undef] [line 51] [local] [def]
!356 = !{!"0x34\00false\00false\00\0037\001\001", null, !111, !357, i32 0, null} ; [ DW_TAG_variable ] [false] [line 37] [local] [def]
!357 = !{!"0x26\00\000\000\000\000\000", null, null, !219} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from bool]
!358 = !{!"0x34\00lit_Undef\00lit_Undef\00\0049\001\001", null, !111, !359, i32 -2, null} ; [ DW_TAG_variable ] [lit_Undef] [line 49] [local] [def]
!359 = !{!"0x26\00\000\000\000\000\000", null, null, !61} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from lit]
!360 = !{!"0x34\00true\00true\00\0036\001\001", null, !111, !357, i32 1, null} ; [ DW_TAG_variable ] [true] [line 36] [local] [def]
!361 = !{!"0x34\00var_Undef\00var_Undef\00\0048\001\001", null, !111, !362, i32 -1, null} ; [ DW_TAG_variable ] [var_Undef] [line 48] [local] [def]
!362 = !{!"0x26\00\000\000\000\000\000", null, null, !5} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!363 = !{!"0x11\0012\00clang version 3.6.2 (tags/RELEASE_362/final)\000\00\000\00\001", !364, !2, !2, !365, !2, !2} ; [ DW_TAG_compile_unit ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/helper.c] [DW_LANG_C99]
!364 = !{!"helper.c", !"/home/eq/repos/falco/bench/MiniSat-C_v1.14.1"}
!365 = !{!366}
!366 = !{!"0x2e\00readFile\00readFile\00\006\000\001\000\000\00256\000\007", !364, !367, !368, null, i8* (%struct._IO_FILE*)* @readFile, null, null, !2} ; [ DW_TAG_subprogram ] [line 6] [def] [scope 7] [readFile]
!367 = !{!"0x29", !364}                           ; [ DW_TAG_file_type ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/helper.c]
!368 = !{!"0x15\00\000\000\000\000\000\000", null, null, null, !369, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!369 = !{!12, !370}
!370 = !{!"0xf\00\000\0064\0064\000\000", null, null, !371} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!371 = !{!"0x16\00FILE\0048\000\000\000\000", !372, null, !373} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!372 = !{!"/usr/include/stdio.h", !"/home/eq/repos/falco/bench/MiniSat-C_v1.14.1"}
!373 = !{!"0x13\00_IO_FILE\00241\001728\0064\000\000\000", !374, null, null, !375, null, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 241, size 1728, align 64, offset 0] [def] [from ]
!374 = !{!"/usr/include/libio.h", !"/home/eq/repos/falco/bench/MiniSat-C_v1.14.1"}
!375 = !{!376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !396, !397, !398, !399, !403, !405, !407, !411, !414, !416, !417, !418, !419, !420, !423, !424}
!376 = !{!"0xd\00_flags\00242\0032\0032\000\000", !374, !373, !5} ; [ DW_TAG_member ] [_flags] [line 242, size 32, align 32, offset 0] [from int]
!377 = !{!"0xd\00_IO_read_ptr\00247\0064\0064\0064\000", !374, !373, !12} ; [ DW_TAG_member ] [_IO_read_ptr] [line 247, size 64, align 64, offset 64] [from ]
!378 = !{!"0xd\00_IO_read_end\00248\0064\0064\00128\000", !374, !373, !12} ; [ DW_TAG_member ] [_IO_read_end] [line 248, size 64, align 64, offset 128] [from ]
!379 = !{!"0xd\00_IO_read_base\00249\0064\0064\00192\000", !374, !373, !12} ; [ DW_TAG_member ] [_IO_read_base] [line 249, size 64, align 64, offset 192] [from ]
!380 = !{!"0xd\00_IO_write_base\00250\0064\0064\00256\000", !374, !373, !12} ; [ DW_TAG_member ] [_IO_write_base] [line 250, size 64, align 64, offset 256] [from ]
!381 = !{!"0xd\00_IO_write_ptr\00251\0064\0064\00320\000", !374, !373, !12} ; [ DW_TAG_member ] [_IO_write_ptr] [line 251, size 64, align 64, offset 320] [from ]
!382 = !{!"0xd\00_IO_write_end\00252\0064\0064\00384\000", !374, !373, !12} ; [ DW_TAG_member ] [_IO_write_end] [line 252, size 64, align 64, offset 384] [from ]
!383 = !{!"0xd\00_IO_buf_base\00253\0064\0064\00448\000", !374, !373, !12} ; [ DW_TAG_member ] [_IO_buf_base] [line 253, size 64, align 64, offset 448] [from ]
!384 = !{!"0xd\00_IO_buf_end\00254\0064\0064\00512\000", !374, !373, !12} ; [ DW_TAG_member ] [_IO_buf_end] [line 254, size 64, align 64, offset 512] [from ]
!385 = !{!"0xd\00_IO_save_base\00256\0064\0064\00576\000", !374, !373, !12} ; [ DW_TAG_member ] [_IO_save_base] [line 256, size 64, align 64, offset 576] [from ]
!386 = !{!"0xd\00_IO_backup_base\00257\0064\0064\00640\000", !374, !373, !12} ; [ DW_TAG_member ] [_IO_backup_base] [line 257, size 64, align 64, offset 640] [from ]
!387 = !{!"0xd\00_IO_save_end\00258\0064\0064\00704\000", !374, !373, !12} ; [ DW_TAG_member ] [_IO_save_end] [line 258, size 64, align 64, offset 704] [from ]
!388 = !{!"0xd\00_markers\00260\0064\0064\00768\000", !374, !373, !389} ; [ DW_TAG_member ] [_markers] [line 260, size 64, align 64, offset 768] [from ]
!389 = !{!"0xf\00\000\0064\0064\000\000", null, null, !390} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!390 = !{!"0x13\00_IO_marker\00156\00192\0064\000\000\000", !374, null, null, !391, null, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 156, size 192, align 64, offset 0] [def] [from ]
!391 = !{!392, !393, !395}
!392 = !{!"0xd\00_next\00157\0064\0064\000\000", !374, !390, !389} ; [ DW_TAG_member ] [_next] [line 157, size 64, align 64, offset 0] [from ]
!393 = !{!"0xd\00_sbuf\00158\0064\0064\0064\000", !374, !390, !394} ; [ DW_TAG_member ] [_sbuf] [line 158, size 64, align 64, offset 64] [from ]
!394 = !{!"0xf\00\000\0064\0064\000\000", null, null, !373} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!395 = !{!"0xd\00_pos\00162\0032\0032\00128\000", !374, !390, !5} ; [ DW_TAG_member ] [_pos] [line 162, size 32, align 32, offset 128] [from int]
!396 = !{!"0xd\00_chain\00262\0064\0064\00832\000", !374, !373, !394} ; [ DW_TAG_member ] [_chain] [line 262, size 64, align 64, offset 832] [from ]
!397 = !{!"0xd\00_fileno\00264\0032\0032\00896\000", !374, !373, !5} ; [ DW_TAG_member ] [_fileno] [line 264, size 32, align 32, offset 896] [from int]
!398 = !{!"0xd\00_flags2\00268\0032\0032\00928\000", !374, !373, !5} ; [ DW_TAG_member ] [_flags2] [line 268, size 32, align 32, offset 928] [from int]
!399 = !{!"0xd\00_old_offset\00270\0064\0064\00960\000", !374, !373, !400} ; [ DW_TAG_member ] [_old_offset] [line 270, size 64, align 64, offset 960] [from __off_t]
!400 = !{!"0x16\00__off_t\00131\000\000\000\000", !401, null, !402} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!401 = !{!"/usr/include/bits/types.h", !"/home/eq/repos/falco/bench/MiniSat-C_v1.14.1"}
!402 = !{!"0x24\00long int\000\0064\0064\000\000\005", null, null} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!403 = !{!"0xd\00_cur_column\00274\0016\0016\001024\000", !374, !373, !404} ; [ DW_TAG_member ] [_cur_column] [line 274, size 16, align 16, offset 1024] [from unsigned short]
!404 = !{!"0x24\00unsigned short\000\0016\0016\000\000\007", null, null} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!405 = !{!"0xd\00_vtable_offset\00275\008\008\001040\000", !374, !373, !406} ; [ DW_TAG_member ] [_vtable_offset] [line 275, size 8, align 8, offset 1040] [from signed char]
!406 = !{!"0x24\00signed char\000\008\008\000\000\006", null, null} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!407 = !{!"0xd\00_shortbuf\00276\008\008\001048\000", !374, !373, !408} ; [ DW_TAG_member ] [_shortbuf] [line 276, size 8, align 8, offset 1048] [from ]
!408 = !{!"0x1\00\000\008\008\000\000\000", null, null, !13, !409, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!409 = !{!410}
!410 = !{!"0x21\000\001"}                         ; [ DW_TAG_subrange_type ] [0, 0]
!411 = !{!"0xd\00_lock\00280\0064\0064\001088\000", !374, !373, !412} ; [ DW_TAG_member ] [_lock] [line 280, size 64, align 64, offset 1088] [from ]
!412 = !{!"0xf\00\000\0064\0064\000\000", null, null, !413} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_lock_t]
!413 = !{!"0x16\00_IO_lock_t\00150\000\000\000\000", !374, null, null} ; [ DW_TAG_typedef ] [_IO_lock_t] [line 150, size 0, align 0, offset 0] [from ]
!414 = !{!"0xd\00_offset\00289\0064\0064\001152\000", !374, !373, !415} ; [ DW_TAG_member ] [_offset] [line 289, size 64, align 64, offset 1152] [from __off64_t]
!415 = !{!"0x16\00__off64_t\00132\000\000\000\000", !401, null, !402} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!416 = !{!"0xd\00__pad1\00297\0064\0064\001216\000", !374, !373, !38} ; [ DW_TAG_member ] [__pad1] [line 297, size 64, align 64, offset 1216] [from ]
!417 = !{!"0xd\00__pad2\00298\0064\0064\001280\000", !374, !373, !38} ; [ DW_TAG_member ] [__pad2] [line 298, size 64, align 64, offset 1280] [from ]
!418 = !{!"0xd\00__pad3\00299\0064\0064\001344\000", !374, !373, !38} ; [ DW_TAG_member ] [__pad3] [line 299, size 64, align 64, offset 1344] [from ]
!419 = !{!"0xd\00__pad4\00300\0064\0064\001408\000", !374, !373, !38} ; [ DW_TAG_member ] [__pad4] [line 300, size 64, align 64, offset 1408] [from ]
!420 = !{!"0xd\00__pad5\00302\0064\0064\001472\000", !374, !373, !421} ; [ DW_TAG_member ] [__pad5] [line 302, size 64, align 64, offset 1472] [from size_t]
!421 = !{!"0x16\00size_t\0062\000\000\000\000", !422, null, !149} ; [ DW_TAG_typedef ] [size_t] [line 62, size 0, align 0, offset 0] [from long unsigned int]
!422 = !{!"/opt/llvm-3.6/bin/../lib/clang/3.6.2/include/stddef.h", !"/home/eq/repos/falco/bench/MiniSat-C_v1.14.1"}
!423 = !{!"0xd\00_mode\00303\0032\0032\001536\000", !374, !373, !5} ; [ DW_TAG_member ] [_mode] [line 303, size 32, align 32, offset 1536] [from int]
!424 = !{!"0xd\00_unused2\00305\00160\008\001568\000", !374, !373, !425} ; [ DW_TAG_member ] [_unused2] [line 305, size 160, align 8, offset 1568] [from ]
!425 = !{!"0x1\00\000\00160\008\000\000\000", null, null, !13, !426, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!426 = !{!427}
!427 = !{!"0x21\000\0020"}                        ; [ DW_TAG_subrange_type ] [0, 19]
!428 = !{!"clang version 3.6.2 (tags/RELEASE_362/final)"}
!429 = !{i32 2, !"Dwarf Version", i32 4}
!430 = !{i32 2, !"Debug Info Version", i32 2}
!431 = !{!"0x101\00argc\0016777384\000", !7, !8, !5} ; [ DW_TAG_arg_variable ] [argc] [line 168]
!432 = !{!"0x102"}                                ; [ DW_TAG_expression ]
!433 = !MDLocation(line: 168, column: 14, scope: !7)
!434 = !{!"0x101\00argv\0033554600\000", !7, !8, !11} ; [ DW_TAG_arg_variable ] [argv] [line 168]
!435 = !MDLocation(line: 168, column: 27, scope: !7)
!436 = !MDLocation(line: 170, column: 17, scope: !7)
!437 = !{!"0x100\00s\00170\000", !7, !8, !21}     ; [ DW_TAG_auto_variable ] [s] [line 170]
!438 = !MDLocation(line: 170, column: 13, scope: !7)
!439 = !MDLocation(line: 173, column: 19, scope: !7)
!440 = !MDLocation(line: 175, column: 9, scope: !441)
!441 = !{!"0xb\00175\009\000", !1, !7}            ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!442 = !MDLocation(line: 175, column: 9, scope: !7)
!443 = !MDLocation(line: 176, column: 17, scope: !441)
!444 = !MDLocation(line: 176, column: 9, scope: !441)
!445 = !MDLocation(line: 177, column: 9, scope: !441)
!446 = !MDLocation(line: 185, column: 10, scope: !7)
!447 = !{!"0x100\00st\00171\000", !7, !8, !17}    ; [ DW_TAG_auto_variable ] [st] [line 171]
!448 = !MDLocation(line: 171, column: 13, scope: !7)
!449 = !MDLocation(line: 187, column: 9, scope: !450)
!450 = !{!"0xb\00187\009\001", !1, !7}            ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!451 = !MDLocation(line: 187, column: 9, scope: !7)
!452 = !MDLocation(line: 188, column: 9, scope: !453)
!453 = !{!"0xb\00187\0023\002", !1, !450}         ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!454 = !MDLocation(line: 189, column: 9, scope: !453)
!455 = !MDLocation(line: 190, column: 9, scope: !453)
!456 = !MDLocation(line: 193, column: 5, scope: !7)
!457 = !MDLocation(line: 196, column: 10, scope: !7)
!458 = !MDLocation(line: 198, column: 5, scope: !7)
!459 = !MDLocation(line: 199, column: 12, scope: !7)
!460 = !MDLocation(line: 199, column: 5, scope: !7)
!461 = !MDLocation(line: 202, column: 10, scope: !462)
!462 = !{!"0xb\00202\0010\003", !1, !7}           ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!463 = !MDLocation(line: 202, column: 10, scope: !7)
!464 = !MDLocation(line: 205, column: 9, scope: !465)
!465 = !{!"0xb\00203\005\004", !1, !462}          ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!466 = !{!"0x100\00k\00204\000", !465, !8, !5}    ; [ DW_TAG_auto_variable ] [k] [line 204]
!467 = !MDLocation(line: 204, column: 13, scope: !465)
!468 = !MDLocation(line: 206, column: 15, scope: !469)
!469 = !{!"0xb\00206\009\005", !1, !465}          ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!470 = !MDLocation(line: 206, column: 26, scope: !471)
!471 = !{!"0xb\00206\009\006", !1, !469}          ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!472 = !MDLocation(line: 206, column: 22, scope: !471)
!473 = !MDLocation(line: 206, column: 9, scope: !469)
!474 = !MDLocation(line: 207, column: 35, scope: !471)
!475 = !MDLocation(line: 207, column: 13, scope: !471)
!476 = !MDLocation(line: 206, column: 41, scope: !471)
!477 = !MDLocation(line: 206, column: 9, scope: !471)
!478 = !MDLocation(line: 208, column: 9, scope: !465)
!479 = !MDLocation(line: 209, column: 5, scope: !465)
!480 = !MDLocation(line: 211, column: 5, scope: !7)
!481 = !MDLocation(line: 212, column: 5, scope: !7)
!482 = !{!"0x101\00in\0016777322\000", !14, !8, !19} ; [ DW_TAG_arg_variable ] [in] [line 106]
!483 = !MDLocation(line: 106, column: 44, scope: !14)
!484 = !{!"0x101\00s\0033554538\000", !14, !8, !21} ; [ DW_TAG_arg_variable ] [s] [line 106]
!485 = !MDLocation(line: 106, column: 56, scope: !14)
!486 = !{!"0x100\00lits\00107\000", !14, !8, !65} ; [ DW_TAG_auto_variable ] [lits] [line 107]
!487 = !MDLocation(line: 107, column: 10, scope: !14)
!488 = !MDLocation(line: 108, column: 5, scope: !14)
!489 = !MDLocation(line: 110, column: 5, scope: !14)
!490 = !MDLocation(line: 111, column: 9, scope: !491)
!491 = !{!"0xb\00110\0013\009", !1, !492}         ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!492 = !{!"0xb\00110\005\008", !1, !493}          ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!493 = !{!"0xb\00110\005\007", !1, !14}           ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!494 = !MDLocation(line: 112, column: 14, scope: !495)
!495 = !{!"0xb\00112\0013\0010", !1, !491}        ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!496 = !MDLocation(line: 112, column: 13, scope: !495)
!497 = !MDLocation(line: 112, column: 13, scope: !491)
!498 = !MDLocation(line: 113, column: 13, scope: !495)
!499 = !MDLocation(line: 114, column: 19, scope: !500)
!500 = !{!"0xb\00114\0018\0011", !1, !495}        ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!501 = !MDLocation(line: 114, column: 18, scope: !500)
!502 = !MDLocation(line: 114, column: 18, scope: !495)
!503 = !MDLocation(line: 114, column: 33, scope: !504)
!504 = !{!"0xb\001", !1, !500}                    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!505 = !MDLocation(line: 114, column: 32, scope: !500)
!506 = !MDLocation(line: 115, column: 13, scope: !500)
!507 = !MDLocation(line: 118, column: 13, scope: !508)
!508 = !{!"0xb\00116\0013\0012", !1, !500}        ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!509 = !MDLocation(line: 119, column: 21, scope: !508)
!510 = !{!"0x100\00begin\00117\000", !508, !8, !60} ; [ DW_TAG_auto_variable ] [begin] [line 117]
!511 = !MDLocation(line: 117, column: 18, scope: !508)
!512 = !MDLocation(line: 120, column: 45, scope: !513)
!513 = !{!"0xb\00120\0017\0013", !1, !508}        ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!514 = !MDLocation(line: 120, column: 18, scope: !513)
!515 = !MDLocation(line: 120, column: 17, scope: !508)
!516 = !MDLocation(line: 121, column: 17, scope: !517)
!517 = !{!"0xb\00120\0063\0014", !1, !513}        ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!518 = !MDLocation(line: 122, column: 17, scope: !517)
!519 = !MDLocation(line: 110, column: 5, scope: !492)
!520 = !MDLocation(line: 126, column: 5, scope: !14)
!521 = !MDLocation(line: 127, column: 12, scope: !14)
!522 = !MDLocation(line: 127, column: 5, scope: !14)
!523 = !MDLocation(line: 128, column: 1, scope: !14)
!524 = !{!"0x101\00v\0016777258\000", !95, !96, !99} ; [ DW_TAG_arg_variable ] [v] [line 42]
!525 = !MDLocation(line: 42, column: 41, scope: !95)
!526 = !MDLocation(line: 42, column: 60, scope: !95)
!527 = !MDLocation(line: 42, column: 55, scope: !95)
!528 = !MDLocation(line: 42, column: 71, scope: !95)
!529 = !{!"0x101\00v\0016777260\000", !100, !96, !99} ; [ DW_TAG_arg_variable ] [v] [line 44]
!530 = !MDLocation(line: 44, column: 41, scope: !100)
!531 = !MDLocation(line: 44, column: 62, scope: !100)
!532 = !MDLocation(line: 44, column: 55, scope: !100)
!533 = !{!"0x101\00v\0016777259\000", !103, !96, !99} ; [ DW_TAG_arg_variable ] [v] [line 43]
!534 = !MDLocation(line: 43, column: 41, scope: !103)
!535 = !MDLocation(line: 43, column: 62, scope: !103)
!536 = !MDLocation(line: 43, column: 55, scope: !103)
!537 = !{!"0x101\00in\0016777311\000", !106, !8, !109} ; [ DW_TAG_arg_variable ] [in] [line 95]
!538 = !MDLocation(line: 95, column: 37, scope: !106)
!539 = !{!"0x101\00s\0033554527\000", !106, !8, !21} ; [ DW_TAG_arg_variable ] [s] [line 95]
!540 = !MDLocation(line: 95, column: 49, scope: !106)
!541 = !{!"0x101\00lits\0050331743\000", !106, !8, !99} ; [ DW_TAG_arg_variable ] [lits] [line 95]
!542 = !MDLocation(line: 95, column: 58, scope: !106)
!543 = !MDLocation(line: 97, column: 5, scope: !106)
!544 = !MDLocation(line: 98, column: 5, scope: !106)
!545 = !MDLocation(line: 99, column: 22, scope: !546)
!546 = !{!"0xb\0098\0013\0017", !1, !547}         ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!547 = !{!"0xb\0098\005\0016", !1, !548}          ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!548 = !{!"0xb\0098\005\0015", !1, !106}          ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!549 = !{!"0x100\00parsed_lit\0096\000", !106, !8, !5} ; [ DW_TAG_auto_variable ] [parsed_lit] [line 96]
!550 = !MDLocation(line: 96, column: 9, scope: !106)
!551 = !MDLocation(line: 100, column: 13, scope: !552)
!552 = !{!"0xb\00100\0013\0018", !1, !546}        ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!553 = !MDLocation(line: 100, column: 13, scope: !546)
!554 = !MDLocation(line: 100, column: 30, scope: !555)
!555 = !{!"0xb\001", !1, !552}                    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!556 = !MDLocation(line: 101, column: 15, scope: !546)
!557 = !{!"0x100\00var\0096\000", !106, !8, !5}   ; [ DW_TAG_auto_variable ] [var] [line 96]
!558 = !MDLocation(line: 96, column: 21, scope: !106)
!559 = !MDLocation(line: 102, column: 26, scope: !546)
!560 = !MDLocation(line: 102, column: 43, scope: !546)
!561 = !MDLocation(line: 102, column: 64, scope: !546)
!562 = !MDLocation(line: 102, column: 56, scope: !546)
!563 = !MDLocation(line: 102, column: 9, scope: !564)
!564 = !{!"0xb\004", !1, !565}                    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!565 = !{!"0xb\003", !1, !546}                    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!566 = !MDLocation(line: 98, column: 5, scope: !547)
!567 = !MDLocation(line: 104, column: 1, scope: !106)
!568 = !{!"0x101\00l\0016777272\000", !110, !111, !61} ; [ DW_TAG_arg_variable ] [l] [line 56]
!569 = !MDLocation(line: 56, column: 33, scope: !110)
!570 = !MDLocation(line: 56, column: 45, scope: !110)
!571 = !MDLocation(line: 56, column: 38, scope: !110)
!572 = !{!"0x101\00v\0016777271\000", !114, !111, !5} ; [ DW_TAG_arg_variable ] [v] [line 55]
!573 = !MDLocation(line: 55, column: 33, scope: !114)
!574 = !MDLocation(line: 55, column: 45, scope: !114)
!575 = !MDLocation(line: 55, column: 38, scope: !114)
!576 = !{!"0x101\00v\0016777262\000", !117, !96, !99} ; [ DW_TAG_arg_variable ] [v] [line 46]
!577 = !MDLocation(line: 46, column: 41, scope: !117)
!578 = !{!"0x101\00e\0033554478\000", !117, !96, !5} ; [ DW_TAG_arg_variable ] [e] [line 46]
!579 = !MDLocation(line: 46, column: 48, scope: !117)
!580 = !MDLocation(line: 48, column: 9, scope: !581)
!581 = !{!"0xb\0048\009\0019", !31, !117}         ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/./vec.h]
!582 = !MDLocation(line: 48, column: 20, scope: !581)
!583 = !MDLocation(line: 48, column: 9, scope: !117)
!584 = !MDLocation(line: 49, column: 23, scope: !585)
!585 = !{!"0xb\0048\0028\0020", !31, !581}        ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/./vec.h]
!586 = !{!"0x100\00newsize\0049\000", !585, !96, !5} ; [ DW_TAG_auto_variable ] [newsize] [line 49]
!587 = !MDLocation(line: 49, column: 13, scope: !585)
!588 = !MDLocation(line: 50, column: 32, scope: !585)
!589 = !MDLocation(line: 50, column: 51, scope: !585)
!590 = !MDLocation(line: 50, column: 39, scope: !585)
!591 = !MDLocation(line: 50, column: 24, scope: !585)
!592 = !MDLocation(line: 50, column: 18, scope: !585)
!593 = !MDLocation(line: 50, column: 9, scope: !585)
!594 = !MDLocation(line: 51, column: 9, scope: !585)
!595 = !MDLocation(line: 51, column: 27, scope: !585)
!596 = !MDLocation(line: 52, column: 12, scope: !117)
!597 = !MDLocation(line: 52, column: 5, scope: !117)
!598 = !MDLocation(line: 53, column: 1, scope: !117)
!599 = !{!"0x101\00in\0016777299\000", !120, !8, !109} ; [ DW_TAG_arg_variable ] [in] [line 83]
!600 = !MDLocation(line: 83, column: 41, scope: !120)
!601 = !{!"0x100\00val\0084\000", !120, !8, !5}   ; [ DW_TAG_auto_variable ] [val] [line 84]
!602 = !MDLocation(line: 84, column: 13, scope: !120)
!603 = !{!"0x100\00_neg\0085\000", !120, !8, !5}  ; [ DW_TAG_auto_variable ] [_neg] [line 85]
!604 = !MDLocation(line: 85, column: 12, scope: !120)
!605 = !MDLocation(line: 86, column: 5, scope: !120)
!606 = !MDLocation(line: 87, column: 15, scope: !607)
!607 = !{!"0xb\0087\0014\0021", !1, !120}         ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!608 = !MDLocation(line: 87, column: 14, scope: !607)
!609 = !MDLocation(line: 87, column: 14, scope: !120)
!610 = !MDLocation(line: 87, column: 37, scope: !607)
!611 = !MDLocation(line: 87, column: 27, scope: !607)
!612 = !MDLocation(line: 88, column: 15, scope: !613)
!613 = !{!"0xb\0088\0014\0022", !1, !607}         ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!614 = !MDLocation(line: 88, column: 14, scope: !613)
!615 = !MDLocation(line: 88, column: 14, scope: !607)
!616 = !MDLocation(line: 88, column: 27, scope: !613)
!617 = !MDLocation(line: 89, column: 10, scope: !618)
!618 = !{!"0xb\0089\009\0023", !1, !120}          ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!619 = !MDLocation(line: 89, column: 9, scope: !618)
!620 = !MDLocation(line: 89, column: 9, scope: !120)
!621 = !MDLocation(line: 89, column: 24, scope: !618)
!622 = !MDLocation(line: 89, column: 23, scope: !618)
!623 = !MDLocation(line: 89, column: 43, scope: !624)
!624 = !{!"0xb\003", !1, !625}                    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!625 = !{!"0xb\001", !1, !618}                    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!626 = !MDLocation(line: 89, column: 90, scope: !618)
!627 = !MDLocation(line: 89, column: 89, scope: !618)
!628 = !MDLocation(line: 89, column: 35, scope: !618)
!629 = !MDLocation(line: 89, column: 96, scope: !618)
!630 = !MDLocation(line: 90, column: 5, scope: !120)
!631 = !MDLocation(line: 90, column: 13, scope: !120)
!632 = !MDLocation(line: 90, column: 12, scope: !120)
!633 = !MDLocation(line: 90, column: 28, scope: !120)
!634 = !MDLocation(line: 90, column: 27, scope: !120)
!635 = !MDLocation(line: 90, column: 5, scope: !636)
!636 = !{!"0xb\003", !1, !120}                    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!637 = !MDLocation(line: 91, column: 15, scope: !120)
!638 = !MDLocation(line: 91, column: 26, scope: !120)
!639 = !MDLocation(line: 91, column: 25, scope: !120)
!640 = !MDLocation(line: 92, column: 9, scope: !120)
!641 = !MDLocation(line: 93, column: 12, scope: !120)
!642 = !MDLocation(line: 93, column: 19, scope: !120)
!643 = !MDLocation(line: 93, column: 5, scope: !644)
!644 = !{!"0xb\004", !1, !636}                    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!645 = !{!"0x101\00v\0016777261\000", !123, !96, !99} ; [ DW_TAG_arg_variable ] [v] [line 45]
!646 = !MDLocation(line: 45, column: 41, scope: !123)
!647 = !{!"0x101\00k\0033554477\000", !123, !96, !5} ; [ DW_TAG_arg_variable ] [k] [line 45]
!648 = !MDLocation(line: 45, column: 48, scope: !123)
!649 = !MDLocation(line: 45, column: 55, scope: !123)
!650 = !MDLocation(line: 45, column: 71, scope: !123)
!651 = !{!"0x101\00in\0016777293\000", !124, !8, !109} ; [ DW_TAG_arg_variable ] [in] [line 77]
!652 = !MDLocation(line: 77, column: 42, scope: !124)
!653 = !MDLocation(line: 78, column: 5, scope: !124)
!654 = !MDLocation(line: 79, column: 14, scope: !655)
!655 = !{!"0xb\0079\0013\0027", !1, !656}         ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!656 = !{!"0xb\0078\0013\0026", !1, !657}         ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!657 = !{!"0xb\0078\005\0025", !1, !658}          ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!658 = !{!"0xb\0078\005\0024", !1, !124}          ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!659 = !MDLocation(line: 79, column: 13, scope: !655)
!660 = !MDLocation(line: 79, column: 13, scope: !656)
!661 = !MDLocation(line: 79, column: 24, scope: !662)
!662 = !{!"0xb\001", !1, !655}                    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!663 = !MDLocation(line: 80, column: 14, scope: !664)
!664 = !{!"0xb\0080\0013\0028", !1, !656}         ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!665 = !MDLocation(line: 80, column: 13, scope: !664)
!666 = !MDLocation(line: 80, column: 13, scope: !656)
!667 = !MDLocation(line: 80, column: 29, scope: !668)
!668 = !{!"0xb\0080\0027\0029", !1, !664}         ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!669 = !MDLocation(line: 80, column: 38, scope: !668)
!670 = !MDLocation(line: 81, column: 9, scope: !656)
!671 = !MDLocation(line: 78, column: 5, scope: !657)
!672 = !MDLocation(line: 81, column: 20, scope: !124)
!673 = !{!"0x101\00in\0016777289\000", !127, !8, !109} ; [ DW_TAG_arg_variable ] [in] [line 73]
!674 = !MDLocation(line: 73, column: 48, scope: !127)
!675 = !MDLocation(line: 74, column: 5, scope: !127)
!676 = !MDLocation(line: 74, column: 14, scope: !127)
!677 = !MDLocation(line: 74, column: 13, scope: !127)
!678 = !MDLocation(line: 74, column: 12, scope: !127)
!679 = !MDLocation(line: 74, column: 27, scope: !127)
!680 = !MDLocation(line: 74, column: 26, scope: !127)
!681 = !MDLocation(line: 74, column: 42, scope: !127)
!682 = !MDLocation(line: 74, column: 41, scope: !127)
!683 = !MDLocation(line: 74, column: 5, scope: !684)
!684 = !{!"0xb\006", !1, !685}                    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!685 = !{!"0xb\004", !1, !127}                    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/main.c]
!686 = !MDLocation(line: 75, column: 9, scope: !127)
!687 = !MDLocation(line: 75, column: 18, scope: !127)
!688 = !{!"0x101\00v\0016777252\000", !128, !96, !99} ; [ DW_TAG_arg_variable ] [v] [line 36]
!689 = !MDLocation(line: 36, column: 36, scope: !128)
!690 = !MDLocation(line: 37, column: 5, scope: !128)
!691 = !MDLocation(line: 38, column: 5, scope: !128)
!692 = !MDLocation(line: 39, column: 40, scope: !128)
!693 = !MDLocation(line: 39, column: 28, scope: !128)
!694 = !MDLocation(line: 39, column: 21, scope: !128)
!695 = !MDLocation(line: 39, column: 15, scope: !128)
!696 = !MDLocation(line: 39, column: 5, scope: !128)
!697 = !MDLocation(line: 40, column: 1, scope: !128)
!698 = !{!"0x101\00l\0016777307\000", !212, !213, !61} ; [ DW_TAG_arg_variable ] [l] [line 91]
!699 = !MDLocation(line: 91, column: 30, scope: !212)
!700 = !MDLocation(line: 91, column: 56, scope: !212)
!701 = !MDLocation(line: 91, column: 75, scope: !212)
!702 = !MDLocation(line: 91, column: 46, scope: !212)
!703 = !MDLocation(line: 91, column: 39, scope: !212)
!704 = !{!"0x101\00c\0016777308\000", !216, !213, !140} ; [ DW_TAG_arg_variable ] [c] [line 92]
!705 = !MDLocation(line: 92, column: 34, scope: !216)
!706 = !MDLocation(line: 92, column: 47, scope: !216)
!707 = !MDLocation(line: 92, column: 46, scope: !216)
!708 = !MDLocation(line: 92, column: 39, scope: !216)
!709 = !{!"0x101\00c\0016777309\000", !220, !213, !140} ; [ DW_TAG_arg_variable ] [c] [line 93]
!710 = !MDLocation(line: 93, column: 34, scope: !220)
!711 = !MDLocation(line: 93, column: 52, scope: !220)
!712 = !MDLocation(line: 93, column: 46, scope: !220)
!713 = !MDLocation(line: 93, column: 39, scope: !220)
!714 = !{!"0x101\00s\0016777566\000", !223, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 350]
!715 = !MDLocation(line: 350, column: 30, scope: !223)
!716 = !{!"0x101\00n\0033554782\000", !223, !213, !5} ; [ DW_TAG_arg_variable ] [n] [line 350]
!717 = !MDLocation(line: 350, column: 36, scope: !223)
!718 = !MDLocation(line: 354, column: 9, scope: !719)
!719 = !{!"0xb\00354\009\000", !138, !223}        ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!720 = !MDLocation(line: 354, column: 9, scope: !223)
!721 = !MDLocation(line: 356, column: 9, scope: !722)
!722 = !{!"0xb\00354\0020\001", !138, !719}       ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!723 = !MDLocation(line: 359, column: 42, scope: !722)
!724 = !MDLocation(line: 359, column: 68, scope: !722)
!725 = !MDLocation(line: 359, column: 55, scope: !722)
!726 = !MDLocation(line: 359, column: 34, scope: !722)
!727 = !MDLocation(line: 359, column: 24, scope: !722)
!728 = !MDLocation(line: 359, column: 9, scope: !722)
!729 = !MDLocation(line: 360, column: 42, scope: !722)
!730 = !MDLocation(line: 360, column: 70, scope: !722)
!731 = !MDLocation(line: 360, column: 55, scope: !722)
!732 = !MDLocation(line: 360, column: 34, scope: !722)
!733 = !MDLocation(line: 360, column: 24, scope: !722)
!734 = !MDLocation(line: 360, column: 9, scope: !722)
!735 = !MDLocation(line: 361, column: 42, scope: !722)
!736 = !MDLocation(line: 361, column: 69, scope: !722)
!737 = !MDLocation(line: 361, column: 34, scope: !722)
!738 = !MDLocation(line: 361, column: 9, scope: !722)
!739 = !MDLocation(line: 362, column: 42, scope: !722)
!740 = !MDLocation(line: 362, column: 67, scope: !722)
!741 = !MDLocation(line: 362, column: 55, scope: !722)
!742 = !MDLocation(line: 362, column: 34, scope: !722)
!743 = !MDLocation(line: 362, column: 24, scope: !722)
!744 = !MDLocation(line: 362, column: 9, scope: !722)
!745 = !MDLocation(line: 363, column: 42, scope: !722)
!746 = !MDLocation(line: 363, column: 71, scope: !722)
!747 = !MDLocation(line: 363, column: 55, scope: !722)
!748 = !MDLocation(line: 363, column: 34, scope: !722)
!749 = !MDLocation(line: 363, column: 24, scope: !722)
!750 = !MDLocation(line: 363, column: 9, scope: !722)
!751 = !MDLocation(line: 364, column: 42, scope: !722)
!752 = !MDLocation(line: 364, column: 67, scope: !722)
!753 = !MDLocation(line: 364, column: 55, scope: !722)
!754 = !MDLocation(line: 364, column: 34, scope: !722)
!755 = !MDLocation(line: 364, column: 24, scope: !722)
!756 = !MDLocation(line: 364, column: 9, scope: !722)
!757 = !MDLocation(line: 365, column: 42, scope: !722)
!758 = !MDLocation(line: 365, column: 69, scope: !722)
!759 = !MDLocation(line: 365, column: 34, scope: !722)
!760 = !MDLocation(line: 365, column: 9, scope: !722)
!761 = !MDLocation(line: 366, column: 42, scope: !722)
!762 = !MDLocation(line: 366, column: 67, scope: !722)
!763 = !MDLocation(line: 366, column: 55, scope: !722)
!764 = !MDLocation(line: 366, column: 34, scope: !722)
!765 = !MDLocation(line: 366, column: 24, scope: !722)
!766 = !MDLocation(line: 366, column: 9, scope: !722)
!767 = !MDLocation(line: 367, column: 5, scope: !722)
!768 = !MDLocation(line: 369, column: 16, scope: !769)
!769 = !{!"0xb\00369\005\002", !138, !223}        ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!770 = !{!"0x100\00var\00352\000", !223, !213, !5} ; [ DW_TAG_auto_variable ] [var] [line 352]
!771 = !MDLocation(line: 352, column: 9, scope: !223)
!772 = !MDLocation(line: 369, column: 10, scope: !769)
!773 = !MDLocation(line: 369, column: 25, scope: !774)
!774 = !{!"0xb\00369\005\003", !138, !769}        ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!775 = !MDLocation(line: 369, column: 5, scope: !769)
!776 = !MDLocation(line: 370, column: 29, scope: !777)
!777 = !{!"0xb\00369\0040\004", !138, !774}       ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!778 = !MDLocation(line: 370, column: 18, scope: !777)
!779 = !MDLocation(line: 370, column: 19, scope: !777)
!780 = !MDLocation(line: 370, column: 9, scope: !777)
!781 = !MDLocation(line: 371, column: 29, scope: !777)
!782 = !MDLocation(line: 371, column: 18, scope: !777)
!783 = !MDLocation(line: 371, column: 19, scope: !777)
!784 = !MDLocation(line: 371, column: 9, scope: !777)
!785 = !MDLocation(line: 372, column: 9, scope: !777)
!786 = !MDLocation(line: 373, column: 9, scope: !777)
!787 = !MDLocation(line: 374, column: 39, scope: !777)
!788 = !MDLocation(line: 374, column: 29, scope: !777)
!789 = !MDLocation(line: 374, column: 9, scope: !777)
!790 = !MDLocation(line: 375, column: 9, scope: !777)
!791 = !MDLocation(line: 376, column: 9, scope: !777)
!792 = !MDLocation(line: 377, column: 9, scope: !777)
!793 = !MDLocation(line: 382, column: 19, scope: !777)
!794 = !MDLocation(line: 382, column: 9, scope: !777)
!795 = !MDLocation(line: 383, column: 9, scope: !777)
!796 = !MDLocation(line: 384, column: 5, scope: !777)
!797 = !MDLocation(line: 369, column: 34, scope: !774)
!798 = !MDLocation(line: 369, column: 5, scope: !774)
!799 = !MDLocation(line: 386, column: 19, scope: !223)
!800 = !MDLocation(line: 386, column: 15, scope: !223)
!801 = !MDLocation(line: 386, column: 33, scope: !802)
!802 = !{!"0xb\002", !138, !223}                  ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!803 = !MDLocation(line: 386, column: 5, scope: !804)
!804 = !{!"0xb\004", !138, !805}                  ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!805 = !{!"0xb\003", !138, !223}                  ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!806 = !MDLocation(line: 387, column: 1, scope: !223)
!807 = !{!"0x101\00s\0016777895\000", !226, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 679]
!808 = !MDLocation(line: 679, column: 34, scope: !226)
!809 = !MDLocation(line: 681, column: 22, scope: !226)
!810 = !{!"0x100\00values\00681\000", !226, !213, !51} ; [ DW_TAG_auto_variable ] [values] [line 681]
!811 = !MDLocation(line: 681, column: 13, scope: !226)
!812 = !{!"0x100\00confl\00682\000", !226, !213, !140} ; [ DW_TAG_auto_variable ] [confl] [line 682]
!813 = !MDLocation(line: 682, column: 13, scope: !226)
!814 = !MDLocation(line: 686, column: 5, scope: !226)
!815 = !MDLocation(line: 686, column: 12, scope: !816)
!816 = !{!"0xb\004", !138, !817}                  ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!817 = !{!"0xb\001", !138, !226}                  ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!818 = !MDLocation(line: 686, column: 26, scope: !819)
!819 = !{!"0xb\002", !138, !226}                  ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!820 = !MDLocation(line: 686, column: 37, scope: !226)
!821 = !MDLocation(line: 686, column: 26, scope: !226)
!822 = !MDLocation(line: 686, column: 5, scope: !823)
!823 = !{!"0xb\003", !138, !226}                  ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!824 = !MDLocation(line: 687, column: 28, scope: !825)
!825 = !{!"0xb\00686\0050\005", !138, !226}       ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!826 = !MDLocation(line: 687, column: 19, scope: !825)
!827 = !{!"0x100\00p\00687\000", !825, !213, !61} ; [ DW_TAG_auto_variable ] [p] [line 687]
!828 = !MDLocation(line: 687, column: 14, scope: !825)
!829 = !MDLocation(line: 688, column: 20, scope: !825)
!830 = !{!"0x100\00ws\00688\000", !825, !213, !150} ; [ DW_TAG_auto_variable ] [ws] [line 688]
!831 = !MDLocation(line: 688, column: 15, scope: !825)
!832 = !MDLocation(line: 689, column: 36, scope: !825)
!833 = !MDLocation(line: 689, column: 26, scope: !825)
!834 = !{!"0x100\00begin\00689\000", !825, !213, !157} ; [ DW_TAG_auto_variable ] [begin] [line 689]
!835 = !MDLocation(line: 689, column: 18, scope: !825)
!836 = !MDLocation(line: 690, column: 34, scope: !825)
!837 = !MDLocation(line: 690, column: 26, scope: !825)
!838 = !{!"0x100\00end\00690\000", !825, !213, !157} ; [ DW_TAG_auto_variable ] [end] [line 690]
!839 = !MDLocation(line: 690, column: 18, scope: !825)
!840 = !MDLocation(line: 693, column: 9, scope: !825)
!841 = !MDLocation(line: 694, column: 9, scope: !825)
!842 = !{!"0x100\00j\00691\000", !825, !213, !157} ; [ DW_TAG_auto_variable ] [j] [line 691]
!843 = !MDLocation(line: 691, column: 23, scope: !825)
!844 = !{!"0x100\00i\00691\000", !825, !213, !157} ; [ DW_TAG_auto_variable ] [i] [line 691]
!845 = !MDLocation(line: 691, column: 18, scope: !825)
!846 = !MDLocation(line: 697, column: 14, scope: !847)
!847 = !{!"0xb\00697\009\006", !138, !825}        ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!848 = !MDLocation(line: 697, column: 29, scope: !849)
!849 = !{!"0xb\00697\009\007", !138, !847}        ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!850 = !MDLocation(line: 697, column: 9, scope: !847)
!851 = !MDLocation(line: 698, column: 31, scope: !852)
!852 = !{!"0xb\00698\0017\009", !138, !853}       ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!853 = !{!"0xb\00697\0039\008", !138, !849}       ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!854 = !MDLocation(line: 698, column: 17, scope: !852)
!855 = !MDLocation(line: 698, column: 17, scope: !853)
!856 = !MDLocation(line: 699, column: 24, scope: !857)
!857 = !{!"0xb\00698\0035\0010", !138, !852}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!858 = !MDLocation(line: 699, column: 18, scope: !857)
!859 = !MDLocation(line: 699, column: 17, scope: !857)
!860 = !MDLocation(line: 700, column: 48, scope: !861)
!861 = !{!"0xb\00700\0021\0011", !138, !857}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!862 = !MDLocation(line: 700, column: 32, scope: !861)
!863 = !MDLocation(line: 700, column: 52, scope: !861)
!864 = !MDLocation(line: 700, column: 22, scope: !861)
!865 = !MDLocation(line: 700, column: 21, scope: !857)
!866 = !MDLocation(line: 701, column: 29, scope: !867)
!867 = !{!"0xb\00700\0072\0012", !138, !861}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!868 = !MDLocation(line: 702, column: 48, scope: !867)
!869 = !MDLocation(line: 702, column: 22, scope: !867)
!870 = !MDLocation(line: 702, column: 21, scope: !867)
!871 = !MDLocation(line: 703, column: 65, scope: !867)
!872 = !MDLocation(line: 703, column: 64, scope: !867)
!873 = !MDLocation(line: 703, column: 48, scope: !867)
!874 = !MDLocation(line: 703, column: 22, scope: !867)
!875 = !MDLocation(line: 703, column: 21, scope: !867)
!876 = !MDLocation(line: 706, column: 21, scope: !867)
!877 = !MDLocation(line: 706, column: 28, scope: !867)
!878 = !MDLocation(line: 707, column: 33, scope: !867)
!879 = !MDLocation(line: 707, column: 32, scope: !867)
!880 = !MDLocation(line: 707, column: 26, scope: !867)
!881 = !MDLocation(line: 707, column: 25, scope: !867)
!882 = !MDLocation(line: 708, column: 17, scope: !867)
!883 = !MDLocation(line: 709, column: 13, scope: !857)
!884 = !MDLocation(line: 713, column: 37, scope: !885)
!885 = !{!"0xb\00709\0018\0013", !138, !852}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!886 = !MDLocation(line: 713, column: 24, scope: !885)
!887 = !{!"0x100\00lits\00683\000", !226, !213, !60} ; [ DW_TAG_auto_variable ] [lits] [line 683]
!888 = !MDLocation(line: 683, column: 13, scope: !226)
!889 = !MDLocation(line: 716, column: 29, scope: !885)
!890 = !{!"0x100\00false_lit\00710\000", !885, !213, !61} ; [ DW_TAG_auto_variable ] [false_lit] [line 710]
!891 = !MDLocation(line: 710, column: 21, scope: !885)
!892 = !MDLocation(line: 717, column: 21, scope: !893)
!893 = !{!"0xb\00717\0021\0014", !138, !885}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!894 = !MDLocation(line: 717, column: 21, scope: !885)
!895 = !MDLocation(line: 718, column: 31, scope: !896)
!896 = !{!"0xb\00717\0042\0015", !138, !893}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!897 = !MDLocation(line: 718, column: 21, scope: !896)
!898 = !MDLocation(line: 719, column: 21, scope: !896)
!899 = !MDLocation(line: 720, column: 17, scope: !896)
!900 = !MDLocation(line: 721, column: 17, scope: !885)
!901 = !MDLocation(line: 721, column: 17, scope: !902)
!902 = !{!"0xb\001", !138, !885}                  ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!903 = !MDLocation(line: 721, column: 17, scope: !904)
!904 = !{!"0xb\002", !138, !885}                  ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!905 = !MDLocation(line: 725, column: 33, scope: !885)
!906 = !MDLocation(line: 725, column: 24, scope: !885)
!907 = !MDLocation(line: 725, column: 23, scope: !885)
!908 = !{!"0x100\00sig\00711\000", !885, !213, !17} ; [ DW_TAG_auto_variable ] [sig] [line 711]
!909 = !MDLocation(line: 711, column: 23, scope: !885)
!910 = !MDLocation(line: 725, column: 50, scope: !885)
!911 = !MDLocation(line: 725, column: 43, scope: !885)
!912 = !MDLocation(line: 726, column: 36, scope: !913)
!913 = !{!"0xb\00726\0021\0016", !138, !885}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!914 = !MDLocation(line: 726, column: 28, scope: !913)
!915 = !MDLocation(line: 726, column: 21, scope: !913)
!916 = !MDLocation(line: 726, column: 49, scope: !913)
!917 = !MDLocation(line: 726, column: 21, scope: !885)
!918 = !MDLocation(line: 727, column: 28, scope: !919)
!919 = !{!"0xb\00726\0053\0017", !138, !913}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!920 = !MDLocation(line: 727, column: 22, scope: !919)
!921 = !MDLocation(line: 727, column: 21, scope: !919)
!922 = !MDLocation(line: 728, column: 17, scope: !919)
!923 = !MDLocation(line: 730, column: 52, scope: !924)
!924 = !{!"0xb\00728\0022\0018", !138, !913}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!925 = !MDLocation(line: 730, column: 40, scope: !924)
!926 = !MDLocation(line: 730, column: 33, scope: !924)
!927 = !{!"0x100\00stop\00730\000", !924, !213, !60} ; [ DW_TAG_auto_variable ] [stop] [line 730]
!928 = !MDLocation(line: 730, column: 26, scope: !924)
!929 = !MDLocation(line: 732, column: 30, scope: !930)
!930 = !{!"0xb\00732\0021\0019", !138, !924}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!931 = !{!"0x100\00k\00731\000", !924, !213, !60} ; [ DW_TAG_auto_variable ] [k] [line 731]
!932 = !MDLocation(line: 731, column: 26, scope: !924)
!933 = !MDLocation(line: 732, column: 26, scope: !930)
!934 = !MDLocation(line: 732, column: 40, scope: !935)
!935 = !{!"0xb\00732\0021\0020", !138, !930}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!936 = !MDLocation(line: 732, column: 21, scope: !930)
!937 = !MDLocation(line: 733, column: 46, scope: !938)
!938 = !{!"0xb\00732\0054\0021", !138, !935}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!939 = !MDLocation(line: 733, column: 37, scope: !938)
!940 = !{!"0x100\00sig\00733\000", !938, !213, !17} ; [ DW_TAG_auto_variable ] [sig] [line 733]
!941 = !MDLocation(line: 733, column: 31, scope: !938)
!942 = !MDLocation(line: 733, column: 58, scope: !938)
!943 = !MDLocation(line: 733, column: 51, scope: !938)
!944 = !MDLocation(line: 734, column: 44, scope: !945)
!945 = !{!"0xb\00734\0029\0022", !138, !938}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!946 = !MDLocation(line: 734, column: 36, scope: !945)
!947 = !MDLocation(line: 734, column: 29, scope: !945)
!948 = !MDLocation(line: 734, column: 52, scope: !945)
!949 = !MDLocation(line: 734, column: 29, scope: !938)
!950 = !MDLocation(line: 735, column: 39, scope: !951)
!951 = !{!"0xb\00734\0056\0023", !138, !945}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!952 = !MDLocation(line: 735, column: 29, scope: !951)
!953 = !MDLocation(line: 736, column: 29, scope: !951)
!954 = !MDLocation(line: 737, column: 67, scope: !951)
!955 = !MDLocation(line: 737, column: 59, scope: !951)
!956 = !MDLocation(line: 737, column: 39, scope: !951)
!957 = !MDLocation(line: 737, column: 77, scope: !951)
!958 = !MDLocation(line: 737, column: 29, scope: !951)
!959 = !MDLocation(line: 738, column: 29, scope: !951)
!960 = !MDLocation(line: 739, column: 21, scope: !938)
!961 = !MDLocation(line: 732, column: 50, scope: !935)
!962 = !MDLocation(line: 732, column: 21, scope: !935)
!963 = !MDLocation(line: 741, column: 28, scope: !924)
!964 = !MDLocation(line: 741, column: 22, scope: !924)
!965 = !MDLocation(line: 741, column: 21, scope: !924)
!966 = !MDLocation(line: 743, column: 36, scope: !967)
!967 = !{!"0xb\00743\0025\0024", !138, !924}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!968 = !MDLocation(line: 743, column: 45, scope: !967)
!969 = !MDLocation(line: 743, column: 26, scope: !967)
!970 = !MDLocation(line: 743, column: 25, scope: !924)
!971 = !MDLocation(line: 744, column: 34, scope: !972)
!972 = !{!"0xb\00743\0049\0025", !138, !967}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!973 = !MDLocation(line: 744, column: 33, scope: !972)
!974 = !MDLocation(line: 746, column: 25, scope: !972)
!975 = !MDLocation(line: 746, column: 32, scope: !972)
!976 = !MDLocation(line: 747, column: 37, scope: !972)
!977 = !MDLocation(line: 747, column: 36, scope: !972)
!978 = !MDLocation(line: 747, column: 30, scope: !972)
!979 = !MDLocation(line: 747, column: 29, scope: !972)
!980 = !MDLocation(line: 748, column: 21, scope: !972)
!981 = !MDLocation(line: 698, column: 33, scope: !852)
!982 = !MDLocation(line: 752, column: 13, scope: !853)
!983 = !MDLocation(line: 697, column: 9, scope: !849)
!984 = !MDLocation(line: 755, column: 44, scope: !825)
!985 = !MDLocation(line: 755, column: 34, scope: !825)
!986 = !MDLocation(line: 755, column: 30, scope: !825)
!987 = !MDLocation(line: 755, column: 9, scope: !825)
!988 = !MDLocation(line: 756, column: 38, scope: !825)
!989 = !MDLocation(line: 756, column: 28, scope: !825)
!990 = !MDLocation(line: 756, column: 24, scope: !825)
!991 = !MDLocation(line: 756, column: 9, scope: !825)
!992 = !MDLocation(line: 759, column: 5, scope: !226)
!993 = !{!"0x101\00s\0016777981\000", !229, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 765]
!994 = !MDLocation(line: 765, column: 30, scope: !229)
!995 = !MDLocation(line: 769, column: 45, scope: !229)
!996 = !MDLocation(line: 769, column: 34, scope: !229)
!997 = !MDLocation(line: 769, column: 24, scope: !229)
!998 = !{!"0x100\00learnts\00769\000", !229, !213, !157} ; [ DW_TAG_auto_variable ] [learnts] [line 769]
!999 = !MDLocation(line: 769, column: 14, scope: !229)
!1000 = !MDLocation(line: 770, column: 24, scope: !229)
!1001 = !{!"0x100\00reasons\00770\000", !229, !213, !157} ; [ DW_TAG_auto_variable ] [reasons] [line 770]
!1002 = !MDLocation(line: 770, column: 14, scope: !229)
!1003 = !MDLocation(line: 772, column: 21, scope: !229)
!1004 = !MDLocation(line: 772, column: 10, scope: !229)
!1005 = !MDLocation(line: 772, column: 45, scope: !229)
!1006 = !MDLocation(line: 772, column: 35, scope: !229)
!1007 = !MDLocation(line: 772, column: 5, scope: !229)
!1008 = !{!"0x100\00j\00767\000", !229, !213, !5} ; [ DW_TAG_auto_variable ] [j] [line 767]
!1009 = !MDLocation(line: 767, column: 17, scope: !229)
!1010 = !{!"0x100\00i\00767\000", !229, !213, !5} ; [ DW_TAG_auto_variable ] [i] [line 767]
!1011 = !MDLocation(line: 767, column: 14, scope: !229)
!1012 = !MDLocation(line: 774, column: 10, scope: !1013)
!1013 = !{!"0xb\00774\005\0026", !138, !229}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1014 = !MDLocation(line: 774, column: 35, scope: !1015)
!1015 = !{!"0xb\00774\005\0027", !138, !1013}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1016 = !MDLocation(line: 774, column: 25, scope: !1015)
!1017 = !MDLocation(line: 774, column: 21, scope: !1015)
!1018 = !MDLocation(line: 774, column: 5, scope: !1013)
!1019 = !MDLocation(line: 775, column: 25, scope: !1020)
!1020 = !{!"0xb\00775\0013\0029", !138, !1021}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1021 = !{!"0xb\00774\0057\0028", !138, !1015}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1022 = !MDLocation(line: 775, column: 13, scope: !1020)
!1023 = !MDLocation(line: 775, column: 13, scope: !1021)
!1024 = !MDLocation(line: 775, column: 74, scope: !1020)
!1025 = !MDLocation(line: 775, column: 61, scope: !1020)
!1026 = !MDLocation(line: 775, column: 60, scope: !1020)
!1027 = !MDLocation(line: 775, column: 52, scope: !1020)
!1028 = !MDLocation(line: 775, column: 44, scope: !1020)
!1029 = !MDLocation(line: 775, column: 91, scope: !1020)
!1030 = !MDLocation(line: 776, column: 29, scope: !1020)
!1031 = !MDLocation(line: 776, column: 13, scope: !1020)
!1032 = !MDLocation(line: 778, column: 28, scope: !1020)
!1033 = !MDLocation(line: 778, column: 21, scope: !1020)
!1034 = !MDLocation(line: 778, column: 13, scope: !1020)
!1035 = !MDLocation(line: 779, column: 5, scope: !1021)
!1036 = !MDLocation(line: 774, column: 53, scope: !1015)
!1037 = !MDLocation(line: 774, column: 5, scope: !1015)
!1038 = !MDLocation(line: 792, column: 17, scope: !229)
!1039 = !MDLocation(line: 792, column: 5, scope: !229)
!1040 = !MDLocation(line: 793, column: 1, scope: !229)
!1041 = !{!"0x101\00array\0016778417\000", !250, !213, !37} ; [ DW_TAG_arg_variable ] [array] [line 1201]
!1042 = !MDLocation(line: 1201, column: 18, scope: !250)
!1043 = !{!"0x101\00size\0033555633\000", !250, !213, !5} ; [ DW_TAG_arg_variable ] [size] [line 1201]
!1044 = !MDLocation(line: 1201, column: 29, scope: !250)
!1045 = !{!"0x101\00comp\0050332849\000", !250, !213, !253} ; [ DW_TAG_arg_variable ] [comp] [line 1201]
!1046 = !MDLocation(line: 1201, column: 40, scope: !250)
!1047 = !{!"0x100\00seed\001203\000", !250, !213, !41} ; [ DW_TAG_auto_variable ] [seed] [line 1203]
!1048 = !MDLocation(line: 1203, column: 12, scope: !250)
!1049 = !MDLocation(line: 1204, column: 5, scope: !250)
!1050 = !MDLocation(line: 1205, column: 1, scope: !250)
!1051 = !MDLocation(line: 891, column: 26, scope: !232)
!1052 = !MDLocation(line: 891, column: 17, scope: !232)
!1053 = !{!"0x100\00s\00891\000", !232, !213, !158} ; [ DW_TAG_auto_variable ] [s] [line 891]
!1054 = !MDLocation(line: 891, column: 13, scope: !232)
!1055 = !MDLocation(line: 894, column: 14, scope: !232)
!1056 = !MDLocation(line: 894, column: 5, scope: !232)
!1057 = !MDLocation(line: 895, column: 14, scope: !232)
!1058 = !MDLocation(line: 895, column: 5, scope: !232)
!1059 = !MDLocation(line: 896, column: 14, scope: !232)
!1060 = !MDLocation(line: 896, column: 5, scope: !232)
!1061 = !MDLocation(line: 897, column: 14, scope: !232)
!1062 = !MDLocation(line: 897, column: 5, scope: !232)
!1063 = !MDLocation(line: 898, column: 14, scope: !232)
!1064 = !MDLocation(line: 898, column: 5, scope: !232)
!1065 = !MDLocation(line: 899, column: 14, scope: !232)
!1066 = !MDLocation(line: 899, column: 5, scope: !232)
!1067 = !MDLocation(line: 900, column: 14, scope: !232)
!1068 = !MDLocation(line: 900, column: 5, scope: !232)
!1069 = !MDLocation(line: 903, column: 5, scope: !232)
!1070 = !MDLocation(line: 904, column: 5, scope: !232)
!1071 = !MDLocation(line: 905, column: 5, scope: !232)
!1072 = !MDLocation(line: 906, column: 5, scope: !232)
!1073 = !MDLocation(line: 907, column: 5, scope: !232)
!1074 = !MDLocation(line: 908, column: 5, scope: !232)
!1075 = !MDLocation(line: 909, column: 5, scope: !232)
!1076 = !MDLocation(line: 910, column: 5, scope: !232)
!1077 = !MDLocation(line: 914, column: 5, scope: !232)
!1078 = !MDLocation(line: 915, column: 5, scope: !232)
!1079 = !MDLocation(line: 916, column: 5, scope: !232)
!1080 = !MDLocation(line: 917, column: 5, scope: !232)
!1081 = !MDLocation(line: 918, column: 5, scope: !232)
!1082 = !MDLocation(line: 919, column: 5, scope: !232)
!1083 = !MDLocation(line: 920, column: 5, scope: !232)
!1084 = !MDLocation(line: 921, column: 5, scope: !232)
!1085 = !MDLocation(line: 922, column: 5, scope: !232)
!1086 = !MDLocation(line: 923, column: 5, scope: !232)
!1087 = !MDLocation(line: 924, column: 5, scope: !232)
!1088 = !MDLocation(line: 927, column: 42, scope: !232)
!1089 = !MDLocation(line: 927, column: 33, scope: !232)
!1090 = !MDLocation(line: 927, column: 5, scope: !232)
!1091 = !MDLocation(line: 928, column: 5, scope: !232)
!1092 = !MDLocation(line: 929, column: 5, scope: !232)
!1093 = !MDLocation(line: 931, column: 5, scope: !232)
!1094 = !MDLocation(line: 932, column: 5, scope: !232)
!1095 = !MDLocation(line: 933, column: 5, scope: !232)
!1096 = !MDLocation(line: 934, column: 5, scope: !232)
!1097 = !MDLocation(line: 935, column: 5, scope: !232)
!1098 = !MDLocation(line: 936, column: 5, scope: !232)
!1099 = !MDLocation(line: 937, column: 5, scope: !232)
!1100 = !MDLocation(line: 938, column: 5, scope: !232)
!1101 = !MDLocation(line: 939, column: 5, scope: !232)
!1102 = !MDLocation(line: 940, column: 5, scope: !232)
!1103 = !MDLocation(line: 941, column: 5, scope: !232)
!1104 = !MDLocation(line: 943, column: 5, scope: !232)
!1105 = !{!"0x101\00s\0016778163\000", !235, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 947]
!1106 = !MDLocation(line: 947, column: 28, scope: !235)
!1107 = !{!"0x100\00i\00949\000", !235, !213, !5} ; [ DW_TAG_auto_variable ] [i] [line 949]
!1108 = !MDLocation(line: 949, column: 9, scope: !235)
!1109 = !MDLocation(line: 950, column: 10, scope: !1110)
!1110 = !{!"0xb\00950\005\0030", !138, !235}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1111 = !MDLocation(line: 950, column: 31, scope: !1112)
!1112 = !{!"0xb\00950\005\0031", !138, !1110}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1113 = !MDLocation(line: 950, column: 21, scope: !1112)
!1114 = !MDLocation(line: 950, column: 17, scope: !1112)
!1115 = !MDLocation(line: 950, column: 5, scope: !1110)
!1116 = !MDLocation(line: 951, column: 14, scope: !1112)
!1117 = !MDLocation(line: 951, column: 25, scope: !1112)
!1118 = !MDLocation(line: 951, column: 9, scope: !1112)
!1119 = !MDLocation(line: 950, column: 45, scope: !1112)
!1120 = !MDLocation(line: 950, column: 5, scope: !1112)
!1121 = !MDLocation(line: 953, column: 10, scope: !1122)
!1122 = !{!"0xb\00953\005\0032", !138, !235}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1123 = !MDLocation(line: 953, column: 31, scope: !1124)
!1124 = !{!"0xb\00953\005\0033", !138, !1122}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1125 = !MDLocation(line: 953, column: 21, scope: !1124)
!1126 = !MDLocation(line: 953, column: 17, scope: !1124)
!1127 = !MDLocation(line: 953, column: 5, scope: !1122)
!1128 = !MDLocation(line: 954, column: 14, scope: !1124)
!1129 = !MDLocation(line: 954, column: 25, scope: !1124)
!1130 = !MDLocation(line: 954, column: 9, scope: !1124)
!1131 = !MDLocation(line: 953, column: 45, scope: !1124)
!1132 = !MDLocation(line: 953, column: 5, scope: !1124)
!1133 = !MDLocation(line: 957, column: 17, scope: !235)
!1134 = !MDLocation(line: 957, column: 5, scope: !235)
!1135 = !MDLocation(line: 958, column: 17, scope: !235)
!1136 = !MDLocation(line: 958, column: 5, scope: !235)
!1137 = !MDLocation(line: 959, column: 17, scope: !235)
!1138 = !MDLocation(line: 959, column: 5, scope: !235)
!1139 = !MDLocation(line: 960, column: 17, scope: !235)
!1140 = !MDLocation(line: 960, column: 5, scope: !235)
!1141 = !MDLocation(line: 961, column: 17, scope: !235)
!1142 = !MDLocation(line: 961, column: 5, scope: !235)
!1143 = !MDLocation(line: 962, column: 17, scope: !235)
!1144 = !MDLocation(line: 962, column: 5, scope: !235)
!1145 = !MDLocation(line: 963, column: 17, scope: !235)
!1146 = !MDLocation(line: 963, column: 5, scope: !235)
!1147 = !MDLocation(line: 964, column: 10, scope: !235)
!1148 = !MDLocation(line: 964, column: 5, scope: !235)
!1149 = !MDLocation(line: 967, column: 9, scope: !1150)
!1150 = !{!"0xb\00967\009\0034", !138, !235}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1151 = !MDLocation(line: 967, column: 9, scope: !235)
!1152 = !{!"0x100\00i\00968\000", !1153, !213, !5} ; [ DW_TAG_auto_variable ] [i] [line 968]
!1153 = !{!"0xb\00967\0024\0035", !138, !1150}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1154 = !MDLocation(line: 968, column: 13, scope: !1153)
!1155 = !MDLocation(line: 969, column: 14, scope: !1156)
!1156 = !{!"0xb\00969\009\0036", !138, !1153}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1157 = !MDLocation(line: 969, column: 25, scope: !1158)
!1158 = !{!"0xb\00969\009\0037", !138, !1156}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1159 = !MDLocation(line: 969, column: 21, scope: !1158)
!1160 = !MDLocation(line: 969, column: 9, scope: !1156)
!1161 = !MDLocation(line: 970, column: 25, scope: !1158)
!1162 = !MDLocation(line: 970, column: 26, scope: !1158)
!1163 = !MDLocation(line: 970, column: 13, scope: !1158)
!1164 = !MDLocation(line: 969, column: 36, scope: !1158)
!1165 = !MDLocation(line: 969, column: 9, scope: !1158)
!1166 = !MDLocation(line: 973, column: 14, scope: !1153)
!1167 = !MDLocation(line: 973, column: 9, scope: !1153)
!1168 = !MDLocation(line: 974, column: 14, scope: !1153)
!1169 = !MDLocation(line: 974, column: 9, scope: !1153)
!1170 = !MDLocation(line: 975, column: 14, scope: !1153)
!1171 = !MDLocation(line: 975, column: 9, scope: !1153)
!1172 = !MDLocation(line: 976, column: 14, scope: !1153)
!1173 = !MDLocation(line: 976, column: 9, scope: !1153)
!1174 = !MDLocation(line: 977, column: 14, scope: !1153)
!1175 = !MDLocation(line: 977, column: 9, scope: !1153)
!1176 = !MDLocation(line: 978, column: 14, scope: !1153)
!1177 = !MDLocation(line: 978, column: 9, scope: !1153)
!1178 = !MDLocation(line: 979, column: 14, scope: !1153)
!1179 = !MDLocation(line: 979, column: 9, scope: !1153)
!1180 = !MDLocation(line: 980, column: 14, scope: !1153)
!1181 = !MDLocation(line: 980, column: 9, scope: !1153)
!1182 = !MDLocation(line: 981, column: 5, scope: !1153)
!1183 = !MDLocation(line: 983, column: 10, scope: !235)
!1184 = !MDLocation(line: 983, column: 5, scope: !235)
!1185 = !MDLocation(line: 984, column: 1, scope: !235)
!1186 = !{!"0x101\00s\0016778203\000", !236, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 987]
!1187 = !MDLocation(line: 987, column: 31, scope: !236)
!1188 = !{!"0x101\00begin\0033555419\000", !236, !213, !60} ; [ DW_TAG_arg_variable ] [begin] [line 987]
!1189 = !MDLocation(line: 987, column: 39, scope: !236)
!1190 = !{!"0x101\00end\0050332635\000", !236, !213, !5} ; [ DW_TAG_arg_variable ] [end] [line 987]
!1191 = !MDLocation(line: 987, column: 50, scope: !236)
!1192 = !MDLocation(line: 994, column: 9, scope: !1193)
!1193 = !{!"0xb\00994\009\0038", !138, !236}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1194 = !MDLocation(line: 994, column: 9, scope: !236)
!1195 = !MDLocation(line: 994, column: 19, scope: !1196)
!1196 = !{!"0xb\001", !138, !1193}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1197 = !MDLocation(line: 998, column: 22, scope: !236)
!1198 = !MDLocation(line: 998, column: 14, scope: !236)
!1199 = !{!"0x100\00maxvar\00990\000", !236, !213, !5} ; [ DW_TAG_auto_variable ] [maxvar] [line 990]
!1200 = !MDLocation(line: 990, column: 9, scope: !236)
!1201 = !{!"0x100\00i\00989\000", !236, !213, !5} ; [ DW_TAG_auto_variable ] [i] [line 989]
!1202 = !MDLocation(line: 989, column: 9, scope: !236)
!1203 = !MDLocation(line: 999, column: 10, scope: !1204)
!1204 = !{!"0xb\00999\005\0039", !138, !236}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1205 = !MDLocation(line: 999, column: 17, scope: !1206)
!1206 = !{!"0xb\00999\005\0040", !138, !1204}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1207 = !MDLocation(line: 999, column: 5, scope: !1204)
!1208 = !MDLocation(line: 1000, column: 17, scope: !1209)
!1209 = !{!"0xb\00999\0030\0041", !138, !1206}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1210 = !{!"0x100\00l\001000\000", !1209, !213, !61} ; [ DW_TAG_auto_variable ] [l] [line 1000]
!1211 = !MDLocation(line: 1000, column: 13, scope: !1209)
!1212 = !MDLocation(line: 1001, column: 18, scope: !1209)
!1213 = !MDLocation(line: 1001, column: 40, scope: !1209)
!1214 = !{!"0x100\00j\00989\000", !236, !213, !5} ; [ DW_TAG_auto_variable ] [j] [line 989]
!1215 = !MDLocation(line: 989, column: 11, scope: !236)
!1216 = !MDLocation(line: 1002, column: 14, scope: !1217)
!1217 = !{!"0xb\001002\009\0042", !138, !1209}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1218 = !MDLocation(line: 1002, column: 21, scope: !1219)
!1219 = !{!"0xb\004", !138, !1220}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1220 = !{!"0xb\001", !138, !1221}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1221 = !{!"0xb\001002\009\0043", !138, !1217}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1222 = !MDLocation(line: 1002, column: 36, scope: !1223)
!1223 = !{!"0xb\002", !138, !1221}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1224 = !MDLocation(line: 1002, column: 30, scope: !1221)
!1225 = !MDLocation(line: 1002, column: 9, scope: !1226)
!1226 = !{!"0xb\003", !138, !1217}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1227 = !MDLocation(line: 1003, column: 30, scope: !1221)
!1228 = !MDLocation(line: 1003, column: 24, scope: !1221)
!1229 = !MDLocation(line: 1003, column: 13, scope: !1221)
!1230 = !MDLocation(line: 1002, column: 46, scope: !1221)
!1231 = !MDLocation(line: 1002, column: 9, scope: !1221)
!1232 = !MDLocation(line: 1004, column: 9, scope: !1209)
!1233 = !MDLocation(line: 1005, column: 5, scope: !1209)
!1234 = !MDLocation(line: 999, column: 26, scope: !1206)
!1235 = !MDLocation(line: 999, column: 5, scope: !1206)
!1236 = !MDLocation(line: 1006, column: 23, scope: !236)
!1237 = !MDLocation(line: 1006, column: 5, scope: !236)
!1238 = !MDLocation(line: 1009, column: 14, scope: !236)
!1239 = !{!"0x100\00values\00991\000", !236, !213, !51} ; [ DW_TAG_auto_variable ] [values] [line 991]
!1240 = !MDLocation(line: 991, column: 12, scope: !236)
!1241 = !{!"0x100\00last\00992\000", !236, !213, !61} ; [ DW_TAG_auto_variable ] [last] [line 992]
!1242 = !MDLocation(line: 992, column: 9, scope: !236)
!1243 = !MDLocation(line: 1013, column: 10, scope: !1244)
!1244 = !{!"0xb\001013\005\0044", !138, !236}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1245 = !MDLocation(line: 1013, column: 21, scope: !1246)
!1246 = !{!"0xb\001013\005\0045", !138, !1244}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1247 = !MDLocation(line: 1013, column: 5, scope: !1244)
!1248 = !MDLocation(line: 1015, column: 31, scope: !1249)
!1249 = !{!"0xb\001013\0034\0046", !138, !1246}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1250 = !MDLocation(line: 1015, column: 22, scope: !1249)
!1251 = !MDLocation(line: 1015, column: 21, scope: !1249)
!1252 = !{!"0x100\00sig\001015\000", !1249, !213, !17} ; [ DW_TAG_auto_variable ] [sig] [line 1015]
!1253 = !MDLocation(line: 1015, column: 15, scope: !1249)
!1254 = !MDLocation(line: 1015, column: 49, scope: !1249)
!1255 = !MDLocation(line: 1015, column: 42, scope: !1249)
!1256 = !MDLocation(line: 1016, column: 13, scope: !1257)
!1257 = !{!"0xb\001016\0013\0047", !138, !1249}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1258 = !MDLocation(line: 1016, column: 25, scope: !1257)
!1259 = !MDLocation(line: 1016, column: 13, scope: !1249)
!1260 = !MDLocation(line: 1016, column: 42, scope: !1261)
!1261 = !{!"0xb\001", !138, !1257}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1262 = !MDLocation(line: 1016, column: 64, scope: !1257)
!1263 = !MDLocation(line: 1016, column: 56, scope: !1257)
!1264 = !MDLocation(line: 1016, column: 49, scope: !1257)
!1265 = !MDLocation(line: 1016, column: 42, scope: !1257)
!1266 = !MDLocation(line: 1017, column: 13, scope: !1257)
!1267 = !MDLocation(line: 1018, column: 18, scope: !1268)
!1268 = !{!"0xb\001018\0018\0048", !138, !1257}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1269 = !MDLocation(line: 1018, column: 18, scope: !1257)
!1270 = !MDLocation(line: 1018, column: 53, scope: !1268)
!1271 = !MDLocation(line: 1018, column: 45, scope: !1268)
!1272 = !MDLocation(line: 1018, column: 38, scope: !1268)
!1273 = !MDLocation(line: 1019, column: 33, scope: !1268)
!1274 = !MDLocation(line: 1019, column: 26, scope: !1268)
!1275 = !MDLocation(line: 1019, column: 20, scope: !1268)
!1276 = !MDLocation(line: 1019, column: 13, scope: !1268)
!1277 = !MDLocation(line: 1020, column: 5, scope: !1249)
!1278 = !MDLocation(line: 1013, column: 30, scope: !1246)
!1279 = !MDLocation(line: 1013, column: 5, scope: !1246)
!1280 = !MDLocation(line: 1024, column: 9, scope: !1281)
!1281 = !{!"0xb\001024\009\0049", !138, !236}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1282 = !MDLocation(line: 1024, column: 9, scope: !236)
!1283 = !MDLocation(line: 1025, column: 9, scope: !1281)
!1284 = !MDLocation(line: 1026, column: 14, scope: !1285)
!1285 = !{!"0xb\001026\0014\0050", !138, !1281}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1286 = !MDLocation(line: 1026, column: 14, scope: !1281)
!1287 = !MDLocation(line: 1027, column: 26, scope: !1285)
!1288 = !MDLocation(line: 1027, column: 16, scope: !1285)
!1289 = !MDLocation(line: 1027, column: 9, scope: !1285)
!1290 = !MDLocation(line: 1030, column: 15, scope: !236)
!1291 = !MDLocation(line: 1030, column: 27, scope: !236)
!1292 = !MDLocation(line: 1030, column: 5, scope: !236)
!1293 = !MDLocation(line: 1033, column: 5, scope: !236)
!1294 = !MDLocation(line: 1034, column: 34, scope: !236)
!1295 = !MDLocation(line: 1034, column: 5, scope: !236)
!1296 = !MDLocation(line: 1036, column: 5, scope: !236)
!1297 = !MDLocation(line: 1037, column: 1, scope: !236)
!1298 = !{!"0x101\00s\0016778256\000", !239, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 1040]
!1299 = !MDLocation(line: 1040, column: 32, scope: !239)
!1300 = !MDLocation(line: 1045, column: 5, scope: !239)
!1301 = !MDLocation(line: 1045, column: 5, scope: !1302)
!1302 = !{!"0xb\001", !138, !239}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1303 = !MDLocation(line: 1045, column: 5, scope: !1304)
!1304 = !{!"0xb\002", !138, !239}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1305 = !MDLocation(line: 1047, column: 9, scope: !1306)
!1306 = !{!"0xb\001047\009\0051", !138, !239}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1307 = !MDLocation(line: 1047, column: 9, scope: !239)
!1308 = !MDLocation(line: 1048, column: 9, scope: !1306)
!1309 = !MDLocation(line: 1050, column: 9, scope: !1310)
!1310 = !{!"0xb\001050\009\0052", !138, !239}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1311 = !MDLocation(line: 1050, column: 21, scope: !1310)
!1312 = !MDLocation(line: 1050, column: 9, scope: !239)
!1313 = !MDLocation(line: 1050, column: 42, scope: !1314)
!1314 = !{!"0xb\001", !138, !1310}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1315 = !MDLocation(line: 1051, column: 9, scope: !1310)
!1316 = !MDLocation(line: 1053, column: 15, scope: !239)
!1317 = !{!"0x100\00reasons\001042\000", !239, !213, !157} ; [ DW_TAG_auto_variable ] [reasons] [line 1042]
!1318 = !MDLocation(line: 1042, column: 14, scope: !239)
!1319 = !{!"0x100\00type\001043\000", !239, !213, !5} ; [ DW_TAG_auto_variable ] [type] [line 1043]
!1320 = !MDLocation(line: 1043, column: 9, scope: !239)
!1321 = !MDLocation(line: 1054, column: 10, scope: !1322)
!1322 = !{!"0xb\001054\005\0053", !138, !239}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1323 = !MDLocation(line: 1054, column: 20, scope: !1324)
!1324 = !{!"0xb\002", !138, !1325}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1325 = !{!"0xb\001", !138, !1326}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1326 = !{!"0xb\001054\005\0054", !138, !1322}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1327 = !MDLocation(line: 1054, column: 5, scope: !1322)
!1328 = !MDLocation(line: 1055, column: 24, scope: !1329)
!1329 = !{!"0xb\001054\0037\0055", !138, !1326}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1330 = !MDLocation(line: 1055, column: 31, scope: !1329)
!1331 = !MDLocation(line: 1055, column: 45, scope: !1329)
!1332 = !{!"0x100\00cs\001055\000", !1329, !213, !150} ; [ DW_TAG_auto_variable ] [cs] [line 1055]
!1333 = !MDLocation(line: 1055, column: 18, scope: !1329)
!1334 = !MDLocation(line: 1056, column: 34, scope: !1329)
!1335 = !MDLocation(line: 1056, column: 24, scope: !1329)
!1336 = !{!"0x100\00cls\001056\000", !1329, !213, !157} ; [ DW_TAG_auto_variable ] [cls] [line 1056]
!1337 = !MDLocation(line: 1056, column: 18, scope: !1329)
!1338 = !{!"0x100\00i\001058\000", !1329, !213, !5} ; [ DW_TAG_auto_variable ] [i] [line 1058]
!1339 = !MDLocation(line: 1058, column: 13, scope: !1329)
!1340 = !{!"0x100\00j\001058\000", !1329, !213, !5} ; [ DW_TAG_auto_variable ] [j] [line 1058]
!1341 = !MDLocation(line: 1058, column: 16, scope: !1329)
!1342 = !MDLocation(line: 1059, column: 14, scope: !1343)
!1343 = !{!"0xb\001059\009\0056", !138, !1329}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1344 = !MDLocation(line: 1059, column: 29, scope: !1345)
!1345 = !{!"0xb\001059\009\0057", !138, !1343}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1346 = !MDLocation(line: 1059, column: 25, scope: !1345)
!1347 = !MDLocation(line: 1059, column: 9, scope: !1343)
!1348 = !MDLocation(line: 1060, column: 47, scope: !1349)
!1349 = !{!"0xb\001060\0017\0059", !138, !1350}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1350 = !{!"0xb\001059\0048\0058", !138, !1345}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1351 = !MDLocation(line: 1060, column: 34, scope: !1349)
!1352 = !MDLocation(line: 1060, column: 33, scope: !1349)
!1353 = !MDLocation(line: 1060, column: 25, scope: !1349)
!1354 = !MDLocation(line: 1060, column: 17, scope: !1349)
!1355 = !MDLocation(line: 1060, column: 60, scope: !1349)
!1356 = !MDLocation(line: 1060, column: 17, scope: !1350)
!1357 = !MDLocation(line: 1061, column: 35, scope: !1349)
!1358 = !MDLocation(line: 1061, column: 17, scope: !1349)
!1359 = !MDLocation(line: 1062, column: 33, scope: !1349)
!1360 = !MDLocation(line: 1062, column: 17, scope: !1349)
!1361 = !MDLocation(line: 1064, column: 28, scope: !1349)
!1362 = !MDLocation(line: 1064, column: 21, scope: !1349)
!1363 = !MDLocation(line: 1064, column: 17, scope: !1349)
!1364 = !MDLocation(line: 1065, column: 9, scope: !1350)
!1365 = !MDLocation(line: 1059, column: 44, scope: !1345)
!1366 = !MDLocation(line: 1059, column: 9, scope: !1345)
!1367 = !MDLocation(line: 1066, column: 9, scope: !1329)
!1368 = !MDLocation(line: 1067, column: 5, scope: !1329)
!1369 = !MDLocation(line: 1054, column: 30, scope: !1326)
!1370 = !MDLocation(line: 1054, column: 5, scope: !1326)
!1371 = !MDLocation(line: 1069, column: 25, scope: !239)
!1372 = !MDLocation(line: 1069, column: 5, scope: !239)
!1373 = !MDLocation(line: 1071, column: 31, scope: !239)
!1374 = !MDLocation(line: 1071, column: 59, scope: !239)
!1375 = !MDLocation(line: 1071, column: 25, scope: !239)
!1376 = !MDLocation(line: 1071, column: 5, scope: !239)
!1377 = !MDLocation(line: 1073, column: 5, scope: !239)
!1378 = !MDLocation(line: 1074, column: 1, scope: !239)
!1379 = !{!"0x101\00s\0016778293\000", !242, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 1077]
!1380 = !MDLocation(line: 1077, column: 29, scope: !242)
!1381 = !{!"0x101\00begin\0033555509\000", !242, !213, !60} ; [ DW_TAG_arg_variable ] [begin] [line 1077]
!1382 = !MDLocation(line: 1077, column: 37, scope: !242)
!1383 = !{!"0x101\00end\0050332725\000", !242, !213, !60} ; [ DW_TAG_arg_variable ] [end] [line 1077]
!1384 = !MDLocation(line: 1077, column: 49, scope: !242)
!1385 = !{!"0x100\00nof_conflicts\001079\000", !242, !213, !5} ; [ DW_TAG_auto_variable ] [nof_conflicts] [line 1079]
!1386 = !MDLocation(line: 1079, column: 10, scope: !242)
!1387 = !MDLocation(line: 1080, column: 26, scope: !242)
!1388 = !{!"0x100\00nof_learnts\001080\000", !242, !213, !5} ; [ DW_TAG_auto_variable ] [nof_learnts] [line 1080]
!1389 = !MDLocation(line: 1080, column: 10, scope: !242)
!1390 = !{!"0x100\00status\001081\000", !242, !213, !17} ; [ DW_TAG_auto_variable ] [status] [line 1081]
!1391 = !MDLocation(line: 1081, column: 13, scope: !242)
!1392 = !MDLocation(line: 1082, column: 29, scope: !242)
!1393 = !{!"0x100\00values\001082\000", !242, !213, !51} ; [ DW_TAG_auto_variable ] [values] [line 1082]
!1394 = !MDLocation(line: 1082, column: 13, scope: !242)
!1395 = !{!"0x100\00i\001083\000", !242, !213, !60} ; [ DW_TAG_auto_variable ] [i] [line 1083]
!1396 = !MDLocation(line: 1083, column: 13, scope: !242)
!1397 = !MDLocation(line: 1086, column: 10, scope: !1398)
!1398 = !{!"0xb\001086\005\0060", !138, !242}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1399 = !MDLocation(line: 1086, column: 21, scope: !1400)
!1400 = !{!"0xb\001086\005\0061", !138, !1398}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1401 = !MDLocation(line: 1086, column: 5, scope: !1398)
!1402 = !MDLocation(line: 1087, column: 26, scope: !1403)
!1403 = !{!"0xb\001086\0034\0062", !138, !1400}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1404 = !MDLocation(line: 1087, column: 17, scope: !1403)
!1405 = !MDLocation(line: 1087, column: 48, scope: !1403)
!1406 = !MDLocation(line: 1087, column: 40, scope: !1403)
!1407 = !MDLocation(line: 1087, column: 33, scope: !1403)
!1408 = !MDLocation(line: 1087, column: 32, scope: !1403)
!1409 = !MDLocation(line: 1087, column: 70, scope: !1403)
!1410 = !MDLocation(line: 1087, column: 62, scope: !1403)
!1411 = !MDLocation(line: 1087, column: 55, scope: !1403)
!1412 = !MDLocation(line: 1087, column: 9, scope: !1413)
!1413 = !{!"0xb\004", !138, !1414}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1414 = !{!"0xb\003", !138, !1403}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1415 = !MDLocation(line: 1089, column: 13, scope: !1416)
!1416 = !{!"0xb\001087\0075\0063", !138, !1403}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1417 = !MDLocation(line: 1091, column: 23, scope: !1416)
!1418 = !MDLocation(line: 1091, column: 13, scope: !1416)
!1419 = !MDLocation(line: 1092, column: 17, scope: !1420)
!1420 = !{!"0xb\001092\0017\0064", !138, !1416}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1421 = !MDLocation(line: 1092, column: 17, scope: !1416)
!1422 = !MDLocation(line: 1093, column: 17, scope: !1420)
!1423 = !MDLocation(line: 1092, column: 40, scope: !1424)
!1424 = !{!"0xb\001", !138, !1420}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1425 = !MDLocation(line: 1096, column: 13, scope: !1416)
!1426 = !MDLocation(line: 1097, column: 13, scope: !1416)
!1427 = !MDLocation(line: 1099, column: 5, scope: !1403)
!1428 = !MDLocation(line: 1086, column: 30, scope: !1400)
!1429 = !MDLocation(line: 1086, column: 5, scope: !1400)
!1430 = !MDLocation(line: 1101, column: 21, scope: !242)
!1431 = !MDLocation(line: 1101, column: 5, scope: !242)
!1432 = !MDLocation(line: 1103, column: 9, scope: !1433)
!1433 = !{!"0xb\001103\009\0065", !138, !242}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1434 = !MDLocation(line: 1103, column: 9, scope: !242)
!1435 = !MDLocation(line: 1104, column: 9, scope: !1436)
!1436 = !{!"0xb\001103\0027\0066", !138, !1433}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1437 = !MDLocation(line: 1105, column: 9, scope: !1436)
!1438 = !MDLocation(line: 1106, column: 9, scope: !1436)
!1439 = !MDLocation(line: 1107, column: 9, scope: !1436)
!1440 = !MDLocation(line: 1108, column: 5, scope: !1436)
!1441 = !MDLocation(line: 1110, column: 5, scope: !242)
!1442 = !MDLocation(line: 1110, column: 12, scope: !1443)
!1443 = !{!"0xb\002", !138, !1444}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1444 = !{!"0xb\001", !138, !242}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1445 = !MDLocation(line: 1128, column: 18, scope: !1446)
!1446 = !{!"0xb\001110\0030\0067", !138, !242}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1447 = !MDLocation(line: 1132, column: 9, scope: !1448)
!1448 = !{!"0xb\001132\009\0068", !138, !242}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1449 = !MDLocation(line: 1132, column: 9, scope: !242)
!1450 = !MDLocation(line: 1133, column: 9, scope: !1448)
!1451 = !MDLocation(line: 1135, column: 5, scope: !242)
!1452 = !MDLocation(line: 1136, column: 12, scope: !242)
!1453 = !MDLocation(line: 1136, column: 5, scope: !242)
!1454 = !MDLocation(line: 1137, column: 1, scope: !242)
!1455 = !{!"0x101\00s\0016778362\000", !248, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 1146]
!1456 = !MDLocation(line: 1146, column: 29, scope: !248)
!1457 = !MDLocation(line: 1148, column: 22, scope: !248)
!1458 = !MDLocation(line: 1148, column: 12, scope: !248)
!1459 = !MDLocation(line: 1148, column: 5, scope: !248)
!1460 = !{!"0x101\00s\0016778356\000", !245, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 1140]
!1461 = !MDLocation(line: 1140, column: 26, scope: !245)
!1462 = !MDLocation(line: 1142, column: 12, scope: !245)
!1463 = !MDLocation(line: 1142, column: 5, scope: !245)
!1464 = !{!"0x101\00s\0016778368\000", !249, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 1152]
!1465 = !MDLocation(line: 1152, column: 31, scope: !249)
!1466 = !MDLocation(line: 1154, column: 17, scope: !249)
!1467 = !MDLocation(line: 1154, column: 12, scope: !249)
!1468 = !MDLocation(line: 1154, column: 5, scope: !249)
!1469 = !{!"0x101\00v\0016777280\000", !353, !96, !150} ; [ DW_TAG_arg_variable ] [v] [line 64]
!1470 = !MDLocation(line: 64, column: 36, scope: !353)
!1471 = !MDLocation(line: 65, column: 5, scope: !353)
!1472 = !MDLocation(line: 66, column: 5, scope: !353)
!1473 = !MDLocation(line: 67, column: 44, scope: !353)
!1474 = !MDLocation(line: 67, column: 30, scope: !353)
!1475 = !MDLocation(line: 67, column: 23, scope: !353)
!1476 = !MDLocation(line: 67, column: 15, scope: !353)
!1477 = !MDLocation(line: 67, column: 5, scope: !353)
!1478 = !MDLocation(line: 68, column: 1, scope: !353)
!1479 = !{!"0x101\00v\0016777260\000", !350, !96, !272} ; [ DW_TAG_arg_variable ] [v] [line 44]
!1480 = !MDLocation(line: 44, column: 41, scope: !350)
!1481 = !MDLocation(line: 44, column: 62, scope: !350)
!1482 = !MDLocation(line: 44, column: 55, scope: !350)
!1483 = !{!"0x101\00v\0016777262\000", !349, !96, !272} ; [ DW_TAG_arg_variable ] [v] [line 46]
!1484 = !MDLocation(line: 46, column: 41, scope: !349)
!1485 = !{!"0x101\00e\0033554478\000", !349, !96, !5} ; [ DW_TAG_arg_variable ] [e] [line 46]
!1486 = !MDLocation(line: 46, column: 48, scope: !349)
!1487 = !MDLocation(line: 48, column: 9, scope: !1488)
!1488 = !{!"0xb\0048\009\00186", !31, !349}       ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/./vec.h]
!1489 = !MDLocation(line: 48, column: 20, scope: !1488)
!1490 = !MDLocation(line: 48, column: 9, scope: !349)
!1491 = !MDLocation(line: 49, column: 23, scope: !1492)
!1492 = !{!"0xb\0048\0028\00187", !31, !1488}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/./vec.h]
!1493 = !{!"0x100\00newsize\0049\000", !1492, !96, !5} ; [ DW_TAG_auto_variable ] [newsize] [line 49]
!1494 = !MDLocation(line: 49, column: 13, scope: !1492)
!1495 = !MDLocation(line: 50, column: 32, scope: !1492)
!1496 = !MDLocation(line: 50, column: 51, scope: !1492)
!1497 = !MDLocation(line: 50, column: 39, scope: !1492)
!1498 = !MDLocation(line: 50, column: 24, scope: !1492)
!1499 = !MDLocation(line: 50, column: 18, scope: !1492)
!1500 = !MDLocation(line: 50, column: 9, scope: !1492)
!1501 = !MDLocation(line: 51, column: 9, scope: !1492)
!1502 = !MDLocation(line: 51, column: 27, scope: !1492)
!1503 = !MDLocation(line: 52, column: 12, scope: !349)
!1504 = !MDLocation(line: 52, column: 5, scope: !349)
!1505 = !MDLocation(line: 53, column: 1, scope: !349)
!1506 = !{!"0x101\00s\0016777330\000", !348, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 114]
!1507 = !MDLocation(line: 114, column: 41, scope: !348)
!1508 = !{!"0x101\00v\0033554546\000", !348, !213, !5} ; [ DW_TAG_arg_variable ] [v] [line 114]
!1509 = !MDLocation(line: 114, column: 48, scope: !348)
!1510 = !MDLocation(line: 116, column: 24, scope: !348)
!1511 = !{!"0x100\00orderpos\00116\000", !348, !213, !4} ; [ DW_TAG_auto_variable ] [orderpos] [line 116]
!1512 = !MDLocation(line: 116, column: 13, scope: !348)
!1513 = !MDLocation(line: 117, column: 24, scope: !348)
!1514 = !{!"0x100\00activity\00117\000", !348, !213, !49} ; [ DW_TAG_auto_variable ] [activity] [line 117]
!1515 = !MDLocation(line: 117, column: 13, scope: !348)
!1516 = !MDLocation(line: 118, column: 35, scope: !348)
!1517 = !MDLocation(line: 118, column: 24, scope: !348)
!1518 = !{!"0x100\00heap\00118\000", !348, !213, !4} ; [ DW_TAG_auto_variable ] [heap] [line 118]
!1519 = !MDLocation(line: 118, column: 13, scope: !348)
!1520 = !MDLocation(line: 119, column: 24, scope: !348)
!1521 = !{!"0x100\00i\00119\000", !348, !213, !5} ; [ DW_TAG_auto_variable ] [i] [line 119]
!1522 = !MDLocation(line: 119, column: 13, scope: !348)
!1523 = !MDLocation(line: 120, column: 24, scope: !348)
!1524 = !{!"0x100\00x\00120\000", !348, !213, !5} ; [ DW_TAG_auto_variable ] [x] [line 120]
!1525 = !MDLocation(line: 120, column: 13, scope: !348)
!1526 = !MDLocation(line: 121, column: 25, scope: !348)
!1527 = !MDLocation(line: 121, column: 24, scope: !348)
!1528 = !{!"0x100\00parent\00121\000", !348, !213, !5} ; [ DW_TAG_auto_variable ] [parent] [line 121]
!1529 = !MDLocation(line: 121, column: 13, scope: !348)
!1530 = !MDLocation(line: 123, column: 5, scope: !348)
!1531 = !MDLocation(line: 123, column: 5, scope: !1532)
!1532 = !{!"0xb\001", !138, !348}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1533 = !MDLocation(line: 123, column: 5, scope: !1534)
!1534 = !{!"0xb\002", !138, !348}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1535 = !MDLocation(line: 125, column: 5, scope: !348)
!1536 = !MDLocation(line: 125, column: 12, scope: !1537)
!1537 = !{!"0xb\004", !138, !1532}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1538 = !MDLocation(line: 125, column: 22, scope: !348)
!1539 = !MDLocation(line: 125, column: 45, scope: !348)
!1540 = !MDLocation(line: 125, column: 36, scope: !348)
!1541 = !MDLocation(line: 125, column: 5, scope: !1542)
!1542 = !{!"0xb\003", !138, !348}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1543 = !MDLocation(line: 126, column: 29, scope: !1544)
!1544 = !{!"0xb\00125\0059\00185", !138, !348}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1545 = !MDLocation(line: 126, column: 9, scope: !1544)
!1546 = !MDLocation(line: 127, column: 18, scope: !1544)
!1547 = !MDLocation(line: 127, column: 9, scope: !1544)
!1548 = !MDLocation(line: 129, column: 30, scope: !1544)
!1549 = !MDLocation(line: 129, column: 29, scope: !1544)
!1550 = !MDLocation(line: 131, column: 5, scope: !348)
!1551 = !MDLocation(line: 132, column: 5, scope: !348)
!1552 = !MDLocation(line: 133, column: 1, scope: !348)
!1553 = !{!"0x101\00s\0016777315\000", !345, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 99]
!1554 = !MDLocation(line: 99, column: 54, scope: !345)
!1555 = !{!"0x101\00l\0033554531\000", !345, !213, !61} ; [ DW_TAG_arg_variable ] [l] [line 99]
!1556 = !MDLocation(line: 99, column: 61, scope: !345)
!1557 = !MDLocation(line: 99, column: 72, scope: !345)
!1558 = !MDLocation(line: 99, column: 73, scope: !345)
!1559 = !MDLocation(line: 99, column: 65, scope: !345)
!1560 = !{!"0x101\00v\0016777287\000", !342, !96, !150} ; [ DW_TAG_arg_variable ] [v] [line 71]
!1561 = !MDLocation(line: 71, column: 41, scope: !342)
!1562 = !MDLocation(line: 71, column: 62, scope: !342)
!1563 = !MDLocation(line: 71, column: 55, scope: !342)
!1564 = !{!"0x101\00v\0016777288\000", !339, !96, !150} ; [ DW_TAG_arg_variable ] [v] [line 72]
!1565 = !MDLocation(line: 72, column: 41, scope: !339)
!1566 = !MDLocation(line: 72, column: 62, scope: !339)
!1567 = !MDLocation(line: 72, column: 55, scope: !339)
!1568 = !{!"0x101\00s\0016777606\000", !335, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 390]
!1569 = !MDLocation(line: 390, column: 36, scope: !335)
!1570 = !{!"0x101\00l\0033554822\000", !335, !213, !61} ; [ DW_TAG_arg_variable ] [l] [line 390]
!1571 = !MDLocation(line: 390, column: 43, scope: !335)
!1572 = !{!"0x101\00from\0050332038\000", !335, !213, !140} ; [ DW_TAG_arg_variable ] [from] [line 390]
!1573 = !MDLocation(line: 390, column: 54, scope: !335)
!1574 = !MDLocation(line: 392, column: 21, scope: !335)
!1575 = !{!"0x100\00values\00392\000", !335, !213, !51} ; [ DW_TAG_auto_variable ] [values] [line 392]
!1576 = !MDLocation(line: 392, column: 12, scope: !335)
!1577 = !MDLocation(line: 393, column: 21, scope: !335)
!1578 = !{!"0x100\00v\00393\000", !335, !213, !5} ; [ DW_TAG_auto_variable ] [v] [line 393]
!1579 = !MDLocation(line: 393, column: 12, scope: !335)
!1580 = !MDLocation(line: 394, column: 21, scope: !335)
!1581 = !{!"0x100\00val\00394\000", !335, !213, !17} ; [ DW_TAG_auto_variable ] [val] [line 394]
!1582 = !MDLocation(line: 394, column: 12, scope: !335)
!1583 = !MDLocation(line: 399, column: 18, scope: !335)
!1584 = !MDLocation(line: 399, column: 17, scope: !335)
!1585 = !{!"0x100\00sig\00399\000", !335, !213, !17} ; [ DW_TAG_auto_variable ] [sig] [line 399]
!1586 = !MDLocation(line: 399, column: 11, scope: !335)
!1587 = !MDLocation(line: 399, column: 38, scope: !335)
!1588 = !MDLocation(line: 399, column: 31, scope: !335)
!1589 = !MDLocation(line: 400, column: 9, scope: !1590)
!1590 = !{!"0xb\00400\009\00182", !138, !335}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1591 = !MDLocation(line: 400, column: 9, scope: !335)
!1592 = !MDLocation(line: 401, column: 16, scope: !1593)
!1593 = !{!"0xb\00400\0024\00183", !138, !1590}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1594 = !MDLocation(line: 401, column: 23, scope: !1593)
!1595 = !MDLocation(line: 401, column: 9, scope: !1593)
!1596 = !MDLocation(line: 407, column: 28, scope: !1597)
!1597 = !{!"0xb\00402\0010\00184", !138, !1590}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1598 = !{!"0x100\00levels\00407\000", !1597, !213, !4} ; [ DW_TAG_auto_variable ] [levels] [line 407]
!1599 = !MDLocation(line: 407, column: 18, scope: !1597)
!1600 = !MDLocation(line: 408, column: 28, scope: !1597)
!1601 = !{!"0x100\00reasons\00408\000", !1597, !213, !157} ; [ DW_TAG_auto_variable ] [reasons] [line 408]
!1602 = !MDLocation(line: 408, column: 18, scope: !1597)
!1603 = !MDLocation(line: 410, column: 9, scope: !1597)
!1604 = !MDLocation(line: 411, column: 22, scope: !1597)
!1605 = !MDLocation(line: 411, column: 9, scope: !1597)
!1606 = !MDLocation(line: 412, column: 9, scope: !1597)
!1607 = !MDLocation(line: 413, column: 18, scope: !1597)
!1608 = !MDLocation(line: 413, column: 9, scope: !1597)
!1609 = !MDLocation(line: 415, column: 9, scope: !1597)
!1610 = !MDLocation(line: 416, column: 9, scope: !1597)
!1611 = !MDLocation(line: 418, column: 1, scope: !335)
!1612 = !{!"0x101\00l\0016777272\000", !334, !111, !61} ; [ DW_TAG_arg_variable ] [l] [line 56]
!1613 = !MDLocation(line: 56, column: 33, scope: !334)
!1614 = !MDLocation(line: 56, column: 45, scope: !334)
!1615 = !MDLocation(line: 56, column: 38, scope: !334)
!1616 = !{!"0x101\00c\0016777299\000", !331, !213, !140} ; [ DW_TAG_arg_variable ] [c] [line 83]
!1617 = !MDLocation(line: 83, column: 48, scope: !331)
!1618 = !MDLocation(line: 83, column: 69, scope: !331)
!1619 = !MDLocation(line: 83, column: 62, scope: !331)
!1620 = !{!"0x101\00l\0016777274\000", !330, !111, !61} ; [ DW_TAG_arg_variable ] [l] [line 58]
!1621 = !MDLocation(line: 58, column: 33, scope: !330)
!1622 = !MDLocation(line: 58, column: 46, scope: !330)
!1623 = !MDLocation(line: 58, column: 38, scope: !330)
!1624 = !{!"0x101\00l\0016777273\000", !327, !111, !61} ; [ DW_TAG_arg_variable ] [l] [line 57]
!1625 = !MDLocation(line: 57, column: 33, scope: !327)
!1626 = !MDLocation(line: 57, column: 45, scope: !327)
!1627 = !MDLocation(line: 57, column: 38, scope: !327)
!1628 = !{!"0x101\00c\0016777298\000", !326, !213, !140} ; [ DW_TAG_arg_variable ] [c] [line 82]
!1629 = !MDLocation(line: 82, column: 48, scope: !326)
!1630 = !MDLocation(line: 82, column: 69, scope: !326)
!1631 = !MDLocation(line: 82, column: 62, scope: !326)
!1632 = !{!"0x101\00v\0016777290\000", !325, !96, !150} ; [ DW_TAG_arg_variable ] [v] [line 74]
!1633 = !MDLocation(line: 74, column: 41, scope: !325)
!1634 = !{!"0x101\00e\0033554506\000", !325, !96, !38} ; [ DW_TAG_arg_variable ] [e] [line 74]
!1635 = !MDLocation(line: 74, column: 50, scope: !325)
!1636 = !MDLocation(line: 76, column: 9, scope: !1637)
!1637 = !{!"0xb\0076\009\00180", !31, !325}       ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/./vec.h]
!1638 = !MDLocation(line: 76, column: 20, scope: !1637)
!1639 = !MDLocation(line: 76, column: 9, scope: !325)
!1640 = !MDLocation(line: 77, column: 23, scope: !1641)
!1641 = !{!"0xb\0076\0028\00181", !31, !1637}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/./vec.h]
!1642 = !{!"0x100\00newsize\0077\000", !1641, !96, !5} ; [ DW_TAG_auto_variable ] [newsize] [line 77]
!1643 = !MDLocation(line: 77, column: 13, scope: !1641)
!1644 = !MDLocation(line: 78, column: 34, scope: !1641)
!1645 = !MDLocation(line: 78, column: 55, scope: !1641)
!1646 = !MDLocation(line: 78, column: 41, scope: !1641)
!1647 = !MDLocation(line: 78, column: 26, scope: !1641)
!1648 = !MDLocation(line: 78, column: 18, scope: !1641)
!1649 = !MDLocation(line: 78, column: 9, scope: !1641)
!1650 = !MDLocation(line: 79, column: 9, scope: !1641)
!1651 = !MDLocation(line: 79, column: 27, scope: !1641)
!1652 = !MDLocation(line: 80, column: 12, scope: !325)
!1653 = !MDLocation(line: 80, column: 5, scope: !325)
!1654 = !MDLocation(line: 81, column: 1, scope: !325)
!1655 = !{!"0x101\00v\0016777289\000", !322, !96, !150} ; [ DW_TAG_arg_variable ] [v] [line 73]
!1656 = !MDLocation(line: 73, column: 41, scope: !322)
!1657 = !{!"0x101\00k\0033554505\000", !322, !96, !5} ; [ DW_TAG_arg_variable ] [k] [line 73]
!1658 = !MDLocation(line: 73, column: 50, scope: !322)
!1659 = !MDLocation(line: 73, column: 55, scope: !322)
!1660 = !MDLocation(line: 73, column: 71, scope: !322)
!1661 = !{!"0x101\00x\0016777978\000", !321, !213, !256} ; [ DW_TAG_arg_variable ] [x] [line 762]
!1662 = !MDLocation(line: 762, column: 43, scope: !321)
!1663 = !{!"0x101\00y\0033555194\000", !321, !213, !256} ; [ DW_TAG_arg_variable ] [y] [line 762]
!1664 = !MDLocation(line: 762, column: 58, scope: !321)
!1665 = !MDLocation(line: 763, column: 24, scope: !321)
!1666 = !MDLocation(line: 763, column: 12, scope: !321)
!1667 = !MDLocation(line: 763, column: 56, scope: !321)
!1668 = !MDLocation(line: 763, column: 44, scope: !321)
!1669 = !MDLocation(line: 763, column: 92, scope: !321)
!1670 = !MDLocation(line: 763, column: 76, scope: !321)
!1671 = !MDLocation(line: 763, column: 122, scope: !321)
!1672 = !MDLocation(line: 763, column: 106, scope: !321)
!1673 = !MDLocation(line: 763, column: 12, scope: !1674)
!1674 = !{!"0xb\002", !138, !321}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1675 = !MDLocation(line: 763, column: 5, scope: !321)
!1676 = !{!"0x101\00s\0016777522\000", !317, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 306]
!1677 = !MDLocation(line: 306, column: 35, scope: !317)
!1678 = !{!"0x101\00c\0033554738\000", !317, !213, !140} ; [ DW_TAG_arg_variable ] [c] [line 306]
!1679 = !MDLocation(line: 306, column: 46, scope: !317)
!1680 = !MDLocation(line: 308, column: 17, scope: !317)
!1681 = !{!"0x100\00lits\00308\000", !317, !213, !60} ; [ DW_TAG_auto_variable ] [lits] [line 308]
!1682 = !MDLocation(line: 308, column: 10, scope: !317)
!1683 = !MDLocation(line: 309, column: 5, scope: !317)
!1684 = !MDLocation(line: 309, column: 5, scope: !1685)
!1685 = !{!"0xb\001", !138, !317}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1686 = !MDLocation(line: 309, column: 5, scope: !1687)
!1687 = !{!"0xb\002", !138, !317}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1688 = !MDLocation(line: 310, column: 5, scope: !317)
!1689 = !MDLocation(line: 310, column: 5, scope: !1685)
!1690 = !MDLocation(line: 310, column: 5, scope: !1687)
!1691 = !MDLocation(line: 315, column: 5, scope: !317)
!1692 = !MDLocation(line: 315, column: 5, scope: !1685)
!1693 = !MDLocation(line: 315, column: 5, scope: !1687)
!1694 = !MDLocation(line: 316, column: 45, scope: !317)
!1695 = !MDLocation(line: 316, column: 37, scope: !317)
!1696 = !MDLocation(line: 316, column: 17, scope: !317)
!1697 = !MDLocation(line: 316, column: 63, scope: !317)
!1698 = !MDLocation(line: 316, column: 104, scope: !1687)
!1699 = !MDLocation(line: 316, column: 88, scope: !317)
!1700 = !MDLocation(line: 316, column: 55, scope: !1701)
!1701 = !{!"0xb\004", !138, !1702}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1702 = !{!"0xb\003", !138, !317}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1703 = !MDLocation(line: 316, column: 5, scope: !317)
!1704 = !MDLocation(line: 317, column: 45, scope: !317)
!1705 = !MDLocation(line: 317, column: 37, scope: !317)
!1706 = !MDLocation(line: 317, column: 17, scope: !317)
!1707 = !MDLocation(line: 317, column: 63, scope: !317)
!1708 = !MDLocation(line: 317, column: 104, scope: !1687)
!1709 = !MDLocation(line: 317, column: 88, scope: !317)
!1710 = !MDLocation(line: 317, column: 55, scope: !1701)
!1711 = !MDLocation(line: 317, column: 5, scope: !317)
!1712 = !MDLocation(line: 319, column: 9, scope: !1713)
!1713 = !{!"0xb\00319\009\00173", !138, !317}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1714 = !MDLocation(line: 319, column: 9, scope: !317)
!1715 = !MDLocation(line: 320, column: 9, scope: !1716)
!1716 = !{!"0xb\00319\0026\00174", !138, !1713}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1717 = !MDLocation(line: 321, column: 38, scope: !1716)
!1718 = !MDLocation(line: 321, column: 9, scope: !1716)
!1719 = !MDLocation(line: 322, column: 5, scope: !1716)
!1720 = !MDLocation(line: 323, column: 9, scope: !1721)
!1721 = !{!"0xb\00322\0010\00175", !138, !1713}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1722 = !MDLocation(line: 324, column: 38, scope: !1721)
!1723 = !MDLocation(line: 324, column: 9, scope: !1721)
!1724 = !MDLocation(line: 327, column: 10, scope: !317)
!1725 = !MDLocation(line: 327, column: 5, scope: !317)
!1726 = !MDLocation(line: 328, column: 1, scope: !317)
!1727 = !{!"0x101\00array\0016778392\000", !258, !213, !37} ; [ DW_TAG_arg_variable ] [array] [line 1176]
!1728 = !MDLocation(line: 1176, column: 28, scope: !258)
!1729 = !{!"0x101\00size\0033555608\000", !258, !213, !5} ; [ DW_TAG_arg_variable ] [size] [line 1176]
!1730 = !MDLocation(line: 1176, column: 39, scope: !258)
!1731 = !{!"0x101\00comp\0050332824\000", !258, !213, !253} ; [ DW_TAG_arg_variable ] [comp] [line 1176]
!1732 = !MDLocation(line: 1176, column: 50, scope: !258)
!1733 = !{!"0x101\00seed\0067110040\000", !258, !213, !49} ; [ DW_TAG_arg_variable ] [seed] [line 1176]
!1734 = !MDLocation(line: 1176, column: 93, scope: !258)
!1735 = !MDLocation(line: 1178, column: 9, scope: !1736)
!1736 = !{!"0xb\001178\009\0069", !138, !258}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1737 = !MDLocation(line: 1178, column: 9, scope: !258)
!1738 = !MDLocation(line: 1179, column: 9, scope: !1736)
!1739 = !MDLocation(line: 1182, column: 29, scope: !1740)
!1740 = !{!"0xb\001181\009\0070", !138, !1736}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1741 = !{!"0x100\00pivot\001182\000", !1740, !213, !38} ; [ DW_TAG_auto_variable ] [pivot] [line 1182]
!1742 = !MDLocation(line: 1182, column: 21, scope: !1740)
!1743 = !{!"0x100\00i\001184\000", !1740, !213, !5} ; [ DW_TAG_auto_variable ] [i] [line 1184]
!1744 = !MDLocation(line: 1184, column: 21, scope: !1740)
!1745 = !{!"0x100\00j\001185\000", !1740, !213, !5} ; [ DW_TAG_auto_variable ] [j] [line 1185]
!1746 = !MDLocation(line: 1185, column: 21, scope: !1740)
!1747 = !MDLocation(line: 1187, column: 9, scope: !1740)
!1748 = !MDLocation(line: 1188, column: 13, scope: !1749)
!1749 = !{!"0xb\001187\0016\0073", !138, !1750}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1750 = !{!"0xb\001187\009\0072", !138, !1751}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1751 = !{!"0xb\001187\009\0071", !138, !1740}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1752 = !MDLocation(line: 1188, column: 16, scope: !1753)
!1753 = !{!"0xb\003", !138, !1754}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1754 = !{!"0xb\001", !138, !1749}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1755 = !MDLocation(line: 1188, column: 32, scope: !1749)
!1756 = !MDLocation(line: 1188, column: 27, scope: !1749)
!1757 = !MDLocation(line: 1188, column: 16, scope: !1749)
!1758 = !MDLocation(line: 1189, column: 13, scope: !1749)
!1759 = !MDLocation(line: 1189, column: 16, scope: !1753)
!1760 = !MDLocation(line: 1189, column: 39, scope: !1749)
!1761 = !MDLocation(line: 1189, column: 27, scope: !1749)
!1762 = !MDLocation(line: 1189, column: 16, scope: !1749)
!1763 = !MDLocation(line: 1191, column: 17, scope: !1764)
!1764 = !{!"0xb\001191\0017\0074", !138, !1749}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1765 = !MDLocation(line: 1191, column: 17, scope: !1749)
!1766 = !MDLocation(line: 1191, column: 25, scope: !1767)
!1767 = !{!"0xb\001", !138, !1764}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1768 = !MDLocation(line: 1193, column: 19, scope: !1749)
!1769 = !{!"0x100\00tmp\001183\000", !1740, !213, !38} ; [ DW_TAG_auto_variable ] [tmp] [line 1183]
!1770 = !MDLocation(line: 1183, column: 21, scope: !1740)
!1771 = !MDLocation(line: 1193, column: 40, scope: !1749)
!1772 = !MDLocation(line: 1193, column: 29, scope: !1749)
!1773 = !MDLocation(line: 1193, column: 50, scope: !1749)
!1774 = !MDLocation(line: 1187, column: 9, scope: !1750)
!1775 = !MDLocation(line: 1196, column: 9, scope: !1740)
!1776 = !MDLocation(line: 1197, column: 17, scope: !1740)
!1777 = !MDLocation(line: 1197, column: 28, scope: !1740)
!1778 = !MDLocation(line: 1197, column: 9, scope: !1740)
!1779 = !MDLocation(line: 1199, column: 1, scope: !258)
!1780 = !{!"0x101\00v\0016777252\000", !316, !96, !272} ; [ DW_TAG_arg_variable ] [v] [line 36]
!1781 = !MDLocation(line: 36, column: 36, scope: !316)
!1782 = !MDLocation(line: 37, column: 5, scope: !316)
!1783 = !MDLocation(line: 38, column: 5, scope: !316)
!1784 = !MDLocation(line: 39, column: 40, scope: !316)
!1785 = !MDLocation(line: 39, column: 28, scope: !316)
!1786 = !MDLocation(line: 39, column: 21, scope: !316)
!1787 = !MDLocation(line: 39, column: 15, scope: !316)
!1788 = !MDLocation(line: 39, column: 5, scope: !316)
!1789 = !MDLocation(line: 40, column: 1, scope: !316)
!1790 = !{!"0x101\00v\0016777286\000", !313, !96, !150} ; [ DW_TAG_arg_variable ] [v] [line 70]
!1791 = !MDLocation(line: 70, column: 41, scope: !313)
!1792 = !MDLocation(line: 70, column: 60, scope: !313)
!1793 = !MDLocation(line: 70, column: 55, scope: !313)
!1794 = !MDLocation(line: 70, column: 71, scope: !313)
!1795 = !{!"0x101\00v\0016777258\000", !310, !96, !272} ; [ DW_TAG_arg_variable ] [v] [line 42]
!1796 = !MDLocation(line: 42, column: 41, scope: !310)
!1797 = !MDLocation(line: 42, column: 60, scope: !310)
!1798 = !MDLocation(line: 42, column: 55, scope: !310)
!1799 = !MDLocation(line: 42, column: 71, scope: !310)
!1800 = !{!"0x101\00s\0016777485\000", !307, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 269]
!1801 = !MDLocation(line: 269, column: 35, scope: !307)
!1802 = !{!"0x101\00begin\0033554701\000", !307, !213, !60} ; [ DW_TAG_arg_variable ] [begin] [line 269]
!1803 = !MDLocation(line: 269, column: 43, scope: !307)
!1804 = !{!"0x101\00end\0050331917\000", !307, !213, !5} ; [ DW_TAG_arg_variable ] [end] [line 269]
!1805 = !MDLocation(line: 269, column: 54, scope: !307)
!1806 = !{!"0x101\00learnt\0067109133\000", !307, !213, !5} ; [ DW_TAG_arg_variable ] [learnt] [line 269]
!1807 = !MDLocation(line: 269, column: 63, scope: !307)
!1808 = !MDLocation(line: 275, column: 5, scope: !307)
!1809 = !MDLocation(line: 275, column: 5, scope: !1810)
!1810 = !{!"0xb\001", !138, !307}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1811 = !MDLocation(line: 275, column: 5, scope: !1812)
!1812 = !{!"0xb\002", !138, !307}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1813 = !MDLocation(line: 276, column: 5, scope: !307)
!1814 = !MDLocation(line: 276, column: 5, scope: !1810)
!1815 = !MDLocation(line: 276, column: 5, scope: !1816)
!1816 = !{!"0xb\003", !138, !307}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1817 = !MDLocation(line: 276, column: 5, scope: !1818)
!1818 = !{!"0xb\004", !138, !1812}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1819 = !{!"0x100\00size\00271\000", !307, !213, !5} ; [ DW_TAG_auto_variable ] [size] [line 271]
!1820 = !MDLocation(line: 271, column: 9, scope: !307)
!1821 = !MDLocation(line: 278, column: 69, scope: !307)
!1822 = !MDLocation(line: 278, column: 55, scope: !307)
!1823 = !MDLocation(line: 278, column: 38, scope: !307)
!1824 = !MDLocation(line: 278, column: 76, scope: !307)
!1825 = !MDLocation(line: 278, column: 31, scope: !307)
!1826 = !MDLocation(line: 278, column: 22, scope: !307)
!1827 = !{!"0x100\00c\00272\000", !307, !213, !140} ; [ DW_TAG_auto_variable ] [c] [line 272]
!1828 = !MDLocation(line: 272, column: 13, scope: !307)
!1829 = !MDLocation(line: 279, column: 23, scope: !307)
!1830 = !MDLocation(line: 279, column: 22, scope: !307)
!1831 = !MDLocation(line: 279, column: 5, scope: !307)
!1832 = !{!"0x100\00i\00273\000", !307, !213, !5} ; [ DW_TAG_auto_variable ] [i] [line 273]
!1833 = !MDLocation(line: 273, column: 9, scope: !307)
!1834 = !MDLocation(line: 282, column: 10, scope: !1835)
!1835 = !{!"0xb\00282\005\00170", !138, !307}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1836 = !MDLocation(line: 282, column: 17, scope: !1837)
!1837 = !{!"0xb\00282\005\00171", !138, !1835}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1838 = !MDLocation(line: 282, column: 5, scope: !1835)
!1839 = !MDLocation(line: 283, column: 22, scope: !1837)
!1840 = !MDLocation(line: 283, column: 9, scope: !1837)
!1841 = !MDLocation(line: 282, column: 27, scope: !1837)
!1842 = !MDLocation(line: 282, column: 5, scope: !1837)
!1843 = !MDLocation(line: 285, column: 9, scope: !307)
!1844 = !MDLocation(line: 286, column: 20, scope: !1845)
!1845 = !{!"0xb\00285\009\00172", !138, !307}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1846 = !MDLocation(line: 286, column: 11, scope: !1845)
!1847 = !MDLocation(line: 286, column: 9, scope: !1845)
!1848 = !MDLocation(line: 288, column: 5, scope: !307)
!1849 = !MDLocation(line: 288, column: 5, scope: !1810)
!1850 = !MDLocation(line: 288, column: 5, scope: !1812)
!1851 = !MDLocation(line: 289, column: 5, scope: !307)
!1852 = !MDLocation(line: 289, column: 5, scope: !1810)
!1853 = !MDLocation(line: 289, column: 5, scope: !1812)
!1854 = !MDLocation(line: 290, column: 5, scope: !307)
!1855 = !MDLocation(line: 290, column: 5, scope: !1810)
!1856 = !MDLocation(line: 290, column: 5, scope: !1812)
!1857 = !MDLocation(line: 291, column: 5, scope: !307)
!1858 = !MDLocation(line: 291, column: 5, scope: !1810)
!1859 = !MDLocation(line: 291, column: 5, scope: !1812)
!1860 = !MDLocation(line: 293, column: 5, scope: !307)
!1861 = !MDLocation(line: 293, column: 5, scope: !1810)
!1862 = !MDLocation(line: 293, column: 5, scope: !1812)
!1863 = !MDLocation(line: 294, column: 5, scope: !307)
!1864 = !MDLocation(line: 294, column: 5, scope: !1810)
!1865 = !MDLocation(line: 294, column: 5, scope: !1812)
!1866 = !MDLocation(line: 299, column: 43, scope: !307)
!1867 = !MDLocation(line: 299, column: 35, scope: !307)
!1868 = !MDLocation(line: 299, column: 15, scope: !307)
!1869 = !MDLocation(line: 299, column: 62, scope: !307)
!1870 = !MDLocation(line: 299, column: 93, scope: !1812)
!1871 = !MDLocation(line: 299, column: 77, scope: !307)
!1872 = !MDLocation(line: 299, column: 54, scope: !1873)
!1873 = !{!"0xb\004", !138, !1816}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1874 = !MDLocation(line: 299, column: 5, scope: !307)
!1875 = !MDLocation(line: 300, column: 43, scope: !307)
!1876 = !MDLocation(line: 300, column: 35, scope: !307)
!1877 = !MDLocation(line: 300, column: 15, scope: !307)
!1878 = !MDLocation(line: 300, column: 62, scope: !307)
!1879 = !MDLocation(line: 300, column: 93, scope: !1812)
!1880 = !MDLocation(line: 300, column: 77, scope: !307)
!1881 = !MDLocation(line: 300, column: 54, scope: !1873)
!1882 = !MDLocation(line: 300, column: 5, scope: !307)
!1883 = !MDLocation(line: 302, column: 5, scope: !307)
!1884 = !{!"0x101\00s\0016777314\000", !306, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 98]
!1885 = !MDLocation(line: 98, column: 45, scope: !306)
!1886 = !MDLocation(line: 98, column: 70, scope: !306)
!1887 = !MDLocation(line: 98, column: 60, scope: !306)
!1888 = !MDLocation(line: 98, column: 53, scope: !306)
!1889 = !{!"0x101\00s\0016777547\000", !303, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 331]
!1890 = !MDLocation(line: 331, column: 38, scope: !303)
!1891 = !{!"0x101\00c\0033554763\000", !303, !213, !140} ; [ DW_TAG_arg_variable ] [c] [line 331]
!1892 = !MDLocation(line: 331, column: 49, scope: !303)
!1893 = !MDLocation(line: 333, column: 21, scope: !303)
!1894 = !{!"0x100\00lits\00333\000", !303, !213, !60} ; [ DW_TAG_auto_variable ] [lits] [line 333]
!1895 = !MDLocation(line: 333, column: 12, scope: !303)
!1896 = !MDLocation(line: 334, column: 21, scope: !303)
!1897 = !{!"0x100\00values\00334\000", !303, !213, !51} ; [ DW_TAG_auto_variable ] [values] [line 334]
!1898 = !MDLocation(line: 334, column: 12, scope: !303)
!1899 = !MDLocation(line: 337, column: 5, scope: !303)
!1900 = !MDLocation(line: 337, column: 5, scope: !1901)
!1901 = !{!"0xb\001", !138, !303}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1902 = !MDLocation(line: 337, column: 5, scope: !1903)
!1903 = !{!"0xb\002", !138, !303}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1904 = !{!"0x100\00i\00335\000", !303, !213, !5} ; [ DW_TAG_auto_variable ] [i] [line 335]
!1905 = !MDLocation(line: 335, column: 9, scope: !303)
!1906 = !MDLocation(line: 339, column: 10, scope: !1907)
!1907 = !{!"0xb\00339\005\00166", !138, !303}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1908 = !MDLocation(line: 339, column: 21, scope: !1909)
!1909 = !{!"0xb\00339\005\00167", !138, !1907}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1910 = !MDLocation(line: 339, column: 17, scope: !1909)
!1911 = !MDLocation(line: 339, column: 5, scope: !1907)
!1912 = !MDLocation(line: 340, column: 31, scope: !1913)
!1913 = !{!"0xb\00339\0041\00168", !138, !1909}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1914 = !MDLocation(line: 340, column: 22, scope: !1913)
!1915 = !MDLocation(line: 340, column: 21, scope: !1913)
!1916 = !{!"0x100\00sig\00340\000", !1913, !213, !17} ; [ DW_TAG_auto_variable ] [sig] [line 340]
!1917 = !MDLocation(line: 340, column: 15, scope: !1913)
!1918 = !MDLocation(line: 340, column: 48, scope: !1913)
!1919 = !MDLocation(line: 340, column: 41, scope: !1913)
!1920 = !MDLocation(line: 341, column: 28, scope: !1921)
!1921 = !{!"0xb\00341\0013\00169", !138, !1913}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1922 = !MDLocation(line: 341, column: 20, scope: !1921)
!1923 = !MDLocation(line: 341, column: 13, scope: !1921)
!1924 = !MDLocation(line: 341, column: 41, scope: !1921)
!1925 = !MDLocation(line: 341, column: 13, scope: !1913)
!1926 = !MDLocation(line: 342, column: 13, scope: !1921)
!1927 = !MDLocation(line: 343, column: 5, scope: !1913)
!1928 = !MDLocation(line: 339, column: 37, scope: !1909)
!1929 = !MDLocation(line: 339, column: 5, scope: !1909)
!1930 = !MDLocation(line: 344, column: 5, scope: !303)
!1931 = !MDLocation(line: 345, column: 1, scope: !303)
!1932 = !{!"0x101\00s\0016777637\000", !300, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 421]
!1933 = !MDLocation(line: 421, column: 35, scope: !300)
!1934 = !{!"0x101\00l\0033554853\000", !300, !213, !61} ; [ DW_TAG_arg_variable ] [l] [line 421]
!1935 = !MDLocation(line: 421, column: 42, scope: !300)
!1936 = !MDLocation(line: 422, column: 5, scope: !300)
!1937 = !MDLocation(line: 422, column: 5, scope: !1938)
!1938 = !{!"0xb\001", !138, !300}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1939 = !MDLocation(line: 422, column: 5, scope: !1940)
!1940 = !{!"0xb\002", !138, !300}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1941 = !MDLocation(line: 423, column: 5, scope: !300)
!1942 = !MDLocation(line: 423, column: 5, scope: !1938)
!1943 = !MDLocation(line: 423, column: 5, scope: !1940)
!1944 = !MDLocation(line: 427, column: 15, scope: !300)
!1945 = !MDLocation(line: 427, column: 29, scope: !300)
!1946 = !MDLocation(line: 427, column: 5, scope: !300)
!1947 = !MDLocation(line: 428, column: 5, scope: !300)
!1948 = !MDLocation(line: 429, column: 1, scope: !300)
!1949 = !{!"0x101\00s\0016777648\000", !298, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 432]
!1950 = !MDLocation(line: 432, column: 47, scope: !298)
!1951 = !{!"0x101\00level\0033554864\000", !298, !213, !5} ; [ DW_TAG_arg_variable ] [level] [line 432]
!1952 = !MDLocation(line: 432, column: 54, scope: !298)
!1953 = !MDLocation(line: 439, column: 9, scope: !1954)
!1954 = !{!"0xb\00439\009\00158", !138, !298}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1955 = !MDLocation(line: 439, column: 9, scope: !298)
!1956 = !MDLocation(line: 440, column: 9, scope: !1954)
!1957 = !MDLocation(line: 442, column: 15, scope: !298)
!1958 = !{!"0x100\00trail\00433\000", !298, !213, !60} ; [ DW_TAG_auto_variable ] [trail] [line 433]
!1959 = !MDLocation(line: 433, column: 14, scope: !298)
!1960 = !MDLocation(line: 443, column: 15, scope: !298)
!1961 = !{!"0x100\00values\00434\000", !298, !213, !51} ; [ DW_TAG_auto_variable ] [values] [line 434]
!1962 = !MDLocation(line: 434, column: 14, scope: !298)
!1963 = !MDLocation(line: 444, column: 15, scope: !298)
!1964 = !{!"0x100\00reasons\00435\000", !298, !213, !157} ; [ DW_TAG_auto_variable ] [reasons] [line 435]
!1965 = !MDLocation(line: 435, column: 14, scope: !298)
!1966 = !MDLocation(line: 445, column: 15, scope: !298)
!1967 = !MDLocation(line: 445, column: 27, scope: !298)
!1968 = !MDLocation(line: 445, column: 16, scope: !298)
!1969 = !{!"0x100\00bound\00436\000", !298, !213, !5} ; [ DW_TAG_auto_variable ] [bound] [line 436]
!1970 = !MDLocation(line: 436, column: 14, scope: !298)
!1971 = !MDLocation(line: 447, column: 14, scope: !1972)
!1972 = !{!"0xb\00447\005\00159", !138, !298}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1973 = !{!"0x100\00c\00437\000", !298, !213, !5} ; [ DW_TAG_auto_variable ] [c] [line 437]
!1974 = !MDLocation(line: 437, column: 14, scope: !298)
!1975 = !MDLocation(line: 447, column: 10, scope: !1972)
!1976 = !MDLocation(line: 447, column: 26, scope: !1977)
!1977 = !{!"0xb\00447\005\00160", !138, !1972}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1978 = !MDLocation(line: 447, column: 5, scope: !1972)
!1979 = !MDLocation(line: 448, column: 30, scope: !1980)
!1980 = !{!"0xb\00447\0043\00161", !138, !1977}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1981 = !MDLocation(line: 448, column: 22, scope: !1980)
!1982 = !{!"0x100\00x\00448\000", !1980, !213, !5} ; [ DW_TAG_auto_variable ] [x] [line 448]
!1983 = !MDLocation(line: 448, column: 17, scope: !1980)
!1984 = !MDLocation(line: 449, column: 9, scope: !1980)
!1985 = !MDLocation(line: 450, column: 9, scope: !1980)
!1986 = !MDLocation(line: 451, column: 5, scope: !1980)
!1987 = !MDLocation(line: 447, column: 38, scope: !1977)
!1988 = !MDLocation(line: 447, column: 5, scope: !1977)
!1989 = !MDLocation(line: 453, column: 14, scope: !1990)
!1990 = !{!"0xb\00453\005\00162", !138, !298}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1991 = !MDLocation(line: 453, column: 10, scope: !1990)
!1992 = !MDLocation(line: 453, column: 26, scope: !1993)
!1993 = !{!"0xb\00453\005\00163", !138, !1990}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!1994 = !MDLocation(line: 453, column: 5, scope: !1990)
!1995 = !MDLocation(line: 454, column: 36, scope: !1993)
!1996 = !MDLocation(line: 454, column: 28, scope: !1993)
!1997 = !MDLocation(line: 454, column: 9, scope: !1993)
!1998 = !MDLocation(line: 453, column: 38, scope: !1993)
!1999 = !MDLocation(line: 453, column: 5, scope: !1993)
!2000 = !MDLocation(line: 456, column: 16, scope: !298)
!2001 = !MDLocation(line: 456, column: 5, scope: !298)
!2002 = !MDLocation(line: 457, column: 17, scope: !298)
!2003 = !MDLocation(line: 457, column: 5, scope: !298)
!2004 = !MDLocation(line: 458, column: 1, scope: !298)
!2005 = !MDLocation(line: 458, column: 1, scope: !2006)
!2006 = !{!"0xb\001", !138, !298}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2007 = !{!"0x101\00s\0016778011\000", !262, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 795]
!2008 = !MDLocation(line: 795, column: 36, scope: !262)
!2009 = !{!"0x101\00nof_conflicts\0033555227\000", !262, !213, !5} ; [ DW_TAG_arg_variable ] [nof_conflicts] [line 795]
!2010 = !MDLocation(line: 795, column: 43, scope: !262)
!2011 = !{!"0x101\00nof_learnts\0050332443\000", !262, !213, !5} ; [ DW_TAG_arg_variable ] [nof_learnts] [line 795]
!2012 = !MDLocation(line: 795, column: 62, scope: !262)
!2013 = !MDLocation(line: 797, column: 31, scope: !262)
!2014 = !{!"0x100\00levels\00797\000", !262, !213, !4} ; [ DW_TAG_auto_variable ] [levels] [line 797]
!2015 = !MDLocation(line: 797, column: 13, scope: !262)
!2016 = !{!"0x100\00conflictC\00802\000", !262, !213, !5} ; [ DW_TAG_auto_variable ] [conflictC] [line 802]
!2017 = !MDLocation(line: 802, column: 13, scope: !262)
!2018 = !{!"0x100\00learnt_clause\00803\000", !262, !213, !182} ; [ DW_TAG_auto_variable ] [learnt_clause] [line 803]
!2019 = !MDLocation(line: 803, column: 13, scope: !262)
!2020 = !MDLocation(line: 805, column: 5, scope: !262)
!2021 = !MDLocation(line: 805, column: 5, scope: !2022)
!2022 = !{!"0xb\001", !138, !262}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2023 = !MDLocation(line: 805, column: 5, scope: !2024)
!2024 = !{!"0xb\002", !138, !262}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2025 = !MDLocation(line: 807, column: 5, scope: !262)
!2026 = !MDLocation(line: 810, column: 17, scope: !262)
!2027 = !MDLocation(line: 810, column: 5, scope: !262)
!2028 = !MDLocation(line: 811, column: 5, scope: !262)
!2029 = !MDLocation(line: 813, column: 5, scope: !262)
!2030 = !MDLocation(line: 814, column: 25, scope: !2031)
!2031 = !{!"0xb\00813\0013\0084", !138, !2032}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2032 = !{!"0xb\00813\005\0083", !138, !2033}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2033 = !{!"0xb\00813\005\0082", !138, !262}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2034 = !{!"0x100\00confl\00814\000", !2031, !213, !140} ; [ DW_TAG_auto_variable ] [confl] [line 814]
!2035 = !MDLocation(line: 814, column: 17, scope: !2031)
!2036 = !MDLocation(line: 815, column: 13, scope: !2037)
!2037 = !{!"0xb\00815\0013\0085", !138, !2031}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2038 = !MDLocation(line: 815, column: 13, scope: !2031)
!2039 = !MDLocation(line: 822, column: 13, scope: !2040)
!2040 = !{!"0xb\00815\0024\0086", !138, !2037}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2041 = !MDLocation(line: 822, column: 35, scope: !2040)
!2042 = !MDLocation(line: 823, column: 17, scope: !2043)
!2043 = !{!"0xb\00823\0017\0087", !138, !2040}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2044 = !MDLocation(line: 823, column: 37, scope: !2043)
!2045 = !MDLocation(line: 823, column: 17, scope: !2040)
!2046 = !MDLocation(line: 824, column: 17, scope: !2047)
!2047 = !{!"0xb\00823\0051\0088", !138, !2043}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2048 = !MDLocation(line: 825, column: 17, scope: !2047)
!2049 = !MDLocation(line: 828, column: 13, scope: !2040)
!2050 = !MDLocation(line: 829, column: 13, scope: !2040)
!2051 = !MDLocation(line: 830, column: 22, scope: !2040)
!2052 = !MDLocation(line: 830, column: 69, scope: !2053)
!2053 = !{!"0xb\001", !138, !2040}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2054 = !MDLocation(line: 830, column: 61, scope: !2040)
!2055 = !MDLocation(line: 830, column: 54, scope: !2040)
!2056 = !MDLocation(line: 830, column: 103, scope: !2057)
!2057 = !{!"0xb\002", !138, !2040}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2058 = !{!"0x100\00blevel\00817\000", !2040, !213, !5} ; [ DW_TAG_auto_variable ] [blevel] [line 817]
!2059 = !MDLocation(line: 817, column: 17, scope: !2040)
!2060 = !MDLocation(line: 831, column: 22, scope: !2040)
!2061 = !MDLocation(line: 831, column: 47, scope: !2053)
!2062 = !MDLocation(line: 832, column: 13, scope: !2040)
!2063 = !MDLocation(line: 833, column: 13, scope: !2040)
!2064 = !MDLocation(line: 834, column: 13, scope: !2040)
!2065 = !MDLocation(line: 835, column: 13, scope: !2040)
!2066 = !MDLocation(line: 837, column: 9, scope: !2040)
!2067 = !MDLocation(line: 841, column: 17, scope: !2068)
!2068 = !{!"0xb\00841\0017\0090", !138, !2069}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2069 = !{!"0xb\00837\0014\0089", !138, !2037}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2070 = !MDLocation(line: 841, column: 17, scope: !2069)
!2071 = !MDLocation(line: 841, column: 39, scope: !2068)
!2072 = !MDLocation(line: 844, column: 38, scope: !2073)
!2073 = !{!"0xb\00841\0066\0091", !138, !2068}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2074 = !MDLocation(line: 844, column: 17, scope: !2073)
!2075 = !MDLocation(line: 845, column: 17, scope: !2073)
!2076 = !MDLocation(line: 846, column: 17, scope: !2073)
!2077 = !MDLocation(line: 848, column: 17, scope: !2078)
!2078 = !{!"0xb\00848\0017\0092", !138, !2069}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2079 = !MDLocation(line: 848, column: 17, scope: !2069)
!2080 = !MDLocation(line: 850, column: 17, scope: !2078)
!2081 = !MDLocation(line: 852, column: 17, scope: !2082)
!2082 = !{!"0xb\00852\0017\0093", !138, !2069}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2083 = !MDLocation(line: 852, column: 17, scope: !2069)
!2084 = !MDLocation(line: 852, column: 47, scope: !2082)
!2085 = !MDLocation(line: 852, column: 37, scope: !2082)
!2086 = !MDLocation(line: 852, column: 62, scope: !2082)
!2087 = !MDLocation(line: 854, column: 17, scope: !2082)
!2088 = !MDLocation(line: 857, column: 13, scope: !2069)
!2089 = !MDLocation(line: 858, column: 20, scope: !2069)
!2090 = !{!"0x100\00next\00839\000", !2069, !213, !5} ; [ DW_TAG_auto_variable ] [next] [line 839]
!2091 = !MDLocation(line: 839, column: 17, scope: !2069)
!2092 = !MDLocation(line: 860, column: 17, scope: !2093)
!2093 = !{!"0xb\00860\0017\0094", !138, !2069}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2094 = !MDLocation(line: 860, column: 17, scope: !2069)
!2095 = !MDLocation(line: 862, column: 33, scope: !2096)
!2096 = !{!"0xb\00860\0035\0095", !138, !2093}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2097 = !{!"0x100\00values\00862\000", !2096, !213, !51} ; [ DW_TAG_auto_variable ] [values] [line 862]
!2098 = !MDLocation(line: 862, column: 24, scope: !2096)
!2099 = !{!"0x100\00i\00863\000", !2096, !213, !5} ; [ DW_TAG_auto_variable ] [i] [line 863]
!2100 = !MDLocation(line: 863, column: 21, scope: !2096)
!2101 = !MDLocation(line: 864, column: 22, scope: !2102)
!2102 = !{!"0xb\00864\0017\0096", !138, !2096}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2103 = !MDLocation(line: 864, column: 33, scope: !2104)
!2104 = !{!"0xb\00864\0017\0097", !138, !2102}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2105 = !MDLocation(line: 864, column: 29, scope: !2104)
!2106 = !MDLocation(line: 864, column: 17, scope: !2102)
!2107 = !MDLocation(line: 864, column: 57, scope: !2104)
!2108 = !MDLocation(line: 864, column: 72, scope: !2104)
!2109 = !MDLocation(line: 864, column: 67, scope: !2104)
!2110 = !MDLocation(line: 864, column: 47, scope: !2104)
!2111 = !MDLocation(line: 864, column: 42, scope: !2112)
!2112 = !{!"0xb\003", !138, !2104}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2113 = !MDLocation(line: 864, column: 17, scope: !2104)
!2114 = !MDLocation(line: 865, column: 38, scope: !2096)
!2115 = !MDLocation(line: 865, column: 17, scope: !2096)
!2116 = !MDLocation(line: 866, column: 17, scope: !2096)
!2117 = !MDLocation(line: 876, column: 17, scope: !2096)
!2118 = !MDLocation(line: 879, column: 30, scope: !2069)
!2119 = !MDLocation(line: 879, column: 22, scope: !2069)
!2120 = !MDLocation(line: 879, column: 13, scope: !2069)
!2121 = !MDLocation(line: 813, column: 5, scope: !2032)
!2122 = !MDLocation(line: 884, column: 1, scope: !262)
!2123 = !{!"0x101\00array\0016778376\000", !261, !213, !37} ; [ DW_TAG_arg_variable ] [array] [line 1160]
!2124 = !MDLocation(line: 1160, column: 41, scope: !261)
!2125 = !{!"0x101\00size\0033555592\000", !261, !213, !5} ; [ DW_TAG_arg_variable ] [size] [line 1160]
!2126 = !MDLocation(line: 1160, column: 52, scope: !261)
!2127 = !{!"0x101\00comp\0050332808\000", !261, !213, !253} ; [ DW_TAG_arg_variable ] [comp] [line 1160]
!2128 = !MDLocation(line: 1160, column: 63, scope: !261)
!2129 = !{!"0x100\00i\001162\000", !261, !213, !5} ; [ DW_TAG_auto_variable ] [i] [line 1162]
!2130 = !MDLocation(line: 1162, column: 13, scope: !261)
!2131 = !MDLocation(line: 1165, column: 10, scope: !2132)
!2132 = !{!"0xb\001165\005\0075", !138, !261}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2133 = !MDLocation(line: 1165, column: 21, scope: !2134)
!2134 = !{!"0xb\001165\005\0076", !138, !2132}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2135 = !MDLocation(line: 1165, column: 17, scope: !2134)
!2136 = !MDLocation(line: 1165, column: 5, scope: !2132)
!2137 = !{!"0x100\00best_i\001162\000", !261, !213, !5} ; [ DW_TAG_auto_variable ] [best_i] [line 1162]
!2138 = !MDLocation(line: 1162, column: 19, scope: !261)
!2139 = !MDLocation(line: 1167, column: 18, scope: !2140)
!2140 = !{!"0xb\001167\009\0078", !138, !2141}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2141 = !{!"0xb\001165\0033\0077", !138, !2134}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2142 = !{!"0x100\00j\001162\000", !261, !213, !5} ; [ DW_TAG_auto_variable ] [j] [line 1162]
!2143 = !MDLocation(line: 1162, column: 16, scope: !261)
!2144 = !MDLocation(line: 1167, column: 14, scope: !2140)
!2145 = !MDLocation(line: 1167, column: 23, scope: !2146)
!2146 = !{!"0xb\001167\009\0079", !138, !2140}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2147 = !MDLocation(line: 1167, column: 9, scope: !2140)
!2148 = !MDLocation(line: 1168, column: 22, scope: !2149)
!2149 = !{!"0xb\001168\0017\0081", !138, !2150}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2150 = !{!"0xb\001167\0037\0080", !138, !2146}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2151 = !MDLocation(line: 1168, column: 32, scope: !2149)
!2152 = !MDLocation(line: 1168, column: 17, scope: !2149)
!2153 = !MDLocation(line: 1168, column: 17, scope: !2150)
!2154 = !MDLocation(line: 1169, column: 17, scope: !2149)
!2155 = !MDLocation(line: 1170, column: 9, scope: !2150)
!2156 = !MDLocation(line: 1167, column: 33, scope: !2146)
!2157 = !MDLocation(line: 1167, column: 9, scope: !2146)
!2158 = !MDLocation(line: 1171, column: 15, scope: !2141)
!2159 = !{!"0x100\00tmp\001163\000", !261, !213, !38} ; [ DW_TAG_auto_variable ] [tmp] [line 1163]
!2160 = !MDLocation(line: 1163, column: 13, scope: !261)
!2161 = !MDLocation(line: 1171, column: 36, scope: !2141)
!2162 = !MDLocation(line: 1171, column: 25, scope: !2141)
!2163 = !MDLocation(line: 1171, column: 51, scope: !2141)
!2164 = !MDLocation(line: 1172, column: 5, scope: !2141)
!2165 = !MDLocation(line: 1165, column: 29, scope: !2134)
!2166 = !MDLocation(line: 1165, column: 5, scope: !2134)
!2167 = !MDLocation(line: 1173, column: 1, scope: !261)
!2168 = !{!"0x101\00v\0016777271\000", !265, !111, !5} ; [ DW_TAG_arg_variable ] [v] [line 55]
!2169 = !MDLocation(line: 55, column: 33, scope: !265)
!2170 = !MDLocation(line: 55, column: 45, scope: !265)
!2171 = !MDLocation(line: 55, column: 38, scope: !265)
!2172 = !{!"0x101\00s\0016777365\000", !266, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 149]
!2173 = !MDLocation(line: 149, column: 34, scope: !266)
!2174 = !MDLocation(line: 155, column: 21, scope: !266)
!2175 = !{!"0x100\00values\00155\000", !266, !213, !51} ; [ DW_TAG_auto_variable ] [values] [line 155]
!2176 = !MDLocation(line: 155, column: 12, scope: !266)
!2177 = !MDLocation(line: 169, column: 27, scope: !266)
!2178 = !MDLocation(line: 169, column: 16, scope: !266)
!2179 = !{!"0x100\00heap\00151\000", !266, !213, !4} ; [ DW_TAG_auto_variable ] [heap] [line 151]
!2180 = !MDLocation(line: 151, column: 13, scope: !266)
!2181 = !MDLocation(line: 170, column: 16, scope: !266)
!2182 = !{!"0x100\00activity\00152\000", !266, !213, !49} ; [ DW_TAG_auto_variable ] [activity] [line 152]
!2183 = !MDLocation(line: 152, column: 13, scope: !266)
!2184 = !MDLocation(line: 171, column: 16, scope: !266)
!2185 = !{!"0x100\00orderpos\00153\000", !266, !213, !4} ; [ DW_TAG_auto_variable ] [orderpos] [line 153]
!2186 = !MDLocation(line: 153, column: 13, scope: !266)
!2187 = !MDLocation(line: 174, column: 5, scope: !266)
!2188 = !MDLocation(line: 174, column: 22, scope: !266)
!2189 = !MDLocation(line: 174, column: 12, scope: !266)
!2190 = !MDLocation(line: 175, column: 24, scope: !2191)
!2191 = !{!"0xb\00174\0037\0098", !138, !266}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2192 = !{!"0x100\00next\00175\000", !2191, !213, !5} ; [ DW_TAG_auto_variable ] [next] [line 175]
!2193 = !MDLocation(line: 175, column: 16, scope: !2191)
!2194 = !MDLocation(line: 176, column: 34, scope: !2191)
!2195 = !MDLocation(line: 176, column: 24, scope: !2191)
!2196 = !{!"0x100\00size\00176\000", !2191, !213, !5} ; [ DW_TAG_auto_variable ] [size] [line 176]
!2197 = !MDLocation(line: 176, column: 16, scope: !2191)
!2198 = !MDLocation(line: 177, column: 24, scope: !2191)
!2199 = !{!"0x100\00x\00177\000", !2191, !213, !5} ; [ DW_TAG_auto_variable ] [x] [line 177]
!2200 = !MDLocation(line: 177, column: 16, scope: !2191)
!2201 = !MDLocation(line: 179, column: 21, scope: !2191)
!2202 = !MDLocation(line: 179, column: 9, scope: !2191)
!2203 = !MDLocation(line: 181, column: 9, scope: !2191)
!2204 = !MDLocation(line: 183, column: 13, scope: !2205)
!2205 = !{!"0xb\00183\0013\0099", !138, !2191}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2206 = !MDLocation(line: 183, column: 13, scope: !2191)
!2207 = !MDLocation(line: 184, column: 28, scope: !2208)
!2208 = !{!"0xb\00183\0022\00100", !138, !2205}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2209 = !{!"0x100\00act\00184\000", !2208, !213, !41} ; [ DW_TAG_auto_variable ] [act] [line 184]
!2210 = !MDLocation(line: 184, column: 20, scope: !2208)
!2211 = !{!"0x100\00i\00186\000", !2208, !213, !5} ; [ DW_TAG_auto_variable ] [i] [line 186]
!2212 = !MDLocation(line: 186, column: 20, scope: !2208)
!2213 = !{!"0x100\00child\00187\000", !2208, !213, !5} ; [ DW_TAG_auto_variable ] [child] [line 187]
!2214 = !MDLocation(line: 187, column: 20, scope: !2208)
!2215 = !MDLocation(line: 190, column: 13, scope: !2208)
!2216 = !MDLocation(line: 190, column: 20, scope: !2208)
!2217 = !MDLocation(line: 191, column: 21, scope: !2218)
!2218 = !{!"0xb\00191\0021\00102", !138, !2219}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2219 = !{!"0xb\00190\0033\00101", !138, !2208}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2220 = !MDLocation(line: 191, column: 21, scope: !2219)
!2221 = !MDLocation(line: 191, column: 48, scope: !2218)
!2222 = !MDLocation(line: 191, column: 39, scope: !2218)
!2223 = !MDLocation(line: 191, column: 77, scope: !2218)
!2224 = !MDLocation(line: 191, column: 72, scope: !2218)
!2225 = !MDLocation(line: 191, column: 63, scope: !2218)
!2226 = !MDLocation(line: 192, column: 21, scope: !2218)
!2227 = !MDLocation(line: 194, column: 17, scope: !2219)
!2228 = !MDLocation(line: 194, column: 17, scope: !2229)
!2229 = !{!"0xb\001", !138, !2219}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2230 = !MDLocation(line: 194, column: 17, scope: !2231)
!2231 = !{!"0xb\002", !138, !2219}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2232 = !MDLocation(line: 196, column: 37, scope: !2233)
!2233 = !{!"0xb\00196\0021\00103", !138, !2219}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2234 = !MDLocation(line: 196, column: 28, scope: !2233)
!2235 = !MDLocation(line: 196, column: 21, scope: !2233)
!2236 = !MDLocation(line: 196, column: 21, scope: !2219)
!2237 = !MDLocation(line: 197, column: 21, scope: !2233)
!2238 = !MDLocation(line: 199, column: 37, scope: !2219)
!2239 = !MDLocation(line: 199, column: 17, scope: !2219)
!2240 = !MDLocation(line: 200, column: 26, scope: !2219)
!2241 = !MDLocation(line: 200, column: 17, scope: !2219)
!2242 = !MDLocation(line: 202, column: 37, scope: !2219)
!2243 = !MDLocation(line: 204, column: 13, scope: !2208)
!2244 = !MDLocation(line: 205, column: 22, scope: !2208)
!2245 = !MDLocation(line: 205, column: 13, scope: !2208)
!2246 = !MDLocation(line: 206, column: 9, scope: !2208)
!2247 = !MDLocation(line: 208, column: 13, scope: !2248)
!2248 = !{!"0xb\00208\0013\00104", !138, !2191}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2249 = !MDLocation(line: 208, column: 13, scope: !2191)
!2250 = !MDLocation(line: 209, column: 13, scope: !2248)
!2251 = !MDLocation(line: 212, column: 5, scope: !266)
!2252 = !MDLocation(line: 213, column: 1, scope: !266)
!2253 = !{!"0x101\00s\0016777477\000", !267, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 261]
!2254 = !MDLocation(line: 261, column: 45, scope: !267)
!2255 = !MDLocation(line: 261, column: 64, scope: !267)
!2256 = !MDLocation(line: 261, column: 50, scope: !267)
!2257 = !MDLocation(line: 261, column: 78, scope: !267)
!2258 = !{!"0x101\00s\0016777456\000", !268, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 240]
!2259 = !MDLocation(line: 240, column: 42, scope: !268)
!2260 = !MDLocation(line: 240, column: 61, scope: !268)
!2261 = !MDLocation(line: 240, column: 47, scope: !268)
!2262 = !MDLocation(line: 240, column: 75, scope: !268)
!2263 = !{!"0x101\00s\0016777676\000", !269, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 460]
!2264 = !MDLocation(line: 460, column: 35, scope: !269)
!2265 = !{!"0x101\00cls\0033554892\000", !269, !213, !272} ; [ DW_TAG_arg_variable ] [cls] [line 460]
!2266 = !MDLocation(line: 460, column: 44, scope: !269)
!2267 = !MDLocation(line: 462, column: 21, scope: !269)
!2268 = !{!"0x100\00begin\00462\000", !269, !213, !60} ; [ DW_TAG_auto_variable ] [begin] [line 462]
!2269 = !MDLocation(line: 462, column: 13, scope: !269)
!2270 = !MDLocation(line: 463, column: 21, scope: !269)
!2271 = !{!"0x100\00end\00463\000", !269, !213, !5} ; [ DW_TAG_auto_variable ] [end] [line 463]
!2272 = !MDLocation(line: 463, column: 13, scope: !269)
!2273 = !MDLocation(line: 464, column: 22, scope: !269)
!2274 = !MDLocation(line: 464, column: 21, scope: !269)
!2275 = !MDLocation(line: 464, column: 44, scope: !269)
!2276 = !MDLocation(line: 464, column: 21, scope: !2277)
!2277 = !{!"0xb\002", !138, !269}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2278 = !{!"0x100\00c\00464\000", !269, !213, !140} ; [ DW_TAG_auto_variable ] [c] [line 464]
!2279 = !MDLocation(line: 464, column: 13, scope: !269)
!2280 = !MDLocation(line: 465, column: 15, scope: !269)
!2281 = !MDLocation(line: 465, column: 5, scope: !269)
!2282 = !MDLocation(line: 467, column: 5, scope: !269)
!2283 = !MDLocation(line: 467, column: 5, scope: !2284)
!2284 = !{!"0xb\001", !138, !269}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2285 = !MDLocation(line: 467, column: 5, scope: !2277)
!2286 = !MDLocation(line: 469, column: 9, scope: !2287)
!2287 = !{!"0xb\00469\009\00105", !138, !269}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2288 = !MDLocation(line: 469, column: 9, scope: !269)
!2289 = !MDLocation(line: 470, column: 19, scope: !2290)
!2290 = !{!"0xb\00469\0017\00106", !138, !2287}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2291 = !MDLocation(line: 470, column: 31, scope: !2290)
!2292 = !MDLocation(line: 470, column: 9, scope: !2290)
!2293 = !MDLocation(line: 471, column: 9, scope: !2290)
!2294 = !MDLocation(line: 472, column: 9, scope: !2290)
!2295 = !MDLocation(line: 473, column: 38, scope: !2290)
!2296 = !MDLocation(line: 473, column: 9, scope: !2290)
!2297 = !MDLocation(line: 474, column: 5, scope: !2290)
!2298 = !MDLocation(line: 475, column: 1, scope: !269)
!2299 = !{!"0x101\00s\0016777471\000", !273, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 255]
!2300 = !MDLocation(line: 255, column: 44, scope: !273)
!2301 = !{!"0x101\00c\0033554687\000", !273, !213, !140} ; [ DW_TAG_arg_variable ] [c] [line 255]
!2302 = !MDLocation(line: 255, column: 55, scope: !273)
!2303 = !MDLocation(line: 256, column: 16, scope: !273)
!2304 = !MDLocation(line: 256, column: 37, scope: !273)
!2305 = !{!"0x100\00a\00256\000", !273, !213, !41} ; [ DW_TAG_auto_variable ] [a] [line 256]
!2306 = !MDLocation(line: 256, column: 12, scope: !273)
!2307 = !MDLocation(line: 257, column: 5, scope: !273)
!2308 = !MDLocation(line: 259, column: 1, scope: !273)
!2309 = !{!"0x101\00c\0016777302\000", !276, !213, !140} ; [ DW_TAG_arg_variable ] [c] [line 86]
!2310 = !MDLocation(line: 86, column: 48, scope: !276)
!2311 = !{!"0x101\00a\0033554518\000", !276, !213, !41} ; [ DW_TAG_arg_variable ] [a] [line 86]
!2312 = !MDLocation(line: 86, column: 58, scope: !276)
!2313 = !MDLocation(line: 86, column: 83, scope: !276)
!2314 = !MDLocation(line: 86, column: 74, scope: !276)
!2315 = !MDLocation(line: 86, column: 65, scope: !276)
!2316 = !MDLocation(line: 86, column: 63, scope: !276)
!2317 = !MDLocation(line: 86, column: 108, scope: !276)
!2318 = !{!"0x101\00c\0016777301\000", !279, !213, !140} ; [ DW_TAG_arg_variable ] [c] [line 85]
!2319 = !MDLocation(line: 85, column: 49, scope: !279)
!2320 = !MDLocation(line: 85, column: 90, scope: !279)
!2321 = !MDLocation(line: 85, column: 81, scope: !279)
!2322 = !MDLocation(line: 85, column: 72, scope: !279)
!2323 = !MDLocation(line: 85, column: 70, scope: !279)
!2324 = !MDLocation(line: 85, column: 63, scope: !279)
!2325 = !{!"0x101\00v\0016777259\000", !282, !96, !272} ; [ DW_TAG_arg_variable ] [v] [line 43]
!2326 = !MDLocation(line: 43, column: 41, scope: !282)
!2327 = !MDLocation(line: 43, column: 62, scope: !282)
!2328 = !MDLocation(line: 43, column: 55, scope: !282)
!2329 = !{!"0x101\00s\0016777776\000", !285, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 560]
!2330 = !MDLocation(line: 560, column: 36, scope: !285)
!2331 = !{!"0x101\00c\0033554992\000", !285, !213, !140} ; [ DW_TAG_arg_variable ] [c] [line 560]
!2332 = !MDLocation(line: 560, column: 47, scope: !285)
!2333 = !{!"0x101\00learnt\0050332208\000", !285, !213, !272} ; [ DW_TAG_arg_variable ] [learnt] [line 560]
!2334 = !MDLocation(line: 560, column: 56, scope: !285)
!2335 = !MDLocation(line: 562, column: 24, scope: !285)
!2336 = !{!"0x100\00trail\00562\000", !285, !213, !60} ; [ DW_TAG_auto_variable ] [trail] [line 562]
!2337 = !MDLocation(line: 562, column: 14, scope: !285)
!2338 = !MDLocation(line: 563, column: 24, scope: !285)
!2339 = !{!"0x100\00tags\00563\000", !285, !213, !51} ; [ DW_TAG_auto_variable ] [tags] [line 563]
!2340 = !MDLocation(line: 563, column: 14, scope: !285)
!2341 = !MDLocation(line: 564, column: 24, scope: !285)
!2342 = !{!"0x100\00reasons\00564\000", !285, !213, !157} ; [ DW_TAG_auto_variable ] [reasons] [line 564]
!2343 = !MDLocation(line: 564, column: 14, scope: !285)
!2344 = !MDLocation(line: 565, column: 24, scope: !285)
!2345 = !{!"0x100\00levels\00565\000", !285, !213, !4} ; [ DW_TAG_auto_variable ] [levels] [line 565]
!2346 = !MDLocation(line: 565, column: 14, scope: !285)
!2347 = !{!"0x100\00cnt\00566\000", !285, !213, !5} ; [ DW_TAG_auto_variable ] [cnt] [line 566]
!2348 = !MDLocation(line: 566, column: 14, scope: !285)
!2349 = !{!"0x100\00p\00567\000", !285, !213, !61} ; [ DW_TAG_auto_variable ] [p] [line 567]
!2350 = !MDLocation(line: 567, column: 14, scope: !285)
!2351 = !MDLocation(line: 568, column: 24, scope: !285)
!2352 = !{!"0x100\00ind\00568\000", !285, !213, !5} ; [ DW_TAG_auto_variable ] [ind] [line 568]
!2353 = !MDLocation(line: 568, column: 14, scope: !285)
!2354 = !MDLocation(line: 573, column: 5, scope: !285)
!2355 = !MDLocation(line: 575, column: 5, scope: !285)
!2356 = !MDLocation(line: 576, column: 9, scope: !2357)
!2357 = !{!"0xb\00575\007\00107", !138, !285}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2358 = !MDLocation(line: 576, column: 9, scope: !2359)
!2359 = !{!"0xb\001", !138, !2357}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2360 = !MDLocation(line: 576, column: 9, scope: !2361)
!2361 = !{!"0xb\002", !138, !2357}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2362 = !MDLocation(line: 578, column: 13, scope: !2363)
!2363 = !{!"0xb\00578\0013\00108", !138, !2357}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2364 = !MDLocation(line: 578, column: 13, scope: !2357)
!2365 = !MDLocation(line: 579, column: 21, scope: !2366)
!2366 = !{!"0xb\00578\0030\00109", !138, !2363}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2367 = !{!"0x100\00q\00579\000", !2366, !213, !61} ; [ DW_TAG_auto_variable ] [q] [line 579]
!2368 = !MDLocation(line: 579, column: 17, scope: !2366)
!2369 = !MDLocation(line: 580, column: 13, scope: !2366)
!2370 = !MDLocation(line: 580, column: 13, scope: !2371)
!2371 = !{!"0xb\001", !138, !2366}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2372 = !MDLocation(line: 580, column: 13, scope: !2373)
!2373 = !{!"0xb\003", !138, !2366}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2374 = !MDLocation(line: 580, column: 13, scope: !2375)
!2375 = !{!"0xb\004", !138, !2376}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2376 = !{!"0xb\002", !138, !2366}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2377 = !MDLocation(line: 581, column: 22, scope: !2378)
!2378 = !{!"0xb\00581\0017\00110", !138, !2366}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2379 = !MDLocation(line: 581, column: 17, scope: !2378)
!2380 = !MDLocation(line: 581, column: 17, scope: !2366)
!2381 = !MDLocation(line: 581, column: 55, scope: !2378)
!2382 = !MDLocation(line: 581, column: 48, scope: !2378)
!2383 = !MDLocation(line: 582, column: 22, scope: !2384)
!2384 = !{!"0xb\00581\0071\00111", !138, !2378}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2385 = !MDLocation(line: 582, column: 17, scope: !2384)
!2386 = !MDLocation(line: 583, column: 27, scope: !2384)
!2387 = !MDLocation(line: 583, column: 38, scope: !2384)
!2388 = !MDLocation(line: 583, column: 17, scope: !2384)
!2389 = !MDLocation(line: 584, column: 32, scope: !2384)
!2390 = !MDLocation(line: 584, column: 17, scope: !2384)
!2391 = !MDLocation(line: 585, column: 28, scope: !2392)
!2392 = !{!"0xb\00585\0021\00112", !138, !2384}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2393 = !MDLocation(line: 585, column: 21, scope: !2392)
!2394 = !MDLocation(line: 585, column: 43, scope: !2392)
!2395 = !MDLocation(line: 585, column: 21, scope: !2384)
!2396 = !MDLocation(line: 586, column: 21, scope: !2392)
!2397 = !MDLocation(line: 588, column: 21, scope: !2392)
!2398 = !MDLocation(line: 589, column: 13, scope: !2384)
!2399 = !MDLocation(line: 590, column: 9, scope: !2366)
!2400 = !MDLocation(line: 592, column: 17, scope: !2401)
!2401 = !{!"0xb\00592\0017\00114", !138, !2402}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2402 = !{!"0xb\00590\0014\00113", !138, !2363}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2403 = !MDLocation(line: 592, column: 17, scope: !2402)
!2404 = !MDLocation(line: 593, column: 17, scope: !2401)
!2405 = !MDLocation(line: 595, column: 20, scope: !2402)
!2406 = !{!"0x100\00lits\00569\000", !285, !213, !60} ; [ DW_TAG_auto_variable ] [lits] [line 569]
!2407 = !MDLocation(line: 569, column: 14, scope: !285)
!2408 = !MDLocation(line: 597, column: 23, scope: !2409)
!2409 = !{!"0xb\00597\0013\00115", !138, !2402}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2410 = !{!"0x100\00j\00570\000", !285, !213, !5} ; [ DW_TAG_auto_variable ] [j] [line 570]
!2411 = !MDLocation(line: 570, column: 17, scope: !285)
!2412 = !MDLocation(line: 597, column: 18, scope: !2409)
!2413 = !MDLocation(line: 597, column: 52, scope: !2414)
!2414 = !{!"0xb\00597\0013\00116", !138, !2409}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2415 = !MDLocation(line: 597, column: 48, scope: !2414)
!2416 = !MDLocation(line: 597, column: 13, scope: !2409)
!2417 = !MDLocation(line: 598, column: 25, scope: !2418)
!2418 = !{!"0xb\00597\0072\00117", !138, !2414}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2419 = !{!"0x100\00q\00598\000", !2418, !213, !61} ; [ DW_TAG_auto_variable ] [q] [line 598]
!2420 = !MDLocation(line: 598, column: 21, scope: !2418)
!2421 = !MDLocation(line: 599, column: 17, scope: !2418)
!2422 = !MDLocation(line: 599, column: 17, scope: !2423)
!2423 = !{!"0xb\001", !138, !2418}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2424 = !MDLocation(line: 599, column: 17, scope: !2425)
!2425 = !{!"0xb\003", !138, !2418}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2426 = !MDLocation(line: 599, column: 17, scope: !2427)
!2427 = !{!"0xb\004", !138, !2428}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2428 = !{!"0xb\002", !138, !2418}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2429 = !MDLocation(line: 600, column: 26, scope: !2430)
!2430 = !{!"0xb\00600\0021\00118", !138, !2418}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2431 = !MDLocation(line: 600, column: 21, scope: !2430)
!2432 = !MDLocation(line: 600, column: 21, scope: !2418)
!2433 = !MDLocation(line: 600, column: 59, scope: !2430)
!2434 = !MDLocation(line: 600, column: 52, scope: !2430)
!2435 = !MDLocation(line: 601, column: 26, scope: !2436)
!2436 = !{!"0xb\00600\0075\00119", !138, !2430}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2437 = !MDLocation(line: 601, column: 21, scope: !2436)
!2438 = !MDLocation(line: 602, column: 31, scope: !2436)
!2439 = !MDLocation(line: 602, column: 42, scope: !2436)
!2440 = !MDLocation(line: 602, column: 21, scope: !2436)
!2441 = !MDLocation(line: 603, column: 36, scope: !2436)
!2442 = !MDLocation(line: 603, column: 21, scope: !2436)
!2443 = !MDLocation(line: 604, column: 32, scope: !2444)
!2444 = !{!"0xb\00604\0025\00120", !138, !2436}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2445 = !MDLocation(line: 604, column: 25, scope: !2444)
!2446 = !MDLocation(line: 604, column: 47, scope: !2444)
!2447 = !MDLocation(line: 604, column: 25, scope: !2436)
!2448 = !MDLocation(line: 605, column: 25, scope: !2444)
!2449 = !MDLocation(line: 607, column: 25, scope: !2444)
!2450 = !MDLocation(line: 608, column: 17, scope: !2436)
!2451 = !MDLocation(line: 609, column: 13, scope: !2418)
!2452 = !MDLocation(line: 597, column: 68, scope: !2414)
!2453 = !MDLocation(line: 597, column: 13, scope: !2414)
!2454 = !MDLocation(line: 612, column: 9, scope: !2357)
!2455 = !MDLocation(line: 612, column: 35, scope: !2456)
!2456 = !{!"0xb\003", !138, !2359}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2457 = !MDLocation(line: 612, column: 29, scope: !2357)
!2458 = !MDLocation(line: 612, column: 21, scope: !2357)
!2459 = !MDLocation(line: 612, column: 16, scope: !2357)
!2460 = !MDLocation(line: 612, column: 9, scope: !2361)
!2461 = !MDLocation(line: 614, column: 13, scope: !2357)
!2462 = !MDLocation(line: 615, column: 21, scope: !2357)
!2463 = !MDLocation(line: 615, column: 13, scope: !2357)
!2464 = !MDLocation(line: 616, column: 9, scope: !2357)
!2465 = !MDLocation(line: 618, column: 5, scope: !2357)
!2466 = !MDLocation(line: 618, column: 13, scope: !2467)
!2467 = !{!"0xb\001", !138, !285}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2468 = !MDLocation(line: 620, column: 27, scope: !285)
!2469 = !MDLocation(line: 620, column: 6, scope: !285)
!2470 = !MDLocation(line: 620, column: 5, scope: !285)
!2471 = !MDLocation(line: 622, column: 12, scope: !285)
!2472 = !{!"0x100\00minl\00570\000", !285, !213, !5} ; [ DW_TAG_auto_variable ] [minl] [line 570]
!2473 = !MDLocation(line: 570, column: 20, scope: !285)
!2474 = !{!"0x100\00i\00570\000", !285, !213, !5} ; [ DW_TAG_auto_variable ] [i] [line 570]
!2475 = !MDLocation(line: 570, column: 14, scope: !285)
!2476 = !MDLocation(line: 624, column: 10, scope: !2477)
!2477 = !{!"0xb\00624\005\00121", !138, !285}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2478 = !MDLocation(line: 624, column: 21, scope: !2479)
!2479 = !{!"0xb\00624\005\00122", !138, !2477}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2480 = !MDLocation(line: 624, column: 17, scope: !2479)
!2481 = !MDLocation(line: 624, column: 5, scope: !2477)
!2482 = !MDLocation(line: 625, column: 34, scope: !2483)
!2483 = !{!"0xb\00624\0044\00123", !138, !2479}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2484 = !MDLocation(line: 625, column: 26, scope: !2483)
!2485 = !MDLocation(line: 625, column: 19, scope: !2483)
!2486 = !{!"0x100\00lev\00625\000", !2483, !213, !5} ; [ DW_TAG_auto_variable ] [lev] [line 625]
!2487 = !MDLocation(line: 625, column: 13, scope: !2483)
!2488 = !MDLocation(line: 626, column: 26, scope: !2483)
!2489 = !MDLocation(line: 626, column: 20, scope: !2483)
!2490 = !MDLocation(line: 626, column: 9, scope: !2483)
!2491 = !MDLocation(line: 627, column: 5, scope: !2483)
!2492 = !MDLocation(line: 624, column: 40, scope: !2479)
!2493 = !MDLocation(line: 624, column: 5, scope: !2479)
!2494 = !MDLocation(line: 630, column: 10, scope: !2495)
!2495 = !{!"0xb\00630\005\00124", !138, !285}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2496 = !MDLocation(line: 630, column: 25, scope: !2497)
!2497 = !{!"0xb\00630\005\00125", !138, !2495}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2498 = !MDLocation(line: 630, column: 21, scope: !2497)
!2499 = !MDLocation(line: 630, column: 5, scope: !2495)
!2500 = !MDLocation(line: 631, column: 29, scope: !2501)
!2501 = !{!"0xb\00631\0013\00127", !138, !2502}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2502 = !{!"0xb\00630\0048\00126", !138, !2497}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2503 = !MDLocation(line: 631, column: 21, scope: !2501)
!2504 = !MDLocation(line: 631, column: 13, scope: !2501)
!2505 = !MDLocation(line: 631, column: 13, scope: !2502)
!2506 = !MDLocation(line: 631, column: 71, scope: !2501)
!2507 = !MDLocation(line: 631, column: 48, scope: !2501)
!2508 = !MDLocation(line: 632, column: 25, scope: !2501)
!2509 = !MDLocation(line: 632, column: 18, scope: !2501)
!2510 = !MDLocation(line: 632, column: 13, scope: !2501)
!2511 = !MDLocation(line: 633, column: 5, scope: !2502)
!2512 = !MDLocation(line: 630, column: 44, scope: !2497)
!2513 = !MDLocation(line: 630, column: 5, scope: !2497)
!2514 = !MDLocation(line: 636, column: 30, scope: !285)
!2515 = !MDLocation(line: 636, column: 5, scope: !285)
!2516 = !MDLocation(line: 637, column: 5, scope: !285)
!2517 = !MDLocation(line: 638, column: 30, scope: !285)
!2518 = !MDLocation(line: 638, column: 5, scope: !285)
!2519 = !MDLocation(line: 641, column: 25, scope: !285)
!2520 = !MDLocation(line: 641, column: 14, scope: !285)
!2521 = !{!"0x100\00tagged\00571\000", !285, !213, !4} ; [ DW_TAG_auto_variable ] [tagged] [line 571]
!2522 = !MDLocation(line: 571, column: 14, scope: !285)
!2523 = !MDLocation(line: 642, column: 10, scope: !2524)
!2524 = !{!"0xb\00642\005\00128", !138, !285}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2525 = !MDLocation(line: 642, column: 31, scope: !2526)
!2526 = !{!"0xb\00642\005\00129", !138, !2524}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2527 = !MDLocation(line: 642, column: 21, scope: !2526)
!2528 = !MDLocation(line: 642, column: 17, scope: !2526)
!2529 = !MDLocation(line: 642, column: 5, scope: !2524)
!2530 = !MDLocation(line: 643, column: 14, scope: !2526)
!2531 = !MDLocation(line: 643, column: 9, scope: !2526)
!2532 = !MDLocation(line: 642, column: 44, scope: !2526)
!2533 = !MDLocation(line: 642, column: 5, scope: !2526)
!2534 = !MDLocation(line: 644, column: 17, scope: !285)
!2535 = !MDLocation(line: 644, column: 5, scope: !285)
!2536 = !MDLocation(line: 655, column: 9, scope: !2537)
!2537 = !{!"0xb\00655\009\00130", !138, !285}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2538 = !MDLocation(line: 655, column: 9, scope: !285)
!2539 = !{!"0x100\00max_i\00656\000", !2540, !213, !5} ; [ DW_TAG_auto_variable ] [max_i] [line 656]
!2540 = !{!"0xb\00655\0031\00131", !138, !2537}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2541 = !MDLocation(line: 656, column: 13, scope: !2540)
!2542 = !MDLocation(line: 657, column: 36, scope: !2540)
!2543 = !MDLocation(line: 657, column: 28, scope: !2540)
!2544 = !MDLocation(line: 657, column: 21, scope: !2540)
!2545 = !{!"0x100\00max\00657\000", !2540, !213, !5} ; [ DW_TAG_auto_variable ] [max] [line 657]
!2546 = !MDLocation(line: 657, column: 13, scope: !2540)
!2547 = !MDLocation(line: 660, column: 14, scope: !2548)
!2548 = !{!"0xb\00660\009\00132", !138, !2540}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2549 = !MDLocation(line: 660, column: 25, scope: !2550)
!2550 = !{!"0xb\00660\009\00133", !138, !2548}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2551 = !MDLocation(line: 660, column: 21, scope: !2550)
!2552 = !MDLocation(line: 660, column: 9, scope: !2548)
!2553 = !MDLocation(line: 661, column: 32, scope: !2554)
!2554 = !{!"0xb\00661\0017\00134", !138, !2550}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2555 = !MDLocation(line: 661, column: 24, scope: !2554)
!2556 = !MDLocation(line: 661, column: 17, scope: !2554)
!2557 = !MDLocation(line: 661, column: 17, scope: !2550)
!2558 = !MDLocation(line: 662, column: 40, scope: !2559)
!2559 = !{!"0xb\00661\0048\00135", !138, !2554}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2560 = !MDLocation(line: 662, column: 32, scope: !2559)
!2561 = !MDLocation(line: 662, column: 25, scope: !2559)
!2562 = !MDLocation(line: 664, column: 13, scope: !2559)
!2563 = !MDLocation(line: 661, column: 44, scope: !2564)
!2564 = !{!"0xb\001", !138, !2554}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2565 = !MDLocation(line: 660, column: 44, scope: !2550)
!2566 = !MDLocation(line: 660, column: 9, scope: !2550)
!2567 = !MDLocation(line: 666, column: 23, scope: !2540)
!2568 = !{!"0x100\00tmp\00658\000", !2540, !213, !61} ; [ DW_TAG_auto_variable ] [tmp] [line 658]
!2569 = !MDLocation(line: 658, column: 13, scope: !2540)
!2570 = !MDLocation(line: 667, column: 23, scope: !2540)
!2571 = !MDLocation(line: 667, column: 9, scope: !2540)
!2572 = !MDLocation(line: 668, column: 9, scope: !2540)
!2573 = !MDLocation(line: 669, column: 5, scope: !2540)
!2574 = !MDLocation(line: 676, column: 1, scope: !285)
!2575 = !{!"0x101\00s\0016777713\000", !288, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 497]
!2576 = !MDLocation(line: 497, column: 42, scope: !288)
!2577 = !{!"0x101\00l\0033554929\000", !288, !213, !61} ; [ DW_TAG_arg_variable ] [l] [line 497]
!2578 = !MDLocation(line: 497, column: 49, scope: !288)
!2579 = !{!"0x101\00minl\0050332145\000", !288, !213, !5} ; [ DW_TAG_arg_variable ] [minl] [line 497]
!2580 = !MDLocation(line: 497, column: 56, scope: !288)
!2581 = !MDLocation(line: 499, column: 24, scope: !288)
!2582 = !{!"0x100\00tags\00499\000", !288, !213, !51} ; [ DW_TAG_auto_variable ] [tags] [line 499]
!2583 = !MDLocation(line: 499, column: 14, scope: !288)
!2584 = !MDLocation(line: 500, column: 24, scope: !288)
!2585 = !{!"0x100\00reasons\00500\000", !288, !213, !157} ; [ DW_TAG_auto_variable ] [reasons] [line 500]
!2586 = !MDLocation(line: 500, column: 14, scope: !288)
!2587 = !MDLocation(line: 501, column: 24, scope: !288)
!2588 = !{!"0x100\00levels\00501\000", !288, !213, !4} ; [ DW_TAG_auto_variable ] [levels] [line 501]
!2589 = !MDLocation(line: 501, column: 14, scope: !288)
!2590 = !MDLocation(line: 502, column: 34, scope: !288)
!2591 = !MDLocation(line: 502, column: 24, scope: !288)
!2592 = !{!"0x100\00top\00502\000", !288, !213, !5} ; [ DW_TAG_auto_variable ] [top] [line 502]
!2593 = !MDLocation(line: 502, column: 14, scope: !288)
!2594 = !MDLocation(line: 504, column: 5, scope: !288)
!2595 = !MDLocation(line: 504, column: 5, scope: !2596)
!2596 = !{!"0xb\001", !138, !288}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2597 = !MDLocation(line: 504, column: 5, scope: !2598)
!2598 = !{!"0xb\003", !138, !288}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2599 = !MDLocation(line: 504, column: 5, scope: !2600)
!2600 = !{!"0xb\004", !138, !2601}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2601 = !{!"0xb\002", !138, !288}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2602 = !MDLocation(line: 505, column: 5, scope: !288)
!2603 = !MDLocation(line: 505, column: 5, scope: !2596)
!2604 = !MDLocation(line: 505, column: 5, scope: !2601)
!2605 = !MDLocation(line: 506, column: 17, scope: !288)
!2606 = !MDLocation(line: 506, column: 5, scope: !288)
!2607 = !MDLocation(line: 507, column: 15, scope: !288)
!2608 = !MDLocation(line: 507, column: 25, scope: !288)
!2609 = !MDLocation(line: 507, column: 5, scope: !288)
!2610 = !MDLocation(line: 509, column: 5, scope: !288)
!2611 = !MDLocation(line: 509, column: 22, scope: !288)
!2612 = !MDLocation(line: 509, column: 12, scope: !288)
!2613 = !MDLocation(line: 511, column: 49, scope: !2614)
!2614 = !{!"0xb\00509\0037\00136", !138, !288}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2615 = !MDLocation(line: 511, column: 39, scope: !2614)
!2616 = !MDLocation(line: 511, column: 17, scope: !2614)
!2617 = !MDLocation(line: 511, column: 28, scope: !2614)
!2618 = !{!"0x100\00v\00511\000", !2614, !213, !5} ; [ DW_TAG_auto_variable ] [v] [line 511]
!2619 = !MDLocation(line: 511, column: 13, scope: !2614)
!2620 = !MDLocation(line: 512, column: 9, scope: !2614)
!2621 = !MDLocation(line: 512, column: 9, scope: !2622)
!2622 = !{!"0xb\001", !138, !2614}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2623 = !MDLocation(line: 512, column: 9, scope: !2624)
!2624 = !{!"0xb\003", !138, !2614}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2625 = !MDLocation(line: 512, column: 9, scope: !2626)
!2626 = !{!"0xb\004", !138, !2627}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2627 = !{!"0xb\002", !138, !2614}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2628 = !MDLocation(line: 513, column: 21, scope: !2614)
!2629 = !MDLocation(line: 513, column: 41, scope: !2614)
!2630 = !MDLocation(line: 513, column: 31, scope: !2614)
!2631 = !MDLocation(line: 513, column: 9, scope: !2614)
!2632 = !MDLocation(line: 514, column: 9, scope: !2614)
!2633 = !MDLocation(line: 514, column: 9, scope: !2622)
!2634 = !MDLocation(line: 514, column: 9, scope: !2627)
!2635 = !MDLocation(line: 515, column: 16, scope: !2614)
!2636 = !{!"0x100\00c\00510\000", !2614, !213, !140} ; [ DW_TAG_auto_variable ] [c] [line 510]
!2637 = !MDLocation(line: 510, column: 17, scope: !2614)
!2638 = !MDLocation(line: 517, column: 13, scope: !2639)
!2639 = !{!"0xb\00517\0013\00137", !138, !2614}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2640 = !MDLocation(line: 517, column: 13, scope: !2614)
!2641 = !MDLocation(line: 518, column: 29, scope: !2642)
!2642 = !{!"0xb\00517\0030\00138", !138, !2639}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2643 = !MDLocation(line: 518, column: 21, scope: !2642)
!2644 = !{!"0x100\00v\00518\000", !2642, !213, !5} ; [ DW_TAG_auto_variable ] [v] [line 518]
!2645 = !MDLocation(line: 518, column: 17, scope: !2642)
!2646 = !MDLocation(line: 519, column: 17, scope: !2647)
!2647 = !{!"0xb\00519\0017\00139", !138, !2642}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2648 = !MDLocation(line: 519, column: 17, scope: !2642)
!2649 = !MDLocation(line: 519, column: 39, scope: !2647)
!2650 = !MDLocation(line: 520, column: 21, scope: !2651)
!2651 = !{!"0xb\00520\0021\00141", !138, !2652}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2652 = !{!"0xb\00519\0054\00140", !138, !2647}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2653 = !MDLocation(line: 520, column: 21, scope: !2652)
!2654 = !MDLocation(line: 520, column: 48, scope: !2651)
!2655 = !MDLocation(line: 520, column: 42, scope: !2651)
!2656 = !MDLocation(line: 520, column: 41, scope: !2651)
!2657 = !MDLocation(line: 521, column: 31, scope: !2658)
!2658 = !{!"0xb\00520\0073\00142", !138, !2651}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2659 = !MDLocation(line: 521, column: 21, scope: !2658)
!2660 = !MDLocation(line: 522, column: 21, scope: !2658)
!2661 = !MDLocation(line: 523, column: 31, scope: !2658)
!2662 = !MDLocation(line: 523, column: 21, scope: !2658)
!2663 = !MDLocation(line: 524, column: 17, scope: !2658)
!2664 = !MDLocation(line: 525, column: 46, scope: !2665)
!2665 = !{!"0xb\00524\0022\00143", !138, !2651}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2666 = !MDLocation(line: 525, column: 35, scope: !2665)
!2667 = !{!"0x100\00tagged\00525\000", !2665, !213, !4} ; [ DW_TAG_auto_variable ] [tagged] [line 525]
!2668 = !MDLocation(line: 525, column: 26, scope: !2665)
!2669 = !{!"0x100\00j\00526\000", !2665, !213, !5} ; [ DW_TAG_auto_variable ] [j] [line 526]
!2670 = !MDLocation(line: 526, column: 25, scope: !2665)
!2671 = !MDLocation(line: 527, column: 26, scope: !2672)
!2672 = !{!"0xb\00527\0021\00144", !138, !2665}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2673 = !MDLocation(line: 527, column: 49, scope: !2674)
!2674 = !{!"0xb\00527\0021\00145", !138, !2672}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2675 = !MDLocation(line: 527, column: 39, scope: !2674)
!2676 = !MDLocation(line: 527, column: 35, scope: !2674)
!2677 = !MDLocation(line: 527, column: 21, scope: !2672)
!2678 = !MDLocation(line: 528, column: 30, scope: !2674)
!2679 = !MDLocation(line: 528, column: 25, scope: !2674)
!2680 = !MDLocation(line: 527, column: 62, scope: !2674)
!2681 = !MDLocation(line: 527, column: 21, scope: !2674)
!2682 = !MDLocation(line: 529, column: 33, scope: !2665)
!2683 = !MDLocation(line: 529, column: 21, scope: !2665)
!2684 = !MDLocation(line: 530, column: 21, scope: !2665)
!2685 = !MDLocation(line: 532, column: 13, scope: !2652)
!2686 = !MDLocation(line: 533, column: 9, scope: !2642)
!2687 = !MDLocation(line: 534, column: 28, scope: !2688)
!2688 = !{!"0xb\00533\0014\00146", !138, !2639}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2689 = !{!"0x100\00lits\00534\000", !2688, !213, !60} ; [ DW_TAG_auto_variable ] [lits] [line 534]
!2690 = !MDLocation(line: 534, column: 21, scope: !2688)
!2691 = !{!"0x100\00i\00535\000", !2688, !213, !5} ; [ DW_TAG_auto_variable ] [i] [line 535]
!2692 = !MDLocation(line: 535, column: 21, scope: !2688)
!2693 = !MDLocation(line: 537, column: 18, scope: !2694)
!2694 = !{!"0xb\00537\0013\00147", !138, !2688}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2695 = !MDLocation(line: 537, column: 29, scope: !2696)
!2696 = !{!"0xb\00537\0013\00148", !138, !2694}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2697 = !MDLocation(line: 537, column: 25, scope: !2696)
!2698 = !MDLocation(line: 537, column: 13, scope: !2694)
!2699 = !MDLocation(line: 538, column: 33, scope: !2700)
!2700 = !{!"0xb\00537\0049\00149", !138, !2696}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2701 = !MDLocation(line: 538, column: 25, scope: !2700)
!2702 = !{!"0x100\00v\00538\000", !2700, !213, !5} ; [ DW_TAG_auto_variable ] [v] [line 538]
!2703 = !MDLocation(line: 538, column: 21, scope: !2700)
!2704 = !MDLocation(line: 539, column: 21, scope: !2705)
!2705 = !{!"0xb\00539\0021\00150", !138, !2700}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2706 = !MDLocation(line: 539, column: 21, scope: !2700)
!2707 = !MDLocation(line: 539, column: 43, scope: !2705)
!2708 = !MDLocation(line: 540, column: 25, scope: !2709)
!2709 = !{!"0xb\00540\0025\00152", !138, !2710}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2710 = !{!"0xb\00539\0058\00151", !138, !2705}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2711 = !MDLocation(line: 540, column: 25, scope: !2710)
!2712 = !MDLocation(line: 540, column: 52, scope: !2709)
!2713 = !MDLocation(line: 540, column: 46, scope: !2709)
!2714 = !MDLocation(line: 540, column: 45, scope: !2709)
!2715 = !MDLocation(line: 542, column: 35, scope: !2716)
!2716 = !{!"0xb\00540\0077\00153", !138, !2709}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2717 = !MDLocation(line: 542, column: 53, scope: !2716)
!2718 = !MDLocation(line: 542, column: 45, scope: !2716)
!2719 = !MDLocation(line: 542, column: 25, scope: !2716)
!2720 = !MDLocation(line: 543, column: 25, scope: !2716)
!2721 = !MDLocation(line: 544, column: 35, scope: !2716)
!2722 = !MDLocation(line: 544, column: 25, scope: !2716)
!2723 = !MDLocation(line: 545, column: 21, scope: !2716)
!2724 = !MDLocation(line: 546, column: 50, scope: !2725)
!2725 = !{!"0xb\00545\0026\00154", !138, !2709}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2726 = !MDLocation(line: 546, column: 39, scope: !2725)
!2727 = !{!"0x100\00tagged\00546\000", !2725, !213, !4} ; [ DW_TAG_auto_variable ] [tagged] [line 546]
!2728 = !MDLocation(line: 546, column: 30, scope: !2725)
!2729 = !{!"0x100\00j\00535\000", !2688, !213, !5} ; [ DW_TAG_auto_variable ] [j] [line 535]
!2730 = !MDLocation(line: 535, column: 24, scope: !2688)
!2731 = !MDLocation(line: 547, column: 30, scope: !2732)
!2732 = !{!"0xb\00547\0025\00155", !138, !2725}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2733 = !MDLocation(line: 547, column: 53, scope: !2734)
!2734 = !{!"0xb\00547\0025\00156", !138, !2732}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2735 = !MDLocation(line: 547, column: 43, scope: !2734)
!2736 = !MDLocation(line: 547, column: 39, scope: !2734)
!2737 = !MDLocation(line: 547, column: 25, scope: !2732)
!2738 = !MDLocation(line: 548, column: 34, scope: !2734)
!2739 = !MDLocation(line: 548, column: 29, scope: !2734)
!2740 = !MDLocation(line: 547, column: 66, scope: !2734)
!2741 = !MDLocation(line: 547, column: 25, scope: !2734)
!2742 = !MDLocation(line: 549, column: 37, scope: !2725)
!2743 = !MDLocation(line: 549, column: 25, scope: !2725)
!2744 = !MDLocation(line: 550, column: 25, scope: !2725)
!2745 = !MDLocation(line: 552, column: 17, scope: !2710)
!2746 = !MDLocation(line: 553, column: 13, scope: !2700)
!2747 = !MDLocation(line: 537, column: 45, scope: !2696)
!2748 = !MDLocation(line: 537, column: 13, scope: !2696)
!2749 = !MDLocation(line: 557, column: 5, scope: !288)
!2750 = !MDLocation(line: 558, column: 1, scope: !288)
!2751 = !{!"0x101\00c\0016777300\000", !291, !213, !140} ; [ DW_TAG_arg_variable ] [c] [line 84]
!2752 = !MDLocation(line: 84, column: 48, scope: !291)
!2753 = !MDLocation(line: 84, column: 69, scope: !291)
!2754 = !MDLocation(line: 84, column: 62, scope: !291)
!2755 = !{!"0x101\00s\0016777444\000", !294, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 228]
!2756 = !MDLocation(line: 228, column: 41, scope: !294)
!2757 = !{!"0x101\00v\0033554660\000", !294, !213, !5} ; [ DW_TAG_arg_variable ] [v] [line 228]
!2758 = !MDLocation(line: 228, column: 48, scope: !294)
!2759 = !MDLocation(line: 235, column: 9, scope: !2760)
!2760 = !{!"0xb\00235\009\00157", !138, !294}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2761 = !MDLocation(line: 235, column: 9, scope: !294)
!2762 = !MDLocation(line: 236, column: 9, scope: !2760)
!2763 = !MDLocation(line: 238, column: 1, scope: !294)
!2764 = !{!"0x101\00v\0016777261\000", !295, !96, !272} ; [ DW_TAG_arg_variable ] [v] [line 45]
!2765 = !MDLocation(line: 45, column: 41, scope: !295)
!2766 = !{!"0x101\00k\0033554477\000", !295, !96, !5} ; [ DW_TAG_arg_variable ] [k] [line 45]
!2767 = !MDLocation(line: 45, column: 48, scope: !295)
!2768 = !MDLocation(line: 45, column: 55, scope: !295)
!2769 = !MDLocation(line: 45, column: 71, scope: !295)
!2770 = !{!"0x101\00s\0016777355\000", !299, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 139]
!2771 = !MDLocation(line: 139, column: 45, scope: !299)
!2772 = !{!"0x101\00v\0033554571\000", !299, !213, !5} ; [ DW_TAG_arg_variable ] [v] [line 139]
!2773 = !MDLocation(line: 139, column: 52, scope: !299)
!2774 = !MDLocation(line: 141, column: 21, scope: !299)
!2775 = !{!"0x100\00orderpos\00141\000", !299, !213, !4} ; [ DW_TAG_auto_variable ] [orderpos] [line 141]
!2776 = !MDLocation(line: 141, column: 10, scope: !299)
!2777 = !MDLocation(line: 142, column: 9, scope: !2778)
!2778 = !{!"0xb\00142\009\00164", !138, !299}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2779 = !MDLocation(line: 142, column: 9, scope: !299)
!2780 = !MDLocation(line: 143, column: 33, scope: !2781)
!2781 = !{!"0xb\00142\0027\00165", !138, !2778}   ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2782 = !MDLocation(line: 143, column: 23, scope: !2781)
!2783 = !MDLocation(line: 143, column: 9, scope: !2781)
!2784 = !MDLocation(line: 144, column: 19, scope: !2781)
!2785 = !MDLocation(line: 144, column: 9, scope: !2781)
!2786 = !MDLocation(line: 145, column: 9, scope: !2781)
!2787 = !MDLocation(line: 146, column: 5, scope: !2781)
!2788 = !MDLocation(line: 147, column: 1, scope: !299)
!2789 = !{!"0x101\00v\0016777316\000", !318, !213, !150} ; [ DW_TAG_arg_variable ] [v] [line 100]
!2790 = !MDLocation(line: 100, column: 41, scope: !318)
!2791 = !{!"0x101\00e\0033554532\000", !318, !213, !38} ; [ DW_TAG_arg_variable ] [e] [line 100]
!2792 = !MDLocation(line: 100, column: 50, scope: !318)
!2793 = !MDLocation(line: 102, column: 17, scope: !318)
!2794 = !{!"0x100\00ws\00102\000", !318, !213, !37} ; [ DW_TAG_auto_variable ] [ws] [line 102]
!2795 = !MDLocation(line: 102, column: 12, scope: !318)
!2796 = !{!"0x100\00j\00103\000", !318, !213, !5} ; [ DW_TAG_auto_variable ] [j] [line 103]
!2797 = !MDLocation(line: 103, column: 12, scope: !318)
!2798 = !MDLocation(line: 105, column: 5, scope: !318)
!2799 = !MDLocation(line: 105, column: 12, scope: !2800)
!2800 = !{!"0xb\00105\005\00177", !138, !2801}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2801 = !{!"0xb\00105\005\00176", !138, !318}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2802 = !MDLocation(line: 105, column: 5, scope: !2801)
!2803 = !MDLocation(line: 105, column: 5, scope: !2804)
!2804 = !{!"0xb\002", !138, !2801}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2805 = !MDLocation(line: 105, column: 26, scope: !2806)
!2806 = !{!"0xb\003", !138, !2800}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2807 = !MDLocation(line: 105, column: 5, scope: !2800)
!2808 = !MDLocation(line: 106, column: 5, scope: !318)
!2809 = !MDLocation(line: 106, column: 5, scope: !2810)
!2810 = !{!"0xb\001", !138, !318}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2811 = !MDLocation(line: 106, column: 5, scope: !2812)
!2812 = !{!"0xb\002", !138, !318}                 ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2813 = !MDLocation(line: 107, column: 5, scope: !318)
!2814 = !MDLocation(line: 107, column: 16, scope: !2815)
!2815 = !{!"0xb\00107\005\00179", !138, !2816}    ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2816 = !{!"0xb\00107\005\00178", !138, !318}     ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2817 = !MDLocation(line: 107, column: 12, scope: !2815)
!2818 = !MDLocation(line: 107, column: 5, scope: !2816)
!2819 = !MDLocation(line: 107, column: 48, scope: !2820)
!2820 = !{!"0xb\002", !138, !2815}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2821 = !MDLocation(line: 107, column: 45, scope: !2815)
!2822 = !MDLocation(line: 107, column: 37, scope: !2815)
!2823 = !MDLocation(line: 107, column: 32, scope: !2824)
!2824 = !{!"0xb\003", !138, !2815}                ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/solver.c]
!2825 = !MDLocation(line: 107, column: 5, scope: !2815)
!2826 = !MDLocation(line: 108, column: 19, scope: !318)
!2827 = !MDLocation(line: 108, column: 5, scope: !318)
!2828 = !MDLocation(line: 109, column: 1, scope: !318)
!2829 = !{!"0x101\00s\0016777351\000", !338, !213, !158} ; [ DW_TAG_arg_variable ] [s] [line 135]
!2830 = !MDLocation(line: 135, column: 43, scope: !338)
!2831 = !{!"0x101\00v\0033554567\000", !338, !213, !5} ; [ DW_TAG_arg_variable ] [v] [line 135]
!2832 = !MDLocation(line: 135, column: 50, scope: !338)
!2833 = !MDLocation(line: 137, column: 1, scope: !338)
!2834 = !{!"0x101\00in\0016777222\000", !366, !367, !370} ; [ DW_TAG_arg_variable ] [in] [line 6]
!2835 = !MDLocation(line: 6, column: 24, scope: !366)
!2836 = !MDLocation(line: 8, column: 20, scope: !366)
!2837 = !{!"0x100\00data\008\000", !366, !367, !12} ; [ DW_TAG_auto_variable ] [data] [line 8]
!2838 = !MDLocation(line: 8, column: 13, scope: !366)
!2839 = !{!"0x100\00cap\009\000", !366, !367, !5} ; [ DW_TAG_auto_variable ] [cap] [line 9]
!2840 = !MDLocation(line: 9, column: 13, scope: !366)
!2841 = !{!"0x100\00size\0010\000", !366, !367, !5} ; [ DW_TAG_auto_variable ] [size] [line 10]
!2842 = !MDLocation(line: 10, column: 13, scope: !366)
!2843 = !MDLocation(line: 12, column: 5, scope: !366)
!2844 = !MDLocation(line: 12, column: 13, scope: !366)
!2845 = !MDLocation(line: 12, column: 12, scope: !366)
!2846 = !MDLocation(line: 13, column: 13, scope: !2847)
!2847 = !{!"0xb\0013\0013\001", !364, !2848}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/helper.c]
!2848 = !{!"0xb\0012\0022\000", !364, !366}       ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/helper.c]
!2849 = !MDLocation(line: 13, column: 13, scope: !2848)
!2850 = !MDLocation(line: 14, column: 13, scope: !2851)
!2851 = !{!"0xb\0013\0025\002", !364, !2847}      ; [ DW_TAG_lexical_block ] [/home/eq/repos/falco/bench/MiniSat-C_v1.14.1/helper.c]
!2852 = !MDLocation(line: 15, column: 34, scope: !2851)
!2853 = !MDLocation(line: 15, column: 20, scope: !2851)
!2854 = !MDLocation(line: 15, column: 40, scope: !2851)
!2855 = !MDLocation(line: 16, column: 23, scope: !2848)
!2856 = !MDLocation(line: 16, column: 17, scope: !2848)
!2857 = !MDLocation(line: 16, column: 9, scope: !2848)
!2858 = !MDLocation(line: 18, column: 26, scope: !366)
!2859 = !MDLocation(line: 18, column: 12, scope: !366)
!2860 = !MDLocation(line: 19, column: 5, scope: !366)
!2861 = !MDLocation(line: 21, column: 5, scope: !366)
