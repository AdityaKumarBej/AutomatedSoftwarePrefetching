; ModuleID = 'is.c'
source_filename = "is.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@key_buff1_aptr = dso_local local_unnamed_addr global i32** null, align 8
@S_test_index_array = dso_local local_unnamed_addr global [5 x i32] [i32 48427, i32 17148, i32 23627, i32 62548, i32 4431], align 16
@S_test_rank_array = dso_local local_unnamed_addr global [5 x i32] [i32 0, i32 18, i32 346, i32 64917, i32 65463], align 16
@W_test_index_array = dso_local local_unnamed_addr global [5 x i32] [i32 357773, i32 934767, i32 875723, i32 898999, i32 404505], align 16
@W_test_rank_array = dso_local local_unnamed_addr global [5 x i32] [i32 1249, i32 11698, i32 1039987, i32 1043896, i32 1048018], align 16
@A_test_index_array = dso_local local_unnamed_addr global [5 x i32] [i32 2112377, i32 662041, i32 5336171, i32 3642833, i32 4250760], align 16
@A_test_rank_array = dso_local local_unnamed_addr global [5 x i32] [i32 104, i32 17523, i32 123928, i32 8288932, i32 8388264], align 16
@B_test_index_array = dso_local local_unnamed_addr global [5 x i32] [i32 41869, i32 812306, i32 5102857, i32 18232239, i32 26860214], align 16
@B_test_rank_array = dso_local local_unnamed_addr global [5 x i32] [i32 33422937, i32 10244, i32 59149, i32 33135281, i32 99], align 16
@C_test_index_array = dso_local local_unnamed_addr global [5 x i32] [i32 44172927, i32 72999161, i32 74326391, i32 129606274, i32 21736814], align 16
@C_test_rank_array = dso_local local_unnamed_addr global [5 x i32] [i32 61147, i32 882988, i32 266290, i32 133997595, i32 133525895], align 16
@D_test_index_array = dso_local local_unnamed_addr global [5 x i32] [i32 1317351170, i32 995930646, i32 1157283250, i32 1503301535, i32 1453734525], align 16
@D_test_rank_array = dso_local local_unnamed_addr global [5 x i32] [i32 1, i32 36538729, i32 1978098519, i32 2145192618, i32 2147425337], align 16
@KS = internal unnamed_addr global i1 false, align 4
@R23 = internal unnamed_addr global double 0.000000e+00, align 8
@R46 = internal unnamed_addr global double 0.000000e+00, align 8
@T23 = internal unnamed_addr global double 0.000000e+00, align 8
@T46 = internal unnamed_addr global double 0.000000e+00, align 8
@key_array = dso_local local_unnamed_addr global [33554432 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [24 x i8] c"Memory allocation error\00", align 1
@bucket_size = dso_local local_unnamed_addr global i32** null, align 8
@key_buff2 = dso_local local_unnamed_addr global [33554432 x i32] zeroinitializer, align 16
@bucket_ptrs = dso_local local_unnamed_addr global [1024 x i32] zeroinitializer, align 16
@key_buff_ptr_global = dso_local local_unnamed_addr global i32* null, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Full_verify: number of keys out of sort: %ld\0A\00", align 1
@passed_verification = dso_local local_unnamed_addr global i32 0, align 4
@test_index_array = dso_local local_unnamed_addr global [5 x i32] zeroinitializer, align 16
@partial_verify_vals = dso_local local_unnamed_addr global [5 x i32] zeroinitializer, align 16
@key_buff1 = dso_local global [2097152 x i32] zeroinitializer, align 16
@test_rank_array = dso_local local_unnamed_addr global [5 x i32] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [56 x i8] c"Failed partial verification: iteration %d, test key %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"timer.flag\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c" Size:  %ld  (class %c)\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c" Iterations:  %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"        %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"IS\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"keys ranked\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"2.3\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"15 Aug 2016\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"gcc\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"-lm\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"-I../common\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"-O3  -static -g -std=c99 #-mmic\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"-static -openmp #-mmic \00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c" Total execution: %8.3f\0A\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c" Initialization : %8.3f (%5.2f%%)\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c" Benchmarking   : %8.3f (%5.2f%%)\0A\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c" Sorting        : %8.3f (%5.2f%%)\0A\00", align 1
@str = private unnamed_addr constant [56 x i8] c"\0A\0A NAS Parallel Benchmarks (NPB3.3-OMP) - IS Benchmark\0A\00", align 1
@str.25 = private unnamed_addr constant [14 x i8] c"\0A   iteration\00", align 1
@str.26 = private unnamed_addr constant [21 x i8] c"\0AAdditional timers -\00", align 1

; Function Attrs: nofree nosync nounwind uwtable
define dso_local double @randlc(double* nocapture noundef %0, double* nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i1, i1* @KS, align 4
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = load double, double* @R23, align 8, !tbaa !5
  %6 = load double, double* @T23, align 8, !tbaa !5
  %7 = load double, double* @R46, align 8, !tbaa !5
  %8 = load double, double* @T46, align 8, !tbaa !5
  br label %10

9:                                                ; preds = %2
  store double 0x3E80000000000000, double* @R23, align 8, !tbaa !5
  store double 0x4160000000000000, double* @T23, align 8, !tbaa !5
  store double 0x3D10000000000000, double* @R46, align 8, !tbaa !5
  store double 0x42D0000000000000, double* @T46, align 8, !tbaa !5
  store i1 true, i1* @KS, align 4
  br label %10

10:                                               ; preds = %4, %9
  %11 = phi double [ %8, %4 ], [ 0x42D0000000000000, %9 ]
  %12 = phi double [ %7, %4 ], [ 0x3D10000000000000, %9 ]
  %13 = phi double [ %6, %4 ], [ 0x4160000000000000, %9 ]
  %14 = phi double [ %5, %4 ], [ 0x3E80000000000000, %9 ]
  %15 = load double, double* %1, align 8, !tbaa !5
  %16 = fneg double %13
  %17 = load double, double* %0, align 8, !tbaa !5
  %18 = insertelement <2 x double> poison, double %14, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %20 = insertelement <2 x double> poison, double %15, i64 0
  %21 = insertelement <2 x double> %20, double %17, i64 1
  %22 = fmul <2 x double> %19, %21
  %23 = fptosi <2 x double> %22 to <2 x i32>
  %24 = sitofp <2 x i32> %23 to <2 x double>
  %25 = insertelement <2 x double> poison, double %16, i64 0
  %26 = shufflevector <2 x double> %25, <2 x double> poison, <2 x i32> zeroinitializer
  %27 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %26, <2 x double> %24, <2 x double> %21)
  %28 = extractelement <2 x double> %27, i64 0
  %29 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> <i32 1, i32 undef>
  %30 = fmul <2 x double> %27, %29
  %31 = extractelement <2 x double> %30, i64 0
  %32 = extractelement <2 x double> %27, i64 1
  %33 = extractelement <2 x double> %24, i64 0
  %34 = tail call double @llvm.fmuladd.f64(double %33, double %32, double %31)
  %35 = fmul double %14, %34
  %36 = fptosi double %35 to i32
  %37 = sitofp i32 %36 to double
  %38 = tail call double @llvm.fmuladd.f64(double %16, double %37, double %34)
  %39 = fmul double %28, %32
  %40 = tail call double @llvm.fmuladd.f64(double %13, double %38, double %39)
  %41 = fmul double %12, %40
  %42 = fptosi double %41 to i32
  %43 = sitofp i32 %42 to double
  %44 = fneg double %11
  %45 = tail call double @llvm.fmuladd.f64(double %44, double %43, double %40)
  store double %45, double* %0, align 8, !tbaa !5
  %46 = fmul double %12, %45
  ret double %46
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nofree nosync nounwind uwtable
define dso_local double @find_my_seed(i32 noundef %0, i32 noundef %1, i64 noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %161, label %7

7:                                                ; preds = %5
  %8 = sdiv i64 %2, 4
  %9 = sext i32 %1 to i64
  %10 = add nsw i64 %9, -1
  %11 = add nsw i64 %10, %8
  %12 = sdiv i64 %11, %9
  %13 = sext i32 %0 to i64
  %14 = shl nsw i64 %13, 2
  %15 = mul i64 %14, %12
  %16 = load i1, i1* @KS, align 4
  %17 = load double, double* @R23, align 8, !tbaa !5
  %18 = load double, double* @T23, align 8, !tbaa !5
  %19 = load double, double* @R46, align 8, !tbaa !5
  %20 = load double, double* @T46, align 8, !tbaa !5
  %21 = icmp sgt i64 %15, 1
  %22 = insertelement <2 x double> poison, double %4, i64 0
  %23 = insertelement <2 x double> %22, double %3, i64 1
  br i1 %21, label %24, label %121

24:                                               ; preds = %7
  %25 = lshr exact i64 %15, 1
  br i1 %16, label %27, label %26

26:                                               ; preds = %24
  store double 0x3E80000000000000, double* @R23, align 8, !tbaa !5
  store double 0x4160000000000000, double* @T23, align 8, !tbaa !5
  store double 0x3D10000000000000, double* @R46, align 8, !tbaa !5
  store double 0x42D0000000000000, double* @T46, align 8, !tbaa !5
  store i1 true, i1* @KS, align 4
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i1 [ true, %26 ], [ %16, %24 ]
  %29 = phi double [ 0x42D0000000000000, %26 ], [ %20, %24 ]
  %30 = phi double [ 0x3D10000000000000, %26 ], [ %19, %24 ]
  %31 = phi double [ 0x4160000000000000, %26 ], [ %18, %24 ]
  %32 = phi double [ 0x3E80000000000000, %26 ], [ %17, %24 ]
  %33 = fmul double %32, %4
  %34 = fptosi double %33 to i32
  %35 = sitofp i32 %34 to double
  %36 = fneg double %31
  %37 = tail call double @llvm.fmuladd.f64(double %36, double %35, double %4) #13
  %38 = fmul double %37, %35
  %39 = tail call double @llvm.fmuladd.f64(double %35, double %37, double %38) #13
  %40 = fmul double %32, %39
  %41 = fptosi double %40 to i32
  %42 = sitofp i32 %41 to double
  %43 = tail call double @llvm.fmuladd.f64(double %36, double %42, double %39) #13
  %44 = fmul double %37, %37
  %45 = tail call double @llvm.fmuladd.f64(double %31, double %43, double %44) #13
  %46 = fmul double %30, %45
  %47 = fptosi double %46 to i32
  %48 = sitofp i32 %47 to double
  %49 = fneg double %29
  %50 = tail call double @llvm.fmuladd.f64(double %49, double %48, double %45) #13
  %51 = insertelement <2 x double> %23, double %50, i64 0
  br label %52

52:                                               ; preds = %27, %113
  %53 = phi i64 [ %118, %113 ], [ %25, %27 ]
  %54 = phi double [ %117, %113 ], [ %32, %27 ]
  %55 = phi double [ %116, %113 ], [ %31, %27 ]
  %56 = phi double [ %115, %113 ], [ %30, %27 ]
  %57 = phi double [ %114, %113 ], [ %29, %27 ]
  %58 = phi <2 x double> [ %119, %113 ], [ %51, %27 ]
  %59 = lshr i64 %53, 1
  %60 = and i64 %53, -2
  %61 = icmp eq i64 %60, %53
  br i1 %61, label %62, label %83

62:                                               ; preds = %52
  %63 = extractelement <2 x double> %58, i64 0
  %64 = fmul double %63, %54
  %65 = fptosi double %64 to i32
  %66 = sitofp i32 %65 to double
  %67 = fneg double %55
  %68 = tail call double @llvm.fmuladd.f64(double %67, double %66, double %63) #13
  %69 = fmul double %68, %66
  %70 = tail call double @llvm.fmuladd.f64(double %66, double %68, double %69) #13
  %71 = fmul double %54, %70
  %72 = fptosi double %71 to i32
  %73 = sitofp i32 %72 to double
  %74 = tail call double @llvm.fmuladd.f64(double %67, double %73, double %70) #13
  %75 = fmul double %68, %68
  %76 = tail call double @llvm.fmuladd.f64(double %55, double %74, double %75) #13
  %77 = fmul double %56, %76
  %78 = fptosi double %77 to i32
  %79 = sitofp i32 %78 to double
  %80 = fneg double %57
  %81 = tail call double @llvm.fmuladd.f64(double %80, double %79, double %76) #13
  %82 = insertelement <2 x double> %58, double %81, i64 0
  br label %113

83:                                               ; preds = %52
  %84 = fneg double %55
  %85 = insertelement <2 x double> poison, double %54, i64 0
  %86 = shufflevector <2 x double> %85, <2 x double> poison, <2 x i32> zeroinitializer
  %87 = fmul <2 x double> %58, %86
  %88 = fptosi <2 x double> %87 to <2 x i32>
  %89 = sitofp <2 x i32> %88 to <2 x double>
  %90 = insertelement <2 x double> poison, double %84, i64 0
  %91 = shufflevector <2 x double> %90, <2 x double> poison, <2 x i32> zeroinitializer
  %92 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %91, <2 x double> %89, <2 x double> %58)
  %93 = extractelement <2 x double> %92, i64 0
  %94 = shufflevector <2 x double> %89, <2 x double> poison, <2 x i32> <i32 1, i32 undef>
  %95 = fmul <2 x double> %92, %94
  %96 = extractelement <2 x double> %95, i64 0
  %97 = extractelement <2 x double> %92, i64 1
  %98 = extractelement <2 x double> %89, i64 0
  %99 = tail call double @llvm.fmuladd.f64(double %98, double %97, double %96) #13
  %100 = fmul double %54, %99
  %101 = fptosi double %100 to i32
  %102 = sitofp i32 %101 to double
  %103 = tail call double @llvm.fmuladd.f64(double %84, double %102, double %99) #13
  %104 = fmul double %93, %97
  %105 = tail call double @llvm.fmuladd.f64(double %55, double %103, double %104) #13
  %106 = fmul double %56, %105
  %107 = fptosi double %106 to i32
  %108 = sitofp i32 %107 to double
  %109 = fneg double %57
  %110 = tail call double @llvm.fmuladd.f64(double %109, double %108, double %105) #13
  %111 = add nsw i64 %53, -1
  %112 = insertelement <2 x double> %58, double %110, i64 1
  br label %113

113:                                              ; preds = %83, %62
  %114 = phi double [ %57, %62 ], [ %57, %83 ]
  %115 = phi double [ %56, %62 ], [ %56, %83 ]
  %116 = phi double [ %55, %62 ], [ %55, %83 ]
  %117 = phi double [ %54, %62 ], [ %54, %83 ]
  %118 = phi i64 [ %59, %62 ], [ %111, %83 ]
  %119 = phi <2 x double> [ %82, %62 ], [ %112, %83 ]
  %120 = icmp sgt i64 %118, 1
  br i1 %120, label %52, label %121, !llvm.loop !9

121:                                              ; preds = %113, %7
  %122 = phi double [ %20, %7 ], [ %114, %113 ]
  %123 = phi double [ %19, %7 ], [ %115, %113 ]
  %124 = phi double [ %18, %7 ], [ %116, %113 ]
  %125 = phi double [ %17, %7 ], [ %117, %113 ]
  %126 = phi i1 [ %16, %7 ], [ %28, %113 ]
  %127 = phi <2 x double> [ %23, %7 ], [ %119, %113 ]
  br i1 %126, label %129, label %128

128:                                              ; preds = %121
  store double 0x3E80000000000000, double* @R23, align 8, !tbaa !5
  store double 0x4160000000000000, double* @T23, align 8, !tbaa !5
  store double 0x3D10000000000000, double* @R46, align 8, !tbaa !5
  store double 0x42D0000000000000, double* @T46, align 8, !tbaa !5
  store i1 true, i1* @KS, align 4
  br label %129

129:                                              ; preds = %121, %128
  %130 = phi double [ 0x42D0000000000000, %128 ], [ %122, %121 ]
  %131 = phi double [ 0x3D10000000000000, %128 ], [ %123, %121 ]
  %132 = phi double [ 0x4160000000000000, %128 ], [ %124, %121 ]
  %133 = phi double [ 0x3E80000000000000, %128 ], [ %125, %121 ]
  %134 = fneg double %132
  %135 = insertelement <2 x double> poison, double %133, i64 0
  %136 = shufflevector <2 x double> %135, <2 x double> poison, <2 x i32> zeroinitializer
  %137 = fmul <2 x double> %127, %136
  %138 = fptosi <2 x double> %137 to <2 x i32>
  %139 = sitofp <2 x i32> %138 to <2 x double>
  %140 = insertelement <2 x double> poison, double %134, i64 0
  %141 = shufflevector <2 x double> %140, <2 x double> poison, <2 x i32> zeroinitializer
  %142 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %141, <2 x double> %139, <2 x double> %127)
  %143 = extractelement <2 x double> %142, i64 0
  %144 = shufflevector <2 x double> %139, <2 x double> poison, <2 x i32> <i32 1, i32 undef>
  %145 = fmul <2 x double> %142, %144
  %146 = extractelement <2 x double> %145, i64 0
  %147 = extractelement <2 x double> %142, i64 1
  %148 = extractelement <2 x double> %139, i64 0
  %149 = tail call double @llvm.fmuladd.f64(double %148, double %147, double %146) #13
  %150 = fmul double %133, %149
  %151 = fptosi double %150 to i32
  %152 = sitofp i32 %151 to double
  %153 = tail call double @llvm.fmuladd.f64(double %134, double %152, double %149) #13
  %154 = fmul double %143, %147
  %155 = tail call double @llvm.fmuladd.f64(double %132, double %153, double %154) #13
  %156 = fmul double %131, %155
  %157 = fptosi double %156 to i32
  %158 = sitofp i32 %157 to double
  %159 = fneg double %130
  %160 = tail call double @llvm.fmuladd.f64(double %159, double %158, double %155) #13
  br label %161

161:                                              ; preds = %5, %129
  %162 = phi double [ %160, %129 ], [ %3, %5 ]
  ret double %162
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @create_seq(double noundef %0, double noundef %1) local_unnamed_addr #0 {
  store i1 false, i1* @KS, align 4
  %3 = load double, double* @R23, align 8, !tbaa !5
  %4 = load double, double* @T23, align 8, !tbaa !5
  %5 = load double, double* @R46, align 8, !tbaa !5
  %6 = load double, double* @T46, align 8, !tbaa !5
  store double 0x3E80000000000000, double* @R23, align 8, !tbaa !5
  store double 0x4160000000000000, double* @T23, align 8, !tbaa !5
  store double 0x3D10000000000000, double* @R46, align 8, !tbaa !5
  store double 0x42D0000000000000, double* @T46, align 8, !tbaa !5
  store i1 true, i1* @KS, align 4
  %7 = fmul double 0x3E80000000000000, %1
  %8 = fptosi double %7 to i32
  %9 = sitofp i32 %8 to double
  %10 = fneg double 0x4160000000000000
  %11 = tail call double @llvm.fmuladd.f64(double %10, double %9, double %1) #13
  %12 = fmul double 0x3E80000000000000, %0
  %13 = fptosi double %12 to i32
  %14 = sitofp i32 %13 to double
  %15 = tail call double @llvm.fmuladd.f64(double %10, double %14, double %0) #13
  %16 = fmul double %11, %14
  %17 = tail call double @llvm.fmuladd.f64(double %9, double %15, double %16) #13
  %18 = fmul double 0x3E80000000000000, %17
  %19 = fptosi double %18 to i32
  %20 = sitofp i32 %19 to double
  %21 = tail call double @llvm.fmuladd.f64(double %10, double %20, double %17) #13
  %22 = fmul double %11, %15
  %23 = tail call double @llvm.fmuladd.f64(double 0x4160000000000000, double %21, double %22) #13
  %24 = fmul double 0x3D10000000000000, %23
  %25 = fptosi double %24 to i32
  %26 = sitofp i32 %25 to double
  %27 = fneg double 0x42D0000000000000
  %28 = tail call double @llvm.fmuladd.f64(double %27, double %26, double %23) #13
  %29 = fmul double 0x3D10000000000000, %28
  %30 = fmul double %28, 0x3E80000000000000
  %31 = fptosi double %30 to i32
  %32 = sitofp i32 %31 to double
  %33 = tail call double @llvm.fmuladd.f64(double %10, double %32, double %28) #13
  %34 = fmul double %11, %32
  %35 = tail call double @llvm.fmuladd.f64(double %9, double %33, double %34) #13
  %36 = fmul double 0x3E80000000000000, %35
  %37 = fptosi double %36 to i32
  %38 = sitofp i32 %37 to double
  %39 = tail call double @llvm.fmuladd.f64(double %10, double %38, double %35) #13
  %40 = fmul double %11, %33
  %41 = tail call double @llvm.fmuladd.f64(double 0x4160000000000000, double %39, double %40) #13
  %42 = fmul double 0x3D10000000000000, %41
  %43 = fptosi double %42 to i32
  %44 = sitofp i32 %43 to double
  %45 = tail call double @llvm.fmuladd.f64(double %27, double %44, double %41) #13
  %46 = fmul double 0x3D10000000000000, %45
  %47 = fadd double %29, %46
  %48 = fmul double %45, 0x3E80000000000000
  %49 = fptosi double %48 to i32
  %50 = sitofp i32 %49 to double
  %51 = tail call double @llvm.fmuladd.f64(double %10, double %50, double %45) #13
  %52 = fmul double %11, %50
  %53 = tail call double @llvm.fmuladd.f64(double %9, double %51, double %52) #13
  %54 = fmul double 0x3E80000000000000, %53
  %55 = fptosi double %54 to i32
  %56 = sitofp i32 %55 to double
  %57 = tail call double @llvm.fmuladd.f64(double %10, double %56, double %53) #13
  %58 = fmul double %11, %51
  %59 = tail call double @llvm.fmuladd.f64(double 0x4160000000000000, double %57, double %58) #13
  %60 = fmul double 0x3D10000000000000, %59
  %61 = fptosi double %60 to i32
  %62 = sitofp i32 %61 to double
  %63 = tail call double @llvm.fmuladd.f64(double %27, double %62, double %59) #13
  %64 = fmul double 0x3D10000000000000, %63
  %65 = fadd double %47, %64
  %66 = fmul double %63, 0x3E80000000000000
  %67 = fptosi double %66 to i32
  %68 = sitofp i32 %67 to double
  %69 = tail call double @llvm.fmuladd.f64(double %10, double %68, double %63) #13
  %70 = fmul double %11, %68
  %71 = tail call double @llvm.fmuladd.f64(double %9, double %69, double %70) #13
  %72 = fmul double 0x3E80000000000000, %71
  %73 = fptosi double %72 to i32
  %74 = sitofp i32 %73 to double
  %75 = tail call double @llvm.fmuladd.f64(double %10, double %74, double %71) #13
  %76 = fmul double %11, %69
  %77 = tail call double @llvm.fmuladd.f64(double 0x4160000000000000, double %75, double %76) #13
  %78 = fmul double 0x3D10000000000000, %77
  %79 = fptosi double %78 to i32
  %80 = sitofp i32 %79 to double
  %81 = tail call double @llvm.fmuladd.f64(double %27, double %80, double %77) #13
  %82 = fmul double 0x3D10000000000000, %81
  %83 = fadd double %65, %82
  %84 = fmul double %83, 5.242880e+05
  %85 = fptosi double %84 to i32
  store i32 %85, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 0), align 16, !tbaa !12
  br label %86

86:                                               ; preds = %2, %86
  %87 = phi i64 [ 1, %2 ], [ %173, %86 ]
  %88 = phi double [ %81, %2 ], [ %167, %86 ]
  %89 = phi double [ 0x3E80000000000000, %2 ], [ %89, %86 ]
  %90 = phi double [ 0x4160000000000000, %2 ], [ %90, %86 ]
  %91 = phi double [ 0x3D10000000000000, %2 ], [ %91, %86 ]
  %92 = phi double [ 0x42D0000000000000, %2 ], [ %92, %86 ]
  %93 = fmul double %89, %1
  %94 = fptosi double %93 to i32
  %95 = sitofp i32 %94 to double
  %96 = fneg double %90
  %97 = tail call double @llvm.fmuladd.f64(double %96, double %95, double %1) #13
  %98 = fmul double %88, %89
  %99 = fptosi double %98 to i32
  %100 = sitofp i32 %99 to double
  %101 = tail call double @llvm.fmuladd.f64(double %96, double %100, double %88) #13
  %102 = fmul double %97, %100
  %103 = tail call double @llvm.fmuladd.f64(double %95, double %101, double %102) #13
  %104 = fmul double %89, %103
  %105 = fptosi double %104 to i32
  %106 = sitofp i32 %105 to double
  %107 = tail call double @llvm.fmuladd.f64(double %96, double %106, double %103) #13
  %108 = fmul double %97, %101
  %109 = tail call double @llvm.fmuladd.f64(double %90, double %107, double %108) #13
  %110 = fmul double %91, %109
  %111 = fptosi double %110 to i32
  %112 = sitofp i32 %111 to double
  %113 = fneg double %92
  %114 = tail call double @llvm.fmuladd.f64(double %113, double %112, double %109) #13
  %115 = fmul double %91, %114
  %116 = fmul double %114, %89
  %117 = fptosi double %116 to i32
  %118 = sitofp i32 %117 to double
  %119 = tail call double @llvm.fmuladd.f64(double %96, double %118, double %114) #13
  %120 = fmul double %97, %118
  %121 = tail call double @llvm.fmuladd.f64(double %95, double %119, double %120) #13
  %122 = fmul double %89, %121
  %123 = fptosi double %122 to i32
  %124 = sitofp i32 %123 to double
  %125 = tail call double @llvm.fmuladd.f64(double %96, double %124, double %121) #13
  %126 = fmul double %97, %119
  %127 = tail call double @llvm.fmuladd.f64(double %90, double %125, double %126) #13
  %128 = fmul double %91, %127
  %129 = fptosi double %128 to i32
  %130 = sitofp i32 %129 to double
  %131 = tail call double @llvm.fmuladd.f64(double %113, double %130, double %127) #13
  %132 = fmul double %91, %131
  %133 = fadd double %115, %132
  %134 = fmul double %131, %89
  %135 = fptosi double %134 to i32
  %136 = sitofp i32 %135 to double
  %137 = tail call double @llvm.fmuladd.f64(double %96, double %136, double %131) #13
  %138 = fmul double %97, %136
  %139 = tail call double @llvm.fmuladd.f64(double %95, double %137, double %138) #13
  %140 = fmul double %89, %139
  %141 = fptosi double %140 to i32
  %142 = sitofp i32 %141 to double
  %143 = tail call double @llvm.fmuladd.f64(double %96, double %142, double %139) #13
  %144 = fmul double %97, %137
  %145 = tail call double @llvm.fmuladd.f64(double %90, double %143, double %144) #13
  %146 = fmul double %91, %145
  %147 = fptosi double %146 to i32
  %148 = sitofp i32 %147 to double
  %149 = tail call double @llvm.fmuladd.f64(double %113, double %148, double %145) #13
  %150 = fmul double %91, %149
  %151 = fadd double %133, %150
  %152 = fmul double %149, %89
  %153 = fptosi double %152 to i32
  %154 = sitofp i32 %153 to double
  %155 = tail call double @llvm.fmuladd.f64(double %96, double %154, double %149) #13
  %156 = fmul double %97, %154
  %157 = tail call double @llvm.fmuladd.f64(double %95, double %155, double %156) #13
  %158 = fmul double %89, %157
  %159 = fptosi double %158 to i32
  %160 = sitofp i32 %159 to double
  %161 = tail call double @llvm.fmuladd.f64(double %96, double %160, double %157) #13
  %162 = fmul double %97, %155
  %163 = tail call double @llvm.fmuladd.f64(double %90, double %161, double %162) #13
  %164 = fmul double %91, %163
  %165 = fptosi double %164 to i32
  %166 = sitofp i32 %165 to double
  %167 = tail call double @llvm.fmuladd.f64(double %113, double %166, double %163) #13
  %168 = fmul double %91, %167
  %169 = fadd double %151, %168
  %170 = fmul double %169, 5.242880e+05
  %171 = fptosi double %170 to i32
  %172 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %87
  store i32 %171, i32* %172, align 4, !tbaa !12
  %173 = add nuw nsw i64 %87, 1
  %174 = icmp eq i64 %173, 33554432
  br i1 %174, label %175, label %86, !llvm.loop !14

175:                                              ; preds = %86
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @alloc_mem(i64 noundef %0) local_unnamed_addr #2 {
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #13
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @perror(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @perror(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @alloc_key_buff() local_unnamed_addr #2 {
  %1 = tail call noalias dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #13
  %2 = icmp eq i8* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @perror(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)) #16
  tail call void @exit(i32 noundef 1) #15
  unreachable

4:                                                ; preds = %0
  store i8* %1, i8** bitcast (i32*** @bucket_size to i8**), align 8, !tbaa !15
  %5 = tail call noalias dereferenceable_or_null(4096) i8* @malloc(i64 noundef 4096) #13
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @perror(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)) #16
  tail call void @exit(i32 noundef 1) #15
  unreachable

8:                                                ; preds = %4
  %9 = bitcast i8* %1 to i8**
  store i8* %5, i8** %9, align 8, !tbaa !15
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(134217728) bitcast ([33554432 x i32]* @key_buff2 to i8*), i8 0, i64 134217728, i1 false), !tbaa !12
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @full_verify() local_unnamed_addr #6 {
  %1 = load i32*, i32** @key_buff_ptr_global, align 8
  br label %2

2:                                                ; preds = %0, %32
  %3 = phi i64 [ 0, %0 ], [ %33, %32 ]
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = add nuw i64 %3, 4294967295
  %7 = and i64 %6, 4294967295
  %8 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_ptrs, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4, !tbaa !12
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi i32 [ %9, %5 ], [ 0, %2 ]
  %12 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_ptrs, i64 0, i64 %3
  %13 = load i32, i32* %12, align 4, !tbaa !12
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = sext i32 %11 to i64
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ %16, %15 ], [ %28, %17 ]
  %19 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !12
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %1, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !12
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 4, !tbaa !12
  %25 = load i32, i32* %19, align 4, !tbaa !12
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %26
  store i32 %25, i32* %27, align 4, !tbaa !12
  %28 = add nsw i64 %18, 1
  %29 = load i32, i32* %12, align 4, !tbaa !12
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %17, label %32, !llvm.loop !17

32:                                               ; preds = %17, %10
  %33 = add nuw nsw i64 %3, 1
  %34 = icmp eq i64 %33, 1024
  br i1 %34, label %35, label %2, !llvm.loop !18

35:                                               ; preds = %32
  %36 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 0), align 16, !tbaa !12
  %37 = insertelement <4 x i32> poison, i32 %36, i64 3
  br label %38

38:                                               ; preds = %38, %35
  %39 = phi i64 [ 0, %35 ], [ %58, %38 ]
  %40 = phi <4 x i32> [ %37, %35 ], [ %49, %38 ]
  %41 = phi <4 x i32> [ zeroinitializer, %35 ], [ %56, %38 ]
  %42 = phi <4 x i32> [ zeroinitializer, %35 ], [ %57, %38 ]
  %43 = or i64 %39, 1
  %44 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %43
  %45 = bitcast i32* %44 to <4 x i32>*
  %46 = load <4 x i32>, <4 x i32>* %45, align 4, !tbaa !12
  %47 = getelementptr inbounds i32, i32* %44, i64 4
  %48 = bitcast i32* %47 to <4 x i32>*
  %49 = load <4 x i32>, <4 x i32>* %48, align 4, !tbaa !12
  %50 = shufflevector <4 x i32> %40, <4 x i32> %46, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %51 = shufflevector <4 x i32> %46, <4 x i32> %49, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %52 = icmp sgt <4 x i32> %50, %46
  %53 = icmp sgt <4 x i32> %51, %49
  %54 = zext <4 x i1> %52 to <4 x i32>
  %55 = zext <4 x i1> %53 to <4 x i32>
  %56 = add <4 x i32> %41, %54
  %57 = add <4 x i32> %42, %55
  %58 = add nuw i64 %39, 8
  %59 = icmp eq i64 %58, 33554424
  br i1 %59, label %60, label %38, !llvm.loop !19

60:                                               ; preds = %38
  %61 = extractelement <4 x i32> %49, i64 3
  %62 = add <4 x i32> %57, %56
  %63 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %62)
  %64 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554425), align 4, !tbaa !12
  %65 = icmp sgt i32 %61, %64
  %66 = zext i1 %65 to i32
  %67 = add nuw nsw i32 %63, %66
  %68 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554426), align 8, !tbaa !12
  %69 = icmp sgt i32 %64, %68
  %70 = zext i1 %69 to i32
  %71 = add nuw nsw i32 %67, %70
  %72 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554427), align 4, !tbaa !12
  %73 = icmp sgt i32 %68, %72
  %74 = zext i1 %73 to i32
  %75 = add nuw nsw i32 %71, %74
  %76 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554428), align 16, !tbaa !12
  %77 = icmp sgt i32 %72, %76
  %78 = zext i1 %77 to i32
  %79 = add nuw nsw i32 %75, %78
  %80 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554429), align 4, !tbaa !12
  %81 = icmp sgt i32 %76, %80
  %82 = zext i1 %81 to i32
  %83 = add nuw nsw i32 %79, %82
  %84 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554430), align 8, !tbaa !12
  %85 = icmp sgt i32 %80, %84
  %86 = zext i1 %85 to i32
  %87 = add nuw nsw i32 %83, %86
  %88 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554431), align 4, !tbaa !12
  %89 = icmp sgt i32 %84, %88
  %90 = zext i1 %89 to i32
  %91 = add nuw nsw i32 %87, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %60
  %94 = zext i32 %91 to i64
  %95 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 noundef %94)
  br label %99

96:                                               ; preds = %60
  %97 = load i32, i32* @passed_verification, align 4, !tbaa !12
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* @passed_verification, align 4, !tbaa !12
  br label %99

99:                                               ; preds = %96, %93
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local void @rank(i32 noundef %0) local_unnamed_addr #6 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %2
  store i32 %0, i32* %3, align 4, !tbaa !12
  %4 = sub nsw i32 2097152, %0
  %5 = add nsw i32 %0, 10
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %6
  store i32 %4, i32* %7, align 4, !tbaa !12
  %8 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @test_index_array, i64 0, i64 0), align 16, !tbaa !12
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4, !tbaa !12
  store i32 %11, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @partial_verify_vals, i64 0, i64 0), align 16, !tbaa !12
  %12 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @test_index_array, i64 0, i64 1), align 4, !tbaa !12
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !12
  store i32 %15, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @partial_verify_vals, i64 0, i64 1), align 4, !tbaa !12
  %16 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @test_index_array, i64 0, i64 2), align 8, !tbaa !12
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !12
  store i32 %19, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @partial_verify_vals, i64 0, i64 2), align 8, !tbaa !12
  %20 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @test_index_array, i64 0, i64 3), align 4, !tbaa !12
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !12
  store i32 %23, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @partial_verify_vals, i64 0, i64 3), align 4, !tbaa !12
  %24 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @test_index_array, i64 0, i64 4), align 16, !tbaa !12
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !12
  store i32 %27, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @partial_verify_vals, i64 0, i64 4), align 16, !tbaa !12
  %28 = load i32**, i32*** @bucket_size, align 8, !tbaa !15
  %29 = load i32*, i32** %28, align 8, !tbaa !15
  %30 = bitcast i32* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(4096) %30, i8 0, i64 4096, i1 false), !tbaa !12
  br label %31

31:                                               ; preds = %31, %1
  %32 = phi i64 [ 0, %1 ], [ %48, %31 ]
  %33 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %32
  %34 = load i32, i32* %33, align 8, !tbaa !12
  %35 = ashr i32 %34, 11
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %29, i64 %36
  %38 = load i32, i32* %37, align 4, !tbaa !12
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4, !tbaa !12
  %40 = or i64 %32, 1
  %41 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !12
  %43 = ashr i32 %42, 11
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %29, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !12
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4, !tbaa !12
  %48 = add nuw nsw i64 %32, 2
  %49 = icmp eq i64 %48, 33554432
  br i1 %49, label %50, label %31, !llvm.loop !21

50:                                               ; preds = %31
  store i32 0, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @bucket_ptrs, i64 0, i64 0), align 16, !tbaa !12
  br label %51

51:                                               ; preds = %61, %50
  %52 = phi i32 [ 0, %50 ], [ %65, %61 ]
  %53 = phi i64 [ 1, %50 ], [ %66, %61 ]
  %54 = add nsw i64 %53, -1
  %55 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_ptrs, i64 0, i64 %53
  store i32 %52, i32* %55, align 4, !tbaa !12
  %56 = getelementptr inbounds i32, i32* %29, i64 %54
  %57 = load i32, i32* %56, align 4, !tbaa !12
  %58 = add nsw i32 %57, %52
  store i32 %58, i32* %55, align 4, !tbaa !12
  %59 = add nuw nsw i64 %53, 1
  %60 = icmp eq i64 %59, 1024
  br i1 %60, label %67, label %61, !llvm.loop !22

61:                                               ; preds = %51
  %62 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_ptrs, i64 0, i64 %59
  store i32 %58, i32* %62, align 4, !tbaa !12
  %63 = getelementptr inbounds i32, i32* %29, i64 %53
  %64 = load i32, i32* %63, align 4, !tbaa !12
  %65 = add nsw i32 %64, %58
  store i32 %65, i32* %62, align 4, !tbaa !12
  %66 = add nuw nsw i64 %53, 2
  br label %51

67:                                               ; preds = %51, %67
  %68 = phi i64 [ %88, %67 ], [ 0, %51 ]
  %69 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %68
  %70 = load i32, i32* %69, align 8, !tbaa !12
  %71 = ashr i32 %70, 11
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_ptrs, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4, !tbaa !12
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4, !tbaa !12
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %76
  store i32 %70, i32* %77, align 4, !tbaa !12
  %78 = or i64 %68, 1
  %79 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4, !tbaa !12
  %81 = ashr i32 %80, 11
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_ptrs, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4, !tbaa !12
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4, !tbaa !12
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %86
  store i32 %80, i32* %87, align 4, !tbaa !12
  %88 = add nuw nsw i64 %68, 2
  %89 = icmp eq i64 %88, 33554432
  br i1 %89, label %90, label %67, !llvm.loop !23

90:                                               ; preds = %67, %173
  %91 = phi i64 [ %176, %173 ], [ 2048, %67 ]
  %92 = phi i64 [ %175, %173 ], [ 1, %67 ]
  %93 = phi i64 [ %174, %173 ], [ 0, %67 ]
  %94 = shl nuw nsw i64 %93, 11
  %95 = getelementptr [2097152 x i32], [2097152 x i32]* @key_buff1, i64 0, i64 %94
  %96 = shl nuw nsw i64 %93, 11
  %97 = getelementptr [2097152 x i32], [2097152 x i32]* @key_buff1, i64 0, i64 %96
  %98 = bitcast i32* %97 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(8192) %98, i8 0, i64 8192, i1 false), !tbaa !12
  %99 = icmp eq i64 %93, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %90
  %101 = add nuw i64 %93, 4294967295
  %102 = and i64 %101, 4294967295
  %103 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_ptrs, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4, !tbaa !12
  br label %105

105:                                              ; preds = %90, %100
  %106 = phi i32 [ %104, %100 ], [ 0, %90 ]
  %107 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_ptrs, i64 0, i64 %93
  %108 = load i32, i32* %107, align 4, !tbaa !12
  %109 = icmp slt i32 %106, %108
  br i1 %109, label %110, label %148

110:                                              ; preds = %105
  %111 = sext i32 %106 to i64
  %112 = sext i32 %108 to i64
  %113 = sub nsw i64 %112, %111
  %114 = xor i64 %111, -1
  %115 = and i64 %113, 1
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %110
  %118 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %111
  %119 = load i32, i32* %118, align 4, !tbaa !12
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @key_buff1, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4, !tbaa !12
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4, !tbaa !12
  %124 = add nsw i64 %111, 1
  br label %125

125:                                              ; preds = %117, %110
  %126 = phi i64 [ %111, %110 ], [ %124, %117 ]
  %127 = sub nsw i64 0, %112
  %128 = icmp eq i64 %114, %127
  br i1 %128, label %146, label %129

129:                                              ; preds = %125, %129
  %130 = phi i64 [ %144, %129 ], [ %126, %125 ]
  %131 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4, !tbaa !12
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @key_buff1, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4, !tbaa !12
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4, !tbaa !12
  %137 = add nsw i64 %130, 1
  %138 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4, !tbaa !12
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @key_buff1, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4, !tbaa !12
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4, !tbaa !12
  %144 = add nsw i64 %130, 2
  %145 = icmp eq i64 %144, %112
  br i1 %145, label %146, label %129, !llvm.loop !24

146:                                              ; preds = %129, %125
  %147 = load i32, i32* %97, align 16, !tbaa !12
  br label %148

148:                                              ; preds = %105, %146
  %149 = phi i32 [ %147, %146 ], [ 0, %105 ]
  %150 = add nsw i32 %149, %106
  store i32 %150, i32* %97, align 16, !tbaa !12
  %151 = load i32, i32* %95, align 16
  br label %152

152:                                              ; preds = %168, %148
  %153 = phi i32 [ %151, %148 ], [ %171, %168 ]
  %154 = phi i64 [ %92, %148 ], [ %172, %168 ]
  %155 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @key_buff1, i64 0, i64 %154
  %156 = load i32, i32* %155, align 4, !tbaa !12
  %157 = add nsw i32 %156, %153
  store i32 %157, i32* %155, align 4, !tbaa !12
  %158 = add nuw nsw i64 %154, 1
  %159 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @key_buff1, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4, !tbaa !12
  %161 = add nsw i32 %160, %157
  store i32 %161, i32* %159, align 4, !tbaa !12
  %162 = add nuw nsw i64 %154, 2
  %163 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @key_buff1, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4, !tbaa !12
  %165 = add nsw i32 %164, %161
  store i32 %165, i32* %163, align 4, !tbaa !12
  %166 = add nuw nsw i64 %154, 3
  %167 = icmp eq i64 %166, %91
  br i1 %167, label %173, label %168, !llvm.loop !25

168:                                              ; preds = %152
  %169 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @key_buff1, i64 0, i64 %166
  %170 = load i32, i32* %169, align 4, !tbaa !12
  %171 = add nsw i32 %170, %165
  store i32 %171, i32* %169, align 4, !tbaa !12
  %172 = add nuw nsw i64 %154, 4
  br label %152

173:                                              ; preds = %152
  %174 = add nuw nsw i64 %93, 1
  %175 = add nuw nsw i64 %92, 2048
  %176 = add nuw nsw i64 %91, 2048
  %177 = icmp eq i64 %174, 1024
  br i1 %177, label %178, label %90, !llvm.loop !26

178:                                              ; preds = %173
  %179 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @partial_verify_vals, i64 0, i64 0), align 16, !tbaa !12
  %180 = add i32 %179, -1
  %181 = icmp ult i32 %180, 33554431
  br i1 %181, label %182, label %194

182:                                              ; preds = %178
  %183 = zext i32 %180 to i64
  %184 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @key_buff1, i64 0, i64 %183
  %185 = load i32, i32* %184, align 4, !tbaa !12
  %186 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @test_rank_array, i64 0, i64 0), align 16, !tbaa !12
  %187 = sub nsw i32 %186, %0
  %188 = icmp eq i32 %185, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %182
  %190 = load i32, i32* @passed_verification, align 4, !tbaa !12
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* @passed_verification, align 4, !tbaa !12
  br label %194

192:                                              ; preds = %182
  %193 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 noundef %0, i32 noundef 0)
  br label %194

194:                                              ; preds = %192, %189, %178
  %195 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @partial_verify_vals, i64 0, i64 1), align 4, !tbaa !12
  %196 = add i32 %195, -1
  %197 = icmp ult i32 %196, 33554431
  br i1 %197, label %198, label %210

198:                                              ; preds = %194
  %199 = zext i32 %196 to i64
  %200 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @key_buff1, i64 0, i64 %199
  %201 = load i32, i32* %200, align 4, !tbaa !12
  %202 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @test_rank_array, i64 0, i64 1), align 4, !tbaa !12
  %203 = add nsw i32 %202, %0
  %204 = icmp eq i32 %201, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %198
  %206 = load i32, i32* @passed_verification, align 4, !tbaa !12
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* @passed_verification, align 4, !tbaa !12
  br label %210

208:                                              ; preds = %198
  %209 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 noundef %0, i32 noundef 1)
  br label %210

210:                                              ; preds = %208, %205, %194
  %211 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @partial_verify_vals, i64 0, i64 2), align 8, !tbaa !12
  %212 = add i32 %211, -1
  %213 = icmp ult i32 %212, 33554431
  br i1 %213, label %214, label %226

214:                                              ; preds = %210
  %215 = zext i32 %212 to i64
  %216 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @key_buff1, i64 0, i64 %215
  %217 = load i32, i32* %216, align 4, !tbaa !12
  %218 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @test_rank_array, i64 0, i64 2), align 8, !tbaa !12
  %219 = add nsw i32 %218, %0
  %220 = icmp eq i32 %217, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %214
  %222 = load i32, i32* @passed_verification, align 4, !tbaa !12
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* @passed_verification, align 4, !tbaa !12
  br label %226

224:                                              ; preds = %214
  %225 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 noundef %0, i32 noundef 2)
  br label %226

226:                                              ; preds = %224, %221, %210
  %227 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @partial_verify_vals, i64 0, i64 3), align 4, !tbaa !12
  %228 = add i32 %227, -1
  %229 = icmp ult i32 %228, 33554431
  br i1 %229, label %230, label %242

230:                                              ; preds = %226
  %231 = zext i32 %228 to i64
  %232 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @key_buff1, i64 0, i64 %231
  %233 = load i32, i32* %232, align 4, !tbaa !12
  %234 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @test_rank_array, i64 0, i64 3), align 4, !tbaa !12
  %235 = sub nsw i32 %234, %0
  %236 = icmp eq i32 %233, %235
  br i1 %236, label %239, label %237

237:                                              ; preds = %230
  %238 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 noundef %0, i32 noundef 3)
  br label %242

239:                                              ; preds = %230
  %240 = load i32, i32* @passed_verification, align 4, !tbaa !12
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* @passed_verification, align 4, !tbaa !12
  br label %242

242:                                              ; preds = %239, %237, %226
  %243 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @partial_verify_vals, i64 0, i64 4), align 16, !tbaa !12
  %244 = add i32 %243, -1
  %245 = icmp ult i32 %244, 33554431
  br i1 %245, label %246, label %258

246:                                              ; preds = %242
  %247 = zext i32 %244 to i64
  %248 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @key_buff1, i64 0, i64 %247
  %249 = load i32, i32* %248, align 4, !tbaa !12
  %250 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @test_rank_array, i64 0, i64 4), align 16, !tbaa !12
  %251 = add nsw i32 %250, %0
  %252 = icmp eq i32 %249, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %246
  %254 = load i32, i32* @passed_verification, align 4, !tbaa !12
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* @passed_verification, align 4, !tbaa !12
  br label %258

256:                                              ; preds = %246
  %257 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 noundef %0, i32 noundef 4)
  br label %258

258:                                              ; preds = %256, %253, %242
  %259 = icmp eq i32 %0, 10
  br i1 %259, label %260, label %261

260:                                              ; preds = %258
  store i32* getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @key_buff1, i64 0, i64 0), i32** @key_buff_ptr_global, align 8, !tbaa !15
  br label %261

261:                                              ; preds = %260, %258
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #2 {
  %3 = tail call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @timer_clear(i32 noundef 0) #13
  br label %8

6:                                                ; preds = %2
  %7 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %3)
  tail call void @timer_clear(i32 noundef 0) #13
  tail call void @timer_clear(i32 noundef 1) #13
  tail call void @timer_clear(i32 noundef 2) #13
  tail call void @timer_clear(i32 noundef 3) #13
  tail call void @timer_start(i32 noundef 3) #13
  br label %8

8:                                                ; preds = %5, %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(20) bitcast ([5 x i32]* @test_index_array to i8*), i8* noundef nonnull align 16 dereferenceable(20) bitcast ([5 x i32]* @B_test_index_array to i8*), i64 20, i1 false), !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(20) bitcast ([5 x i32]* @test_rank_array to i8*), i8* noundef nonnull align 16 dereferenceable(20) bitcast ([5 x i32]* @B_test_rank_array to i8*), i64 20, i1 false), !tbaa !12
  %9 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @str, i64 0, i64 0))
  %10 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i64 noundef 33554432, i32 noundef 66)
  %11 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 noundef 10)
  %12 = tail call i32 @putchar(i32 10)
  br i1 %4, label %23, label %13

13:                                               ; preds = %8
  tail call void @timer_start(i32 noundef 1) #13
  tail call void @create_seq(double noundef 0x41B2B9B0A1000000, double noundef 0x41D2309CE5400000)
  %14 = tail call noalias dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #13
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void @perror(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)) #16
  tail call void @exit(i32 noundef 1) #15
  unreachable

17:                                               ; preds = %13
  store i8* %14, i8** bitcast (i32*** @bucket_size to i8**), align 8, !tbaa !15
  %18 = tail call noalias dereferenceable_or_null(4096) i8* @malloc(i64 noundef 4096) #13
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void @perror(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)) #16
  tail call void @exit(i32 noundef 1) #15
  unreachable

21:                                               ; preds = %17
  %22 = bitcast i8* %14 to i8**
  store i8* %18, i8** %22, align 8, !tbaa !15
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(134217728) bitcast ([33554432 x i32]* @key_buff2 to i8*), i8 0, i64 134217728, i1 false) #13, !tbaa !12
  tail call void @timer_stop(i32 noundef 1) #13
  br label %33

23:                                               ; preds = %8
  tail call void @create_seq(double noundef 0x41B2B9B0A1000000, double noundef 0x41D2309CE5400000)
  %24 = tail call noalias dereferenceable_or_null(8) i8* @malloc(i64 noundef 8) #13
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void @perror(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)) #16
  tail call void @exit(i32 noundef 1) #15
  unreachable

27:                                               ; preds = %23
  store i8* %24, i8** bitcast (i32*** @bucket_size to i8**), align 8, !tbaa !15
  %28 = tail call noalias dereferenceable_or_null(4096) i8* @malloc(i64 noundef 4096) #13
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  tail call void @perror(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)) #16
  tail call void @exit(i32 noundef 1) #15
  unreachable

31:                                               ; preds = %27
  %32 = bitcast i8* %24 to i8**
  store i8* %28, i8** %32, align 8, !tbaa !15
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(134217728) bitcast ([33554432 x i32]* @key_buff2 to i8*), i8 0, i64 134217728, i1 false) #13, !tbaa !12
  br label %33

33:                                               ; preds = %31, %21
  tail call void @rank(i32 noundef 1)
  store i32 0, i32* @passed_verification, align 4, !tbaa !12
  %34 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str.25, i64 0, i64 0))
  tail call void @timer_start(i32 noundef 0) #13
  %35 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 noundef 1)
  tail call void @rank(i32 noundef 1)
  %36 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 noundef 2)
  tail call void @rank(i32 noundef 2)
  %37 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 noundef 3)
  tail call void @rank(i32 noundef 3)
  %38 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 noundef 4)
  tail call void @rank(i32 noundef 4)
  %39 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5)
  tail call void @rank(i32 noundef 5)
  %40 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 noundef 6)
  tail call void @rank(i32 noundef 6)
  %41 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 noundef 7)
  tail call void @rank(i32 noundef 7)
  %42 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 noundef 8)
  tail call void @rank(i32 noundef 8)
  %43 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 noundef 9)
  tail call void @rank(i32 noundef 9)
  %44 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 noundef 10)
  tail call void @rank(i32 noundef 10)
  tail call void @timer_stop(i32 noundef 0) #13
  %45 = tail call double @timer_read(i32 noundef 0) #13
  br i1 %4, label %146, label %46

46:                                               ; preds = %33
  tail call void @timer_start(i32 noundef 2) #13
  %47 = load i32*, i32** @key_buff_ptr_global, align 8
  br label %48

48:                                               ; preds = %78, %46
  %49 = phi i64 [ 0, %46 ], [ %79, %78 ]
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = add nuw nsw i64 %49, 4294967295
  %53 = and i64 %52, 4294967295
  %54 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_ptrs, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4, !tbaa !12
  br label %56

56:                                               ; preds = %51, %48
  %57 = phi i32 [ %55, %51 ], [ 0, %48 ]
  %58 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_ptrs, i64 0, i64 %49
  %59 = load i32, i32* %58, align 4, !tbaa !12
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = sext i32 %57 to i64
  br label %63

63:                                               ; preds = %63, %61
  %64 = phi i64 [ %62, %61 ], [ %74, %63 ]
  %65 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4, !tbaa !12
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %47, i64 %67
  %69 = load i32, i32* %68, align 4, !tbaa !12
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 4, !tbaa !12
  %71 = load i32, i32* %65, align 4, !tbaa !12
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %72
  store i32 %71, i32* %73, align 4, !tbaa !12
  %74 = add nsw i64 %64, 1
  %75 = load i32, i32* %58, align 4, !tbaa !12
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %74, %76
  br i1 %77, label %63, label %78, !llvm.loop !17

78:                                               ; preds = %63, %56
  %79 = add nuw nsw i64 %49, 1
  %80 = icmp eq i64 %79, 1024
  br i1 %80, label %81, label %48, !llvm.loop !18

81:                                               ; preds = %78
  %82 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 0), align 16, !tbaa !12
  %83 = insertelement <4 x i32> poison, i32 %82, i64 3
  br label %84

84:                                               ; preds = %84, %81
  %85 = phi i64 [ 0, %81 ], [ %104, %84 ]
  %86 = phi <4 x i32> [ %83, %81 ], [ %95, %84 ]
  %87 = phi <4 x i32> [ zeroinitializer, %81 ], [ %102, %84 ]
  %88 = phi <4 x i32> [ zeroinitializer, %81 ], [ %103, %84 ]
  %89 = or i64 %85, 1
  %90 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %89
  %91 = bitcast i32* %90 to <4 x i32>*
  %92 = load <4 x i32>, <4 x i32>* %91, align 4, !tbaa !12
  %93 = getelementptr inbounds i32, i32* %90, i64 4
  %94 = bitcast i32* %93 to <4 x i32>*
  %95 = load <4 x i32>, <4 x i32>* %94, align 4, !tbaa !12
  %96 = shufflevector <4 x i32> %86, <4 x i32> %92, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %97 = shufflevector <4 x i32> %92, <4 x i32> %95, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %98 = icmp sgt <4 x i32> %96, %92
  %99 = icmp sgt <4 x i32> %97, %95
  %100 = zext <4 x i1> %98 to <4 x i32>
  %101 = zext <4 x i1> %99 to <4 x i32>
  %102 = add <4 x i32> %87, %100
  %103 = add <4 x i32> %88, %101
  %104 = add nuw i64 %85, 8
  %105 = icmp eq i64 %104, 33554424
  br i1 %105, label %106, label %84, !llvm.loop !27

106:                                              ; preds = %84
  %107 = extractelement <4 x i32> %95, i64 3
  %108 = add <4 x i32> %103, %102
  %109 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %108)
  %110 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554425), align 4, !tbaa !12
  %111 = icmp sgt i32 %107, %110
  %112 = zext i1 %111 to i32
  %113 = add nuw nsw i32 %109, %112
  %114 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554426), align 8, !tbaa !12
  %115 = icmp sgt i32 %110, %114
  %116 = zext i1 %115 to i32
  %117 = add nuw nsw i32 %113, %116
  %118 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554427), align 4, !tbaa !12
  %119 = icmp sgt i32 %114, %118
  %120 = zext i1 %119 to i32
  %121 = add nuw nsw i32 %117, %120
  %122 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554428), align 16, !tbaa !12
  %123 = icmp sgt i32 %118, %122
  %124 = zext i1 %123 to i32
  %125 = add nuw nsw i32 %121, %124
  %126 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554429), align 4, !tbaa !12
  %127 = icmp sgt i32 %122, %126
  %128 = zext i1 %127 to i32
  %129 = add nuw nsw i32 %125, %128
  %130 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554430), align 8, !tbaa !12
  %131 = icmp sgt i32 %126, %130
  %132 = zext i1 %131 to i32
  %133 = add nuw nsw i32 %129, %132
  %134 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554431), align 4, !tbaa !12
  %135 = icmp sgt i32 %130, %134
  %136 = zext i1 %135 to i32
  %137 = add nuw nsw i32 %133, %136
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %106
  %140 = zext i32 %137 to i64
  %141 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 noundef %140) #13
  br label %145

142:                                              ; preds = %106
  %143 = load i32, i32* @passed_verification, align 4, !tbaa !12
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* @passed_verification, align 4, !tbaa !12
  br label %145

145:                                              ; preds = %139, %142
  tail call void @timer_stop(i32 noundef 2) #13
  br label %245

146:                                              ; preds = %33
  %147 = load i32*, i32** @key_buff_ptr_global, align 8
  br label %148

148:                                              ; preds = %178, %146
  %149 = phi i64 [ 0, %146 ], [ %179, %178 ]
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %148
  %152 = add nuw nsw i64 %149, 4294967295
  %153 = and i64 %152, 4294967295
  %154 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_ptrs, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4, !tbaa !12
  br label %156

156:                                              ; preds = %151, %148
  %157 = phi i32 [ %155, %151 ], [ 0, %148 ]
  %158 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_ptrs, i64 0, i64 %149
  %159 = load i32, i32* %158, align 4, !tbaa !12
  %160 = icmp slt i32 %157, %159
  br i1 %160, label %161, label %178

161:                                              ; preds = %156
  %162 = sext i32 %157 to i64
  br label %163

163:                                              ; preds = %163, %161
  %164 = phi i64 [ %162, %161 ], [ %174, %163 ]
  %165 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4, !tbaa !12
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %147, i64 %167
  %169 = load i32, i32* %168, align 4, !tbaa !12
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %168, align 4, !tbaa !12
  %171 = load i32, i32* %165, align 4, !tbaa !12
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %172
  store i32 %171, i32* %173, align 4, !tbaa !12
  %174 = add nsw i64 %164, 1
  %175 = load i32, i32* %158, align 4, !tbaa !12
  %176 = sext i32 %175 to i64
  %177 = icmp slt i64 %174, %176
  br i1 %177, label %163, label %178, !llvm.loop !17

178:                                              ; preds = %163, %156
  %179 = add nuw nsw i64 %149, 1
  %180 = icmp eq i64 %179, 1024
  br i1 %180, label %181, label %148, !llvm.loop !18

181:                                              ; preds = %178
  %182 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 0), align 16, !tbaa !12
  %183 = insertelement <4 x i32> poison, i32 %182, i64 3
  br label %184

184:                                              ; preds = %184, %181
  %185 = phi i64 [ 0, %181 ], [ %204, %184 ]
  %186 = phi <4 x i32> [ %183, %181 ], [ %195, %184 ]
  %187 = phi <4 x i32> [ zeroinitializer, %181 ], [ %202, %184 ]
  %188 = phi <4 x i32> [ zeroinitializer, %181 ], [ %203, %184 ]
  %189 = or i64 %185, 1
  %190 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %189
  %191 = bitcast i32* %190 to <4 x i32>*
  %192 = load <4 x i32>, <4 x i32>* %191, align 4, !tbaa !12
  %193 = getelementptr inbounds i32, i32* %190, i64 4
  %194 = bitcast i32* %193 to <4 x i32>*
  %195 = load <4 x i32>, <4 x i32>* %194, align 4, !tbaa !12
  %196 = shufflevector <4 x i32> %186, <4 x i32> %192, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %197 = shufflevector <4 x i32> %192, <4 x i32> %195, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %198 = icmp sgt <4 x i32> %196, %192
  %199 = icmp sgt <4 x i32> %197, %195
  %200 = zext <4 x i1> %198 to <4 x i32>
  %201 = zext <4 x i1> %199 to <4 x i32>
  %202 = add <4 x i32> %187, %200
  %203 = add <4 x i32> %188, %201
  %204 = add nuw i64 %185, 8
  %205 = icmp eq i64 %204, 33554424
  br i1 %205, label %206, label %184, !llvm.loop !28

206:                                              ; preds = %184
  %207 = extractelement <4 x i32> %195, i64 3
  %208 = add <4 x i32> %203, %202
  %209 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %208)
  %210 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554425), align 4, !tbaa !12
  %211 = icmp sgt i32 %207, %210
  %212 = zext i1 %211 to i32
  %213 = add nuw nsw i32 %209, %212
  %214 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554426), align 8, !tbaa !12
  %215 = icmp sgt i32 %210, %214
  %216 = zext i1 %215 to i32
  %217 = add nuw nsw i32 %213, %216
  %218 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554427), align 4, !tbaa !12
  %219 = icmp sgt i32 %214, %218
  %220 = zext i1 %219 to i32
  %221 = add nuw nsw i32 %217, %220
  %222 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554428), align 16, !tbaa !12
  %223 = icmp sgt i32 %218, %222
  %224 = zext i1 %223 to i32
  %225 = add nuw nsw i32 %221, %224
  %226 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554429), align 4, !tbaa !12
  %227 = icmp sgt i32 %222, %226
  %228 = zext i1 %227 to i32
  %229 = add nuw nsw i32 %225, %228
  %230 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554430), align 8, !tbaa !12
  %231 = icmp sgt i32 %226, %230
  %232 = zext i1 %231 to i32
  %233 = add nuw nsw i32 %229, %232
  %234 = load i32, i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 33554431), align 4, !tbaa !12
  %235 = icmp sgt i32 %230, %234
  %236 = zext i1 %235 to i32
  %237 = add nuw nsw i32 %233, %236
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %206
  %240 = zext i32 %237 to i64
  %241 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 noundef %240) #13
  br label %245

242:                                              ; preds = %206
  %243 = load i32, i32* @passed_verification, align 4, !tbaa !12
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* @passed_verification, align 4, !tbaa !12
  br label %245

245:                                              ; preds = %242, %239, %145
  br i1 %4, label %247, label %246

246:                                              ; preds = %245
  tail call void @timer_stop(i32 noundef 3) #13
  br label %247

247:                                              ; preds = %246, %245
  %248 = load i32, i32* @passed_verification, align 4, !tbaa !12
  %249 = icmp eq i32 %248, 51
  br i1 %249, label %251, label %250

250:                                              ; preds = %247
  store i32 0, i32* @passed_verification, align 4, !tbaa !12
  br label %251

251:                                              ; preds = %250, %247
  %252 = phi i32 [ 0, %250 ], [ 51, %247 ]
  %253 = fdiv double 0x41B4000000000000, %45
  %254 = fdiv double %253, 1.000000e+06
  tail call void @c_print_results(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8 noundef signext 66, i32 noundef 524288, i32 noundef 64, i32 noundef 0, i32 noundef 10, double noundef %45, double noundef %254, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 noundef %252, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0)) #13
  br i1 %4, label %273, label %255

255:                                              ; preds = %251
  %256 = tail call double @timer_read(i32 noundef 3) #13
  %257 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.26, i64 0, i64 0))
  %258 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), double noundef %256)
  %259 = fcmp oeq double %256, 0.000000e+00
  %260 = select i1 %259, double 1.000000e+00, double %256
  %261 = tail call double @timer_read(i32 noundef 1) #13
  %262 = fdiv double %261, %260
  %263 = fmul double %262, 1.000000e+02
  %264 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0), double noundef %261, double noundef %263)
  %265 = tail call double @timer_read(i32 noundef 0) #13
  %266 = fdiv double %265, %260
  %267 = fmul double %266, 1.000000e+02
  %268 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i64 0, i64 0), double noundef %265, double noundef %267)
  %269 = tail call double @timer_read(i32 noundef 2) #13
  %270 = fdiv double %269, %260
  %271 = fmul double %270, 1.000000e+02
  %272 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0), double noundef %269, double noundef %271)
  br label %273

273:                                              ; preds = %255, %251
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

declare void @timer_clear(i32 noundef) local_unnamed_addr #7

declare void @timer_start(i32 noundef) local_unnamed_addr #7

declare void @timer_stop(i32 noundef) local_unnamed_addr #7

declare double @timer_read(i32 noundef) local_unnamed_addr #7

declare void @c_print_results(i8* noundef, i8 noundef signext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, double noundef, double noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #11

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

attributes #0 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nofree nosync nounwind readnone willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind }
attributes #16 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.peeled.count", i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = distinct !{!14, !10, !11}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10, !20}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10, !20}
!28 = distinct !{!28, !10, !20}
