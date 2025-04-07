

; This RUN command sets `-data-sections=true -unique-section-names=true` so data
; sections are uniqufied by numbers.
; RUN: llc -mtriple=x86_64-unknown-linux-gnu -enable-split-machine-functions \
; RUN:     -partition-static-data-sections=true -data-sections=true \
; RUN:     -unique-section-names=true -relocation-model=pic \
; RUN:     -global-var-ref-graph-dot-file=%t1.dot \
; RUN:     %s -o - 2>&1 

;; COM | FileCheck %s --dump-input=always

; RUN: cat %t1.dot | FileCheck --check-prefix=PERMODULE %s

; PERMODULE: asdfgh

@var0 = private constant i32 1
@var1 = private constant [1 x ptr][ptr @var7]
@var2 = internal constant i32 3
@var3 = private constant [1 x ptr][ptr @var15]
@var4 = internal constant [2 x ptr][ptr @var16, ptr @var9]
@var5 = internal constant i32 6
@var6 = internal constant i32 7
@var7 = private constant i32 8
@var8 = private constant i32 9
@var9 = private constant [4 x ptr][ptr @var4, ptr @var12, ptr @var31, ptr @var39]
@var10 = internal constant i32 11
@var11 = internal constant [1 x ptr][ptr @var14]
@var12 = internal constant [1 x ptr][ptr @var21]
@var13 = internal constant [1 x ptr][ptr @var26]
@var14 = internal constant i32 15
@var15 = internal constant [1 x ptr][ptr @var52]
@var16 = internal constant [2 x ptr][ptr @var20, ptr @var29]
@var17 = internal constant [1 x ptr][ptr @var23]
@var18 = private constant i32 19
@var19 = private constant [1 x ptr][ptr @var28]
@var20 = private constant [4 x ptr][ptr @var13, ptr @var16, ptr @var19, ptr @var31]
@var21 = private constant [1 x ptr][ptr @var42]
@var22 = internal constant i32 23
@var23 = internal constant [4 x ptr][ptr @var17, ptr @var10, ptr @var31, ptr @var35]
@var24 = internal constant [1 x ptr][ptr @var27]
@var25 = internal constant [2 x ptr][ptr @var32, ptr @var40]
@var26 = internal constant [3 x ptr][ptr @var10, ptr @var32, ptr @var46]
@var27 = internal constant i32 28
@var28 = private constant [1 x ptr][ptr @var11]
@var29 = private constant [3 x ptr][ptr @var17, ptr @var36, ptr @var51]
@var30 = internal constant i32 31
@var31 = internal constant [8 x ptr][ptr @var53, ptr @var37, ptr @var30, ptr @var8, ptr @var33, ptr @var38, ptr @var43, ptr @var48]
@var32 = internal constant i32 33
@var33 = private constant i32 34
@var34 = internal constant [1 x ptr][ptr @var18]
@var35 = internal constant [1 x ptr][ptr @var45]
@var36 = private constant [4 x ptr][ptr @var25, ptr @var26, ptr @var29, ptr @var31]
@var37 = internal constant [6 x ptr][ptr @var3, ptr @var19, ptr @var35, ptr @var12, ptr @var25, ptr @var55]
@var38 = internal constant i32 39
@var39 = internal constant [1 x ptr][ptr @var13]
@var40 = private constant [1 x ptr][ptr @var1]
@var41 = internal constant i32 42
@var42 = private constant [1 x ptr][ptr @var47]
@var43 = constant i32 44
@var44 = internal constant [4 x ptr][ptr @var3, ptr @var31, ptr @var49, ptr @var54]
@var45 = internal constant [1 x ptr][ptr @var24]
@var46 = private constant [1 x ptr][ptr @var0]
@var47 = constant i32 48
@var48 = constant i32 49
@var49 = private constant [2 x ptr][ptr @var44, ptr @var4]
@var50 = constant [1 x ptr][ptr @var34]
@var51 = constant [1 x ptr][ptr @var56]
@var52 = constant [1 x ptr][ptr @var2]
@var53 = constant i32 54
@var54 = constant [1 x ptr][ptr @var39]
@var55 = constant [2 x ptr][ptr @var50, ptr @var0]
@var56 = constant [3 x ptr][ptr @var31, ptr @var46, ptr @var51]




!llvm.module.flags = !{!1}

!1 = !{i32 1, !"ProfileSummary", !2}
!2 = !{!3, !4, !5, !6, !7, !8, !9, !10}
!3 = !{!"ProfileFormat", !"InstrProf"}
!4 = !{!"TotalCount", i64 1460183}
!5 = !{!"MaxCount", i64 849024}
!6 = !{!"MaxInternalCount", i64 32769}
!7 = !{!"MaxFunctionCount", i64 849024}
!8 = !{!"NumCounts", i64 23627}
!9 = !{!"NumFunctions", i64 3271}
!10 = !{!"DetailedSummary", !11}
!11 = !{!12, !13}
!12 = !{i32 990000, i64 166, i32 73}
!13 = !{i32 999999, i64 3, i32 1443}
!14 = !{!"function_entry_count", i64 100000}
!15 = !{!"function_entry_count", i64 1}
!16 = !{!"branch_weights", i32 1, i32 99999}
