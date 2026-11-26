; ModuleID = 'example2.c'
source_filename = "example2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@assertion = private unnamed_addr constant [32 x i8] c"n < 1000, OverflowCheck Failed!\00", align 1
@filename = private unnamed_addr constant [11 x i8] c"example2.c\00", align 1
@funcname = private unnamed_addr constant [5 x i8] c"test\00", align 1
@assertion.1 = private unnamed_addr constant [32 x i8] c"n < 2000, OverflowCheck Failed!\00", align 1
@filename.2 = private unnamed_addr constant [11 x i8] c"example2.c\00", align 1
@funcname.3 = private unnamed_addr constant [5 x i8] c"test\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A = alloca [1000 x i32], align 16
  %B = alloca [2000 x i32], align 16
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = icmp sge i64 %idxprom, 1000
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__assert_fail(ptr @assertion, ptr @filename, i32 7, ptr @funcname)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr inbounds [1000 x i32], ptr %A, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %a, align 4
  %3 = load i32, ptr %n.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = icmp sge i64 %idxprom1, 2000
  br i1 %4, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__assert_fail(ptr @assertion.1, ptr @filename.2, i32 8, ptr @funcname.3)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %arrayidx4 = getelementptr inbounds [2000 x i32], ptr %B, i64 0, i64 %idxprom1
  %5 = load i32, ptr %arrayidx4, align 4
  store i32 %5, ptr %b, align 4
  ret i32 0
}

declare void @__assert_fail(ptr, ptr, i32, ptr)

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @test(i32 noundef 2000)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"clang version 24.0.0git"}
