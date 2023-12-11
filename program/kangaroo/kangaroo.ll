; ModuleID = './kangaroo.c'
source_filename = "./kangaroo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@S_test_index_array = global [5 x i32] [i32 48427, i32 17148, i32 23627, i32 62548, i32 4431], align 16
@S_test_rank_array = global [5 x i32] [i32 0, i32 18, i32 346, i32 64917, i32 65463], align 16
@W_test_index_array = global [5 x i32] [i32 357773, i32 934767, i32 875723, i32 898999, i32 404505], align 16
@W_test_rank_array = global [5 x i32] [i32 1249, i32 11698, i32 1039987, i32 1043896, i32 1048018], align 16
@A_test_index_array = global [5 x i32] [i32 2112377, i32 662041, i32 5336171, i32 3642833, i32 4250760], align 16
@A_test_rank_array = global [5 x i32] [i32 104, i32 17523, i32 123928, i32 8288932, i32 8388264], align 16
@B_test_index_array = global [5 x i32] [i32 41869, i32 812306, i32 5102857, i32 18232239, i32 26860214], align 16
@B_test_rank_array = global [5 x i32] [i32 33422937, i32 10244, i32 59149, i32 33135281, i32 99], align 16
@randlc.KS = internal global i32 0, align 4
@randlc.R23 = internal global double 0.000000e+00, align 8
@randlc.R46 = internal global double 0.000000e+00, align 8
@randlc.T23 = internal global double 0.000000e+00, align 8
@randlc.T46 = internal global double 0.000000e+00, align 8
@array10 = global [33554432 x i32] zeroinitializer, align 16
@key_array = global [33554432 x i32] zeroinitializer, align 16
@key_buff_ptr_global = global i32* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"Full_verify: number of keys out of sort: %d\0A\00", align 1
@passed_verification = global i32 0, align 4
@array1 = global [33554432 x i32] zeroinitializer, align 16
@array9 = global [33554432 x i32] zeroinitializer, align 16
@array8 = global [33554432 x i32] zeroinitializer, align 16
@array7 = global [33554432 x i32] zeroinitializer, align 16
@array6 = global [33554432 x i32] zeroinitializer, align 16
@array5 = global [33554432 x i32] zeroinitializer, align 16
@array4 = global [33554432 x i32] zeroinitializer, align 16
@array3 = global [33554432 x i32] zeroinitializer, align 16
@array2 = global [33554432 x i32] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [32 x i8] c"\0A\0A Automated Prefetching Test\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" Size: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" Arrays: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c" Iterations: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\0A   iteration\0A\00", align 1
@start = global i64 0, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"        %d\0A\00", align 1
@end = global i64 0, align 8
@cpu_time_used = global double 0.000000e+00, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"time : %f\0A\00", align 1
@test_index_array = global [5 x i32] zeroinitializer, align 16
@test_rank_array = global [5 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define double @randlc(double* noundef %0, double* noundef %1) #0 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store double* %0, double** %3, align 8
  store double* %1, double** %4, align 8
  %16 = load i32, i32* @randlc.KS, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %2
  store double 1.000000e+00, double* @randlc.R23, align 8
  store double 1.000000e+00, double* @randlc.R46, align 8
  store double 1.000000e+00, double* @randlc.T23, align 8
  store double 1.000000e+00, double* @randlc.T46, align 8
  store i32 1, i32* %14, align 4
  br label %19

19:                                               ; preds = %27, %18
  %20 = load i32, i32* %14, align 4
  %21 = icmp sle i32 %20, 23
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load double, double* @randlc.R23, align 8
  %24 = fmul double 5.000000e-01, %23
  store double %24, double* @randlc.R23, align 8
  %25 = load double, double* @randlc.T23, align 8
  %26 = fmul double 2.000000e+00, %25
  store double %26, double* @randlc.T23, align 8
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %14, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %14, align 4
  br label %19, !llvm.loop !5

30:                                               ; preds = %19
  store i32 1, i32* %14, align 4
  br label %31

31:                                               ; preds = %39, %30
  %32 = load i32, i32* %14, align 4
  %33 = icmp sle i32 %32, 46
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load double, double* @randlc.R46, align 8
  %36 = fmul double 5.000000e-01, %35
  store double %36, double* @randlc.R46, align 8
  %37 = load double, double* @randlc.T46, align 8
  %38 = fmul double 2.000000e+00, %37
  store double %38, double* @randlc.T46, align 8
  br label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %14, align 4
  br label %31, !llvm.loop !7

42:                                               ; preds = %31
  store i32 1, i32* @randlc.KS, align 4
  br label %43

43:                                               ; preds = %42, %2
  %44 = load double, double* @randlc.R23, align 8
  %45 = load double*, double** %4, align 8
  %46 = load double, double* %45, align 8
  %47 = fmul double %44, %46
  store double %47, double* %5, align 8
  %48 = load double, double* %5, align 8
  %49 = fptosi double %48 to i32
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = sitofp i32 %50 to double
  store double %51, double* %9, align 8
  %52 = load double*, double** %4, align 8
  %53 = load double, double* %52, align 8
  %54 = load double, double* @randlc.T23, align 8
  %55 = load double, double* %9, align 8
  %56 = fneg double %54
  %57 = call double @llvm.fmuladd.f64(double %56, double %55, double %53)
  store double %57, double* %10, align 8
  %58 = load double, double* @randlc.R23, align 8
  %59 = load double*, double** %3, align 8
  %60 = load double, double* %59, align 8
  %61 = fmul double %58, %60
  store double %61, double* %5, align 8
  %62 = load double, double* %5, align 8
  %63 = fptosi double %62 to i32
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = sitofp i32 %64 to double
  store double %65, double* %11, align 8
  %66 = load double*, double** %3, align 8
  %67 = load double, double* %66, align 8
  %68 = load double, double* @randlc.T23, align 8
  %69 = load double, double* %11, align 8
  %70 = fneg double %68
  %71 = call double @llvm.fmuladd.f64(double %70, double %69, double %67)
  store double %71, double* %12, align 8
  %72 = load double, double* %9, align 8
  %73 = load double, double* %12, align 8
  %74 = load double, double* %10, align 8
  %75 = load double, double* %11, align 8
  %76 = fmul double %74, %75
  %77 = call double @llvm.fmuladd.f64(double %72, double %73, double %76)
  store double %77, double* %5, align 8
  %78 = load double, double* @randlc.R23, align 8
  %79 = load double, double* %5, align 8
  %80 = fmul double %78, %79
  %81 = fptosi double %80 to i32
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = sitofp i32 %82 to double
  store double %83, double* %6, align 8
  %84 = load double, double* %5, align 8
  %85 = load double, double* @randlc.T23, align 8
  %86 = load double, double* %6, align 8
  %87 = fneg double %85
  %88 = call double @llvm.fmuladd.f64(double %87, double %86, double %84)
  store double %88, double* %13, align 8
  %89 = load double, double* @randlc.T23, align 8
  %90 = load double, double* %13, align 8
  %91 = load double, double* %10, align 8
  %92 = load double, double* %12, align 8
  %93 = fmul double %91, %92
  %94 = call double @llvm.fmuladd.f64(double %89, double %90, double %93)
  store double %94, double* %7, align 8
  %95 = load double, double* @randlc.R46, align 8
  %96 = load double, double* %7, align 8
  %97 = fmul double %95, %96
  %98 = fptosi double %97 to i32
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = sitofp i32 %99 to double
  store double %100, double* %8, align 8
  %101 = load double, double* %7, align 8
  %102 = load double, double* @randlc.T46, align 8
  %103 = load double, double* %8, align 8
  %104 = fneg double %102
  %105 = call double @llvm.fmuladd.f64(double %104, double %103, double %101)
  %106 = load double*, double** %3, align 8
  store double %105, double* %106, align 8
  %107 = load double, double* @randlc.R46, align 8
  %108 = load double*, double** %3, align 8
  %109 = load double, double* %108, align 8
  %110 = fmul double %107, %109
  ret double %110
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @create_seq(double noundef %0, double noundef %1, i32* noundef %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 524288, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %33, %3
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 33554432
  br i1 %12, label %13, label %36

13:                                               ; preds = %10
  %14 = call double @randlc(double* noundef %4, double* noundef %5)
  store double %14, double* %7, align 8
  %15 = call double @randlc(double* noundef %4, double* noundef %5)
  %16 = load double, double* %7, align 8
  %17 = fadd double %16, %15
  store double %17, double* %7, align 8
  %18 = call double @randlc(double* noundef %4, double* noundef %5)
  %19 = load double, double* %7, align 8
  %20 = fadd double %19, %18
  store double %20, double* %7, align 8
  %21 = call double @randlc(double* noundef %4, double* noundef %5)
  %22 = load double, double* %7, align 8
  %23 = fadd double %22, %21
  store double %23, double* %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sitofp i32 %24 to double
  %26 = load double, double* %7, align 8
  %27 = fmul double %25, %26
  %28 = fptosi double %27 to i32
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %28, i32* %32, align 4
  br label %33

33:                                               ; preds = %13
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %10, !llvm.loop !8

36:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @full_verify() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %25, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 33554432
  br i1 %8, label %9, label %28

9:                                                ; preds = %6
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @array10, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** @key_buff_ptr_global, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @array10, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %14, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %23
  store i32 %13, i32* %24, align 4
  br label %25

25:                                               ; preds = %9
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %6, !llvm.loop !9

28:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  store i32 1, i32* %1, align 4
  br label %29

29:                                               ; preds = %47, %28
  %30 = load i32, i32* %1, align 4
  %31 = icmp slt i32 %30, 33554432
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = load i32, i32* %1, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %37, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %32
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  br label %29, !llvm.loop !10

50:                                               ; preds = %29
  %51 = load i32, i32* %2, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %2, align 4
  %55 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 noundef %54)
  br label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @passed_verification, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @passed_verification, align 4
  br label %59

59:                                               ; preds = %56, %53
  ret void
}

declare i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @hash(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = lshr i32 %3, 16
  %5 = load i32, i32* %2, align 4
  %6 = xor i32 %4, %5
  %7 = mul i32 %6, 73244475
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = lshr i32 %8, 16
  %10 = load i32, i32* %2, align 4
  %11 = xor i32 %9, %10
  %12 = mul i32 %11, 73244475
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = lshr i32 %13, 16
  %15 = load i32, i32* %2, align 4
  %16 = xor i32 %14, %15
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, 2097151
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define void @rank(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @array1, i64 0, i64 %6
  store i32 %4, i32* %7, align 4
  %8 = load i32, i32* %2, align 4
  %9 = sub nsw i32 2097152, %8
  %10 = load i32, i32* %2, align 4
  %11 = add nsw i32 %10, 32
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @array1, i64 0, i64 %12
  store i32 %9, i32* %13, align 4
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %21, %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 2097152
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @array10, i64 0, i64 %19
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %14, !llvm.loop !11

24:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %66, %24
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 33554432
  br i1 %27, label %28, label %69

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @array1, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @hash(i32 noundef %32)
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @array2, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @hash(i32 noundef %36)
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @array3, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @hash(i32 noundef %40)
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @array4, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @hash(i32 noundef %44)
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @array5, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @hash(i32 noundef %48)
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @array6, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @array7, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @array8, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @array9, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @array10, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %28
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %25, !llvm.loop !12

69:                                               ; preds = %25
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 32, i32* %9, align 4
  store i32 2, i32* %6, align 4
  br label %14

14:                                               ; preds = %20, %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 10
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load i32, i32* %9, align 4
  %19 = ashr i32 %18, 1
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %14, !llvm.loop !13

23:                                               ; preds = %14
  %24 = load i32, i32* %9, align 4
  %25 = icmp sgt i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  br label %29

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 2, %28 ]
  store i32 %30, i32* %9, align 4
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 noundef 33554432)
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 noundef 10)
  %34 = load i32, i32* %9, align 4
  %35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %34)
  %36 = call i32 (i32, ...) bitcast (i32 (...)* @timer_clear to i32 (i32, ...)*)(i32 noundef 1)
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  call void @create_seq(double noundef 0x41B2B9B0A1000000, double noundef 0x41D2309CE5400000, i32* noundef getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @array1, i64 0, i64 0))
  call void @create_seq(double noundef 0x41B2B9B0A3000000, double noundef 0x41D2309CE5400000, i32* noundef getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @array2, i64 0, i64 0))
  call void @create_seq(double noundef 0x41B2B9B0A5000000, double noundef 0x41D2309CE5400000, i32* noundef getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @array3, i64 0, i64 0))
  call void @create_seq(double noundef 0x41B2B9B0A7000000, double noundef 0x41D2309CE5400000, i32* noundef getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @array4, i64 0, i64 0))
  call void @create_seq(double noundef 0x41B2B9B0A9000000, double noundef 0x41D2309CE5400000, i32* noundef getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @array5, i64 0, i64 0))
  call void @create_seq(double noundef 0x41B2B9B0AB000000, double noundef 0x41D2309CE5400000, i32* noundef getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @array6, i64 0, i64 0))
  call void @create_seq(double noundef 0x41B2B9B0AF000000, double noundef 0x41D2309CE5400000, i32* noundef getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @array7, i64 0, i64 0))
  call void @create_seq(double noundef 0x41B2B9B0AF000000, double noundef 0x41D2309CE5400000, i32* noundef getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @array7, i64 0, i64 0))
  call void @create_seq(double noundef 0x41B2B9B0AF000000, double noundef 0x41D2309CE5400000, i32* noundef getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @array7, i64 0, i64 0))
  call void @rank(i32 noundef 1)
  %37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %38 = call i64 @clock() #4
  store i64 %38, i64* @start, align 8
  store i32 1, i32* %7, align 4
  br label %39

39:                                               ; preds = %47, %29
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 noundef %44)
  %46 = load i32, i32* %7, align 4
  call void @rank(i32 noundef %46)
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %39, !llvm.loop !14

50:                                               ; preds = %39
  %51 = call i32 (i32, ...) bitcast (i32 (...)* @timer_stop to i32 (i32, ...)*)(i32 noundef 1)
  %52 = call i32 (i32, ...) bitcast (i32 (...)* @timer_read to i32 (i32, ...)*)(i32 noundef 1)
  %53 = sitofp i32 %52 to double
  store double %53, double* %10, align 8
  %54 = call i64 @clock() #4
  store i64 %54, i64* @end, align 8
  %55 = load i64, i64* @end, align 8
  %56 = load i64, i64* @start, align 8
  %57 = sub nsw i64 %55, %56
  %58 = sitofp i64 %57 to double
  %59 = fdiv double %58, 1.000000e+06
  store double %59, double* @cpu_time_used, align 8
  %60 = load double, double* @cpu_time_used, align 8
  %61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), double noundef %60)
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare i32 @timer_clear(...) #2

; Function Attrs: nounwind
declare i64 @clock() #3

declare i32 @timer_stop(...) #2

declare i32 @timer_read(...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
