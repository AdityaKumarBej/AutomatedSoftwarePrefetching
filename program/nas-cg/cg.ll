; ModuleID = 'cg.c'
source_filename = "cg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@firstrow = internal unnamed_addr global i1 false, align 4
@lastrow = internal unnamed_addr global i1 false, align 4
@firstcol = internal unnamed_addr global i1 false, align 4
@lastcol = internal unnamed_addr global i1 false, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c" Size: %10d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" Iterations: %5d\0A\00", align 1
@naa = internal unnamed_addr global i1 false, align 4
@nzz = internal unnamed_addr global i1 false, align 4
@tran = internal global double 0.000000e+00, align 8
@amult = internal unnamed_addr global double 0.000000e+00, align 8
@a = internal unnamed_addr global [40950001 x double] zeroinitializer, align 16
@colidx = internal unnamed_addr global [40950001 x i32] zeroinitializer, align 16
@rowstr = internal unnamed_addr global [150002 x i32] zeroinitializer, align 16
@arow = internal unnamed_addr global [40950001 x i32] zeroinitializer, align 16
@acol = internal unnamed_addr global [40950001 x i32] zeroinitializer, align 16
@aelt = internal unnamed_addr global [40950001 x double] zeroinitializer, align 16
@v = internal unnamed_addr global [150002 x double] zeroinitializer, align 16
@iv = internal unnamed_addr global [300002 x i32] zeroinitializer, align 16
@x = internal unnamed_addr global [150003 x double] zeroinitializer, align 16
@z = internal unnamed_addr global [150003 x double] zeroinitializer, align 16
@p = internal unnamed_addr global [150003 x double] zeroinitializer, align 16
@q = internal unnamed_addr global [150003 x double] zeroinitializer, align 16
@r = internal unnamed_addr global [150003 x double] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [30 x i8] c"    %5d       %20.14e%20.13e\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c" Zeta is    %20.12e\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c" Error is   %20.12e\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"CG\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"          floating point\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"3.4\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"1 Dec 2023\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"gcc\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"-lm\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"-I../common\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"-O3  -static -g -std=c99 #-mmic\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"-static -openmp #-mmic \00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"randdp\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"nnza, nzmax = %d, %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"iouter = %d\0A\00", align 1
@str = private unnamed_addr constant [82 x i8] c"\0A\0A NAS Parallel Benchmarks 3.4 OpenMP version - CG Benchmark ---- No prefetching \00", align 1
@str.24 = private unnamed_addr constant [21 x i8] c" Benchmark completed\00", align 1
@str.25 = private unnamed_addr constant [25 x i8] c" VERIFICATION SUCCESSFUL\00", align 1
@str.26 = private unnamed_addr constant [50 x i8] c"   iteration           ||r||                 zeta\00", align 1
@str.28 = private unnamed_addr constant [44 x i8] c"Space for matrix elements exceeded in makea\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca double, align 8
  %4 = bitcast double* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #12
  store i1 true, i1* @firstrow, align 4
  store i1 true, i1* @lastrow, align 4
  store i1 true, i1* @firstcol, align 4
  store i1 true, i1* @lastcol, align 4
  %5 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([82 x i8], [82 x i8]* @str, i64 0, i64 0))
  %6 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 noundef 150000)
  %7 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 noundef 75)
  store i1 true, i1* @naa, align 4
  store i1 true, i1* @nzz, align 4
  store double 0x41B2B9B0A1000000, double* @tran, align 8, !tbaa !5
  store double 0x41D2309CE5400000, double* @amult, align 8, !tbaa !5
  %8 = tail call double @randlc(double* noundef nonnull @tran, double noundef 0x41D2309CE5400000) #12
  %9 = load i1, i1* @naa, align 4
  %10 = select i1 %9, i32 150000, i32 0
  %11 = load i1, i1* @nzz, align 4
  %12 = select i1 %11, i32 40950000, i32 0
  %13 = load i1, i1* @firstrow, align 4
  %14 = zext i1 %13 to i32
  %15 = load i1, i1* @lastrow, align 4
  %16 = select i1 %15, i32 150000, i32 0
  %17 = load i1, i1* @firstcol, align 4
  %18 = zext i1 %17 to i32
  %19 = load i1, i1* @lastcol, align 4
  %20 = select i1 %19, i32 150000, i32 0
  %21 = sitofp i32 %10 to double
  %22 = fdiv double 1.000000e+00, %21
  %23 = tail call double @pow(double noundef 1.000000e-01, double noundef %22) #12
  br i1 %9, label %24, label %32

24:                                               ; preds = %2
  %25 = or i32 %10, 1
  %26 = zext i32 %25 to i64
  %27 = getelementptr [40950001 x i32], [40950001 x i32]* @colidx, i64 0, i64 %26
  %28 = bitcast i32* %27 to i8*
  %29 = zext i32 %10 to i64
  %30 = shl nuw nsw i64 %29, 2
  tail call void @llvm.memset.p0i8.i64(i8* align 4 %28, i8 0, i64 %30, i1 false) #12, !tbaa !9
  %31 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @colidx, i64 0, i64 %29
  br label %35

32:                                               ; preds = %186, %2
  %33 = phi i32 [ 0, %2 ], [ %183, %186 ]
  %34 = icmp ult i32 %16, %14
  br i1 %34, label %213, label %190

35:                                               ; preds = %186, %24
  %36 = phi i32 [ 0, %24 ], [ %183, %186 ]
  %37 = phi i32 [ 1, %24 ], [ %188, %186 ]
  %38 = phi double [ 1.000000e+00, %24 ], [ %187, %186 ]
  br label %39

39:                                               ; preds = %39, %35
  %40 = phi i32 [ 1, %35 ], [ %41, %39 ]
  %41 = shl nsw i32 %40, 1
  %42 = icmp slt i32 %41, %10
  br i1 %42, label %39, label %43, !llvm.loop !11

43:                                               ; preds = %39
  %44 = sitofp i32 %41 to double
  br label %45

45:                                               ; preds = %81, %43
  %46 = phi i32 [ 0, %43 ], [ %83, %81 ]
  %47 = phi i32 [ 0, %43 ], [ %82, %81 ]
  br label %48

48:                                               ; preds = %48, %45
  %49 = load double, double* @amult, align 8, !tbaa !5
  %50 = tail call double @randlc(double* noundef nonnull @tran, double noundef %49) #12
  %51 = load double, double* @amult, align 8, !tbaa !5
  %52 = tail call double @randlc(double* noundef nonnull @tran, double noundef %51) #12
  %53 = fmul double %52, %44
  %54 = fptosi double %53 to i32
  %55 = icmp sgt i32 %10, %54
  br i1 %55, label %67, label %48, !llvm.loop !13

56:                                               ; preds = %81
  %57 = icmp slt i32 %83, 1
  br i1 %57, label %123, label %58

58:                                               ; preds = %56
  %59 = add nuw i32 %83, 1
  %60 = zext i32 %59 to i64
  %61 = add nsw i64 %60, -1
  %62 = add nsw i64 %60, -2
  %63 = and i64 %61, 3
  %64 = icmp ult i64 %62, 3
  br i1 %64, label %110, label %65

65:                                               ; preds = %58
  %66 = and i64 %61, -4
  br label %85

67:                                               ; preds = %48
  %68 = add nsw i32 %54, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %31, i64 %69
  %71 = load i32, i32* %70, align 4, !tbaa !9
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  store i32 1, i32* %70, align 4, !tbaa !9
  %74 = add nsw i32 %46, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @colidx, i64 0, i64 %75
  store i32 %68, i32* %76, align 4, !tbaa !9
  %77 = add nsw i32 %47, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [150002 x double], [150002 x double]* @v, i64 0, i64 %78
  store double %50, double* %79, align 8, !tbaa !5
  %80 = getelementptr inbounds [300002 x i32], [300002 x i32]* @iv, i64 0, i64 %78
  store i32 %68, i32* %80, align 4, !tbaa !9
  br label %81

81:                                               ; preds = %73, %67
  %82 = phi i32 [ %77, %73 ], [ %47, %67 ]
  %83 = phi i32 [ %74, %73 ], [ %46, %67 ]
  %84 = icmp slt i32 %82, 15
  br i1 %84, label %45, label %56, !llvm.loop !13

85:                                               ; preds = %85, %65
  %86 = phi i64 [ 1, %65 ], [ %107, %85 ]
  %87 = phi i64 [ 0, %65 ], [ %108, %85 ]
  %88 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @colidx, i64 0, i64 %86
  %89 = load i32, i32* %88, align 4, !tbaa !9
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %31, i64 %90
  store i32 0, i32* %91, align 4, !tbaa !9
  %92 = add nuw nsw i64 %86, 1
  %93 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @colidx, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4, !tbaa !9
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %31, i64 %95
  store i32 0, i32* %96, align 4, !tbaa !9
  %97 = add nuw nsw i64 %86, 2
  %98 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @colidx, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4, !tbaa !9
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %31, i64 %100
  store i32 0, i32* %101, align 4, !tbaa !9
  %102 = add nuw nsw i64 %86, 3
  %103 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @colidx, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4, !tbaa !9
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %31, i64 %105
  store i32 0, i32* %106, align 4, !tbaa !9
  %107 = add nuw nsw i64 %86, 4
  %108 = add i64 %87, 4
  %109 = icmp eq i64 %108, %66
  br i1 %109, label %110, label %85, !llvm.loop !14

110:                                              ; preds = %85, %58
  %111 = phi i64 [ 1, %58 ], [ %107, %85 ]
  %112 = icmp eq i64 %63, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %110, %113
  %114 = phi i64 [ %120, %113 ], [ %111, %110 ]
  %115 = phi i64 [ %121, %113 ], [ 0, %110 ]
  %116 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @colidx, i64 0, i64 %114
  %117 = load i32, i32* %116, align 4, !tbaa !9
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %31, i64 %118
  store i32 0, i32* %119, align 4, !tbaa !9
  %120 = add nuw nsw i64 %114, 1
  %121 = add i64 %115, 1
  %122 = icmp eq i64 %121, %63
  br i1 %122, label %123, label %113, !llvm.loop !15

123:                                              ; preds = %110, %113, %56
  br label %124

124:                                              ; preds = %123, %135
  %125 = phi i64 [ %137, %135 ], [ 1, %123 ]
  %126 = phi i1 [ false, %135 ], [ true, %123 ]
  br label %127

127:                                              ; preds = %132, %124
  %128 = phi i64 [ %133, %132 ], [ %125, %124 ]
  %129 = getelementptr inbounds [300002 x i32], [300002 x i32]* @iv, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4, !tbaa !9
  %131 = icmp eq i32 %130, %37
  br i1 %131, label %135, label %132

132:                                              ; preds = %127
  %133 = add nuw nsw i64 %128, 1
  %134 = icmp eq i64 %133, 16
  br i1 %134, label %139, label %127, !llvm.loop !17

135:                                              ; preds = %127
  %136 = getelementptr inbounds [150002 x double], [150002 x double]* @v, i64 0, i64 %128
  store double 5.000000e-01, double* %136, align 8, !tbaa !5
  %137 = add nuw nsw i64 %128, 1
  %138 = icmp eq i64 %137, 16
  br i1 %138, label %141, label %124, !llvm.loop !17

139:                                              ; preds = %132
  br i1 %126, label %140, label %141

140:                                              ; preds = %139
  store double 5.000000e-01, double* getelementptr inbounds ([150002 x double], [150002 x double]* @v, i64 0, i64 16), align 16, !tbaa !5
  store i32 %37, i32* getelementptr inbounds ([300002 x i32], [300002 x i32]* @iv, i64 0, i64 16), align 16, !tbaa !9
  br label %141

141:                                              ; preds = %135, %140, %139
  %142 = phi i64 [ 17, %140 ], [ 16, %139 ], [ 16, %135 ]
  br label %143

143:                                              ; preds = %182, %141
  %144 = phi i64 [ 1, %141 ], [ %184, %182 ]
  %145 = phi i32 [ %36, %141 ], [ %183, %182 ]
  %146 = getelementptr inbounds [300002 x i32], [300002 x i32]* @iv, i64 0, i64 %144
  %147 = load i32, i32* %146, align 4, !tbaa !9
  %148 = icmp slt i32 %147, %18
  %149 = icmp sgt i32 %147, %20
  %150 = or i1 %148, %149
  br i1 %150, label %182, label %151

151:                                              ; preds = %143
  %152 = getelementptr inbounds [150002 x double], [150002 x double]* @v, i64 0, i64 %144
  %153 = load double, double* %152, align 8, !tbaa !5
  %154 = fmul double %38, %153
  br label %155

155:                                              ; preds = %178, %151
  %156 = phi i64 [ 1, %151 ], [ %180, %178 ]
  %157 = phi i32 [ %145, %151 ], [ %179, %178 ]
  %158 = getelementptr inbounds [300002 x i32], [300002 x i32]* @iv, i64 0, i64 %156
  %159 = load i32, i32* %158, align 4, !tbaa !9
  %160 = icmp slt i32 %159, %14
  %161 = icmp sgt i32 %159, %16
  %162 = or i1 %160, %161
  br i1 %162, label %178, label %163

163:                                              ; preds = %155
  %164 = add nsw i32 %157, 1
  %165 = icmp slt i32 %157, %12
  br i1 %165, label %170, label %166

166:                                              ; preds = %163
  %167 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @str.28, i64 0, i64 0)) #12
  %168 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i32 noundef %164, i32 noundef %12) #12
  %169 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i32 noundef %37) #12
  tail call void @exit(i32 noundef 1) #13
  unreachable

170:                                              ; preds = %163
  %171 = sext i32 %164 to i64
  %172 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @acol, i64 0, i64 %171
  store i32 %147, i32* %172, align 4, !tbaa !9
  %173 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @arow, i64 0, i64 %171
  store i32 %159, i32* %173, align 4, !tbaa !9
  %174 = getelementptr inbounds [150002 x double], [150002 x double]* @v, i64 0, i64 %156
  %175 = load double, double* %174, align 8, !tbaa !5
  %176 = fmul double %154, %175
  %177 = getelementptr inbounds [40950001 x double], [40950001 x double]* @aelt, i64 0, i64 %171
  store double %176, double* %177, align 8, !tbaa !5
  br label %178

178:                                              ; preds = %170, %155
  %179 = phi i32 [ %164, %170 ], [ %157, %155 ]
  %180 = add nuw nsw i64 %156, 1
  %181 = icmp eq i64 %180, %142
  br i1 %181, label %182, label %155, !llvm.loop !18

182:                                              ; preds = %178, %143
  %183 = phi i32 [ %145, %143 ], [ %179, %178 ]
  %184 = add nuw nsw i64 %144, 1
  %185 = icmp eq i64 %184, %142
  br i1 %185, label %186, label %143, !llvm.loop !19

186:                                              ; preds = %182
  %187 = fmul double %23, %38
  %188 = add nuw i32 %37, 1
  %189 = icmp eq i32 %37, %10
  br i1 %189, label %32, label %35, !llvm.loop !20

190:                                              ; preds = %32, %209
  %191 = phi i32 [ %211, %209 ], [ %14, %32 ]
  %192 = phi i32 [ %210, %209 ], [ %33, %32 ]
  %193 = icmp slt i32 %191, %18
  %194 = icmp sgt i32 %191, %20
  %195 = or i1 %193, %194
  br i1 %195, label %209, label %196

196:                                              ; preds = %190
  %197 = add nsw i32 %192, 1
  %198 = icmp slt i32 %192, %12
  br i1 %198, label %204, label %199

199:                                              ; preds = %196
  %200 = add nsw i32 %191, %10
  %201 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @str.28, i64 0, i64 0)) #12
  %202 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i32 noundef %197, i32 noundef %12) #12
  %203 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i32 noundef %200) #12
  tail call void @exit(i32 noundef 1) #13
  unreachable

204:                                              ; preds = %196
  %205 = sext i32 %197 to i64
  %206 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @acol, i64 0, i64 %205
  store i32 %191, i32* %206, align 4, !tbaa !9
  %207 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @arow, i64 0, i64 %205
  store i32 %191, i32* %207, align 4, !tbaa !9
  %208 = getelementptr inbounds [40950001 x double], [40950001 x double]* @aelt, i64 0, i64 %205
  store double -1.099000e+02, double* %208, align 8, !tbaa !5
  br label %209

209:                                              ; preds = %204, %190
  %210 = phi i32 [ %197, %204 ], [ %192, %190 ]
  %211 = add i32 %191, 1
  %212 = icmp eq i32 %191, %16
  br i1 %212, label %213, label %190, !llvm.loop !21

213:                                              ; preds = %209, %32
  %214 = phi i32 [ %33, %32 ], [ %210, %209 ]
  %215 = zext i32 %10 to i64
  %216 = getelementptr inbounds [300002 x i32], [300002 x i32]* @iv, i64 0, i64 %215
  %217 = sub nsw i32 %16, %14
  %218 = add nsw i32 %217, 1
  br i1 %9, label %219, label %222

219:                                              ; preds = %213
  %220 = shl nuw nsw i32 %10, 2
  %221 = zext i32 %220 to i64
  tail call void @llvm.memset.p0i8.i64(i8* align 4 bitcast (i32* getelementptr inbounds ([150002 x i32], [150002 x i32]* @rowstr, i64 0, i64 1) to i8*), i8 0, i64 %221, i1 false) #12, !tbaa !9
  tail call void @llvm.memset.p0i8.i64(i8* align 4 bitcast (i32* getelementptr inbounds ([300002 x i32], [300002 x i32]* @iv, i64 0, i64 1) to i8*), i8 0, i64 %221, i1 false) #12, !tbaa !9
  br label %222

222:                                              ; preds = %219, %213
  %223 = or i32 %10, 1
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds [150002 x i32], [150002 x i32]* @rowstr, i64 0, i64 %224
  store i32 0, i32* %225, align 4, !tbaa !9
  %226 = icmp slt i32 %214, 1
  br i1 %226, label %266, label %227

227:                                              ; preds = %222
  %228 = select i1 %13, i32 1, i32 2
  %229 = zext i32 %214 to i64
  %230 = and i64 %229, 1
  %231 = icmp eq i32 %214, 1
  br i1 %231, label %255, label %232

232:                                              ; preds = %227
  %233 = and i64 %229, 4294967294
  br label %234

234:                                              ; preds = %234, %232
  %235 = phi i64 [ 1, %232 ], [ %252, %234 ]
  %236 = phi i64 [ 0, %232 ], [ %253, %234 ]
  %237 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @arow, i64 0, i64 %235
  %238 = load i32, i32* %237, align 4, !tbaa !9
  %239 = add i32 %238, %228
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [150002 x i32], [150002 x i32]* @rowstr, i64 0, i64 %240
  %242 = load i32, i32* %241, align 4, !tbaa !9
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %241, align 4, !tbaa !9
  %244 = add nuw nsw i64 %235, 1
  %245 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @arow, i64 0, i64 %244
  %246 = load i32, i32* %245, align 4, !tbaa !9
  %247 = add i32 %246, %228
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [150002 x i32], [150002 x i32]* @rowstr, i64 0, i64 %248
  %250 = load i32, i32* %249, align 4, !tbaa !9
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 4, !tbaa !9
  %252 = add nuw nsw i64 %235, 2
  %253 = add i64 %236, 2
  %254 = icmp eq i64 %253, %233
  br i1 %254, label %255, label %234, !llvm.loop !22

255:                                              ; preds = %234, %227
  %256 = phi i64 [ 1, %227 ], [ %252, %234 ]
  %257 = icmp eq i64 %230, 0
  br i1 %257, label %266, label %258

258:                                              ; preds = %255
  %259 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @arow, i64 0, i64 %256
  %260 = load i32, i32* %259, align 4, !tbaa !9
  %261 = add i32 %260, %228
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [150002 x i32], [150002 x i32]* @rowstr, i64 0, i64 %262
  %264 = load i32, i32* %263, align 4, !tbaa !9
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %263, align 4, !tbaa !9
  br label %266

266:                                              ; preds = %258, %255, %222
  store i32 1, i32* getelementptr inbounds ([150002 x i32], [150002 x i32]* @rowstr, i64 0, i64 1), align 4, !tbaa !9
  %267 = icmp slt i32 %217, 0
  br i1 %267, label %291, label %268

268:                                              ; preds = %266
  %269 = add nuw nsw i32 %217, 3
  %270 = zext i32 %269 to i64
  %271 = add nsw i64 %270, -2
  %272 = add nsw i64 %270, -3
  %273 = and i64 %271, 3
  %274 = icmp ult i64 %272, 3
  br i1 %274, label %277, label %275

275:                                              ; preds = %268
  %276 = and i64 %271, -4
  br label %297

277:                                              ; preds = %297, %268
  %278 = phi i32 [ 1, %268 ], [ %315, %297 ]
  %279 = phi i64 [ 2, %268 ], [ %316, %297 ]
  %280 = icmp eq i64 %273, 0
  br i1 %280, label %291, label %281

281:                                              ; preds = %277, %281
  %282 = phi i32 [ %287, %281 ], [ %278, %277 ]
  %283 = phi i64 [ %288, %281 ], [ %279, %277 ]
  %284 = phi i64 [ %289, %281 ], [ 0, %277 ]
  %285 = getelementptr inbounds [150002 x i32], [150002 x i32]* @rowstr, i64 0, i64 %283
  %286 = load i32, i32* %285, align 4, !tbaa !9
  %287 = add nsw i32 %286, %282
  store i32 %287, i32* %285, align 4, !tbaa !9
  %288 = add nuw nsw i64 %283, 1
  %289 = add i64 %284, 1
  %290 = icmp eq i64 %289, %273
  br i1 %290, label %291, label %281, !llvm.loop !23

291:                                              ; preds = %277, %281, %266
  br i1 %226, label %319, label %292

292:                                              ; preds = %291
  %293 = xor i1 %13, true
  %294 = zext i1 %293 to i32
  %295 = add nuw i32 %214, 1
  %296 = zext i32 %295 to i64
  br label %323

297:                                              ; preds = %297, %275
  %298 = phi i32 [ 1, %275 ], [ %315, %297 ]
  %299 = phi i64 [ 2, %275 ], [ %316, %297 ]
  %300 = phi i64 [ 0, %275 ], [ %317, %297 ]
  %301 = getelementptr inbounds [150002 x i32], [150002 x i32]* @rowstr, i64 0, i64 %299
  %302 = load i32, i32* %301, align 8, !tbaa !9
  %303 = add nsw i32 %302, %298
  store i32 %303, i32* %301, align 8, !tbaa !9
  %304 = or i64 %299, 1
  %305 = getelementptr inbounds [150002 x i32], [150002 x i32]* @rowstr, i64 0, i64 %304
  %306 = load i32, i32* %305, align 4, !tbaa !9
  %307 = add nsw i32 %306, %303
  store i32 %307, i32* %305, align 4, !tbaa !9
  %308 = add nuw nsw i64 %299, 2
  %309 = getelementptr inbounds [150002 x i32], [150002 x i32]* @rowstr, i64 0, i64 %308
  %310 = load i32, i32* %309, align 8, !tbaa !9
  %311 = add nsw i32 %310, %307
  store i32 %311, i32* %309, align 8, !tbaa !9
  %312 = add nuw nsw i64 %299, 3
  %313 = getelementptr inbounds [150002 x i32], [150002 x i32]* @rowstr, i64 0, i64 %312
  %314 = load i32, i32* %313, align 4, !tbaa !9
  %315 = add nsw i32 %314, %311
  store i32 %315, i32* %313, align 4, !tbaa !9
  %316 = add nuw nsw i64 %299, 4
  %317 = add i64 %300, 4
  %318 = icmp eq i64 %317, %276
  br i1 %318, label %277, label %297, !llvm.loop !24

319:                                              ; preds = %323, %291
  %320 = icmp sgt i32 %217, -1
  br i1 %320, label %321, label %349

321:                                              ; preds = %319
  %322 = zext i32 %218 to i64
  br label %341

323:                                              ; preds = %323, %292
  %324 = phi i64 [ 1, %292 ], [ %339, %323 ]
  %325 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @arow, i64 0, i64 %324
  %326 = load i32, i32* %325, align 4, !tbaa !9
  %327 = add i32 %326, %294
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [150002 x i32], [150002 x i32]* @rowstr, i64 0, i64 %328
  %330 = load i32, i32* %329, align 4, !tbaa !9
  %331 = getelementptr inbounds [40950001 x double], [40950001 x double]* @aelt, i64 0, i64 %324
  %332 = load double, double* %331, align 8, !tbaa !5
  %333 = sext i32 %330 to i64
  %334 = getelementptr inbounds [40950001 x double], [40950001 x double]* @a, i64 0, i64 %333
  store double %332, double* %334, align 8, !tbaa !5
  %335 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @acol, i64 0, i64 %324
  %336 = load i32, i32* %335, align 4, !tbaa !9
  %337 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @colidx, i64 0, i64 %333
  store i32 %336, i32* %337, align 4, !tbaa !9
  %338 = add nsw i32 %330, 1
  store i32 %338, i32* %329, align 4, !tbaa !9
  %339 = add nuw nsw i64 %324, 1
  %340 = icmp eq i64 %339, %296
  br i1 %340, label %319, label %323, !llvm.loop !25

341:                                              ; preds = %341, %321
  %342 = phi i64 [ %322, %321 ], [ %347, %341 ]
  %343 = getelementptr inbounds [150002 x i32], [150002 x i32]* @rowstr, i64 0, i64 %342
  %344 = load i32, i32* %343, align 4, !tbaa !9
  %345 = add nuw nsw i64 %342, 1
  %346 = getelementptr inbounds [150002 x i32], [150002 x i32]* @rowstr, i64 0, i64 %345
  store i32 %344, i32* %346, align 4, !tbaa !9
  %347 = add nsw i64 %342, -1
  %348 = icmp ugt i64 %342, 1
  br i1 %348, label %341, label %349, !llvm.loop !26

349:                                              ; preds = %341, %319
  store i32 1, i32* getelementptr inbounds ([150002 x i32], [150002 x i32]* @rowstr, i64 0, i64 1), align 4, !tbaa !9
  br i1 %9, label %350, label %353

350:                                              ; preds = %349
  %351 = shl nuw nsw i64 %215, 3
  tail call void @llvm.memset.p0i8.i64(i8* align 8 bitcast (double* getelementptr inbounds ([150002 x double], [150002 x double]* @v, i64 0, i64 1) to i8*), i8 0, i64 %351, i1 false) #12, !tbaa !5
  %352 = shl nuw nsw i64 %215, 2
  tail call void @llvm.memset.p0i8.i64(i8* align 4 bitcast (i32* getelementptr inbounds ([300002 x i32], [300002 x i32]* @iv, i64 0, i64 1) to i8*), i8 0, i64 %352, i1 false) #12, !tbaa !9
  br label %353

353:                                              ; preds = %350, %349
  br i1 %267, label %421, label %354

354:                                              ; preds = %353
  %355 = tail call i32 @llvm.smax.i32(i32 %218, i32 1) #12
  %356 = add nuw i32 %355, 1
  %357 = zext i32 %356 to i64
  br label %358

358:                                              ; preds = %417, %354
  %359 = phi i64 [ 1, %354 ], [ %362, %417 ]
  %360 = phi i32 [ 0, %354 ], [ %418, %417 ]
  %361 = phi i32 [ 1, %354 ], [ %364, %417 ]
  %362 = add nuw nsw i64 %359, 1
  %363 = getelementptr inbounds [150002 x i32], [150002 x i32]* @rowstr, i64 0, i64 %362
  %364 = load i32, i32* %363, align 4, !tbaa !9
  %365 = icmp slt i32 %361, %364
  br i1 %365, label %366, label %417

366:                                              ; preds = %358
  %367 = sext i32 %361 to i64
  %368 = sext i32 %364 to i64
  br label %374

369:                                              ; preds = %394
  %370 = icmp slt i32 %395, 1
  br i1 %370, label %417, label %371

371:                                              ; preds = %369
  %372 = add nuw i32 %395, 1
  %373 = zext i32 %372 to i64
  br label %398

374:                                              ; preds = %394, %366
  %375 = phi i64 [ %367, %366 ], [ %396, %394 ]
  %376 = phi i32 [ 0, %366 ], [ %395, %394 ]
  %377 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @colidx, i64 0, i64 %375
  %378 = load i32, i32* %377, align 4, !tbaa !9
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [150002 x double], [150002 x double]* @v, i64 0, i64 %379
  %381 = load double, double* %380, align 8, !tbaa !5
  %382 = getelementptr inbounds [40950001 x double], [40950001 x double]* @a, i64 0, i64 %375
  %383 = load double, double* %382, align 8, !tbaa !5
  %384 = fadd double %381, %383
  store double %384, double* %380, align 8, !tbaa !5
  %385 = getelementptr inbounds [300002 x i32], [300002 x i32]* @iv, i64 0, i64 %379
  %386 = load i32, i32* %385, align 4, !tbaa !9
  %387 = icmp eq i32 %386, 0
  %388 = fcmp une double %384, 0.000000e+00
  %389 = select i1 %387, i1 %388, i1 false
  br i1 %389, label %390, label %394

390:                                              ; preds = %374
  store i32 1, i32* %385, align 4, !tbaa !9
  %391 = add nsw i32 %376, 1
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %216, i64 %392
  store i32 %378, i32* %393, align 4, !tbaa !9
  br label %394

394:                                              ; preds = %390, %374
  %395 = phi i32 [ %391, %390 ], [ %376, %374 ]
  %396 = add nsw i64 %375, 1
  %397 = icmp eq i64 %396, %368
  br i1 %397, label %369, label %374, !llvm.loop !27

398:                                              ; preds = %413, %371
  %399 = phi i64 [ 1, %371 ], [ %415, %413 ]
  %400 = phi i32 [ %360, %371 ], [ %414, %413 ]
  %401 = getelementptr inbounds i32, i32* %216, i64 %399
  %402 = load i32, i32* %401, align 4, !tbaa !9
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [300002 x i32], [300002 x i32]* @iv, i64 0, i64 %403
  store i32 0, i32* %404, align 4, !tbaa !9
  %405 = getelementptr inbounds [150002 x double], [150002 x double]* @v, i64 0, i64 %403
  %406 = load double, double* %405, align 8, !tbaa !5
  store double 0.000000e+00, double* %405, align 8, !tbaa !5
  %407 = fcmp une double %406, 0.000000e+00
  br i1 %407, label %408, label %413

408:                                              ; preds = %398
  %409 = add nsw i32 %400, 1
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds [40950001 x double], [40950001 x double]* @a, i64 0, i64 %410
  store double %406, double* %411, align 8, !tbaa !5
  %412 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @colidx, i64 0, i64 %410
  store i32 %402, i32* %412, align 4, !tbaa !9
  br label %413

413:                                              ; preds = %408, %398
  %414 = phi i32 [ %409, %408 ], [ %400, %398 ]
  %415 = add nuw nsw i64 %399, 1
  %416 = icmp eq i64 %415, %373
  br i1 %416, label %417, label %398, !llvm.loop !28

417:                                              ; preds = %413, %369, %358
  %418 = phi i32 [ %360, %369 ], [ %360, %358 ], [ %414, %413 ]
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %363, align 4, !tbaa !9
  %420 = icmp eq i64 %362, %357
  br i1 %420, label %421, label %358, !llvm.loop !29

421:                                              ; preds = %417, %353
  %422 = load i1, i1* @lastrow, align 4
  %423 = load i1, i1* @firstrow, align 4
  %424 = sext i1 %423 to i32
  %425 = select i1 %422, i32 150001, i32 1
  %426 = add nsw i32 %425, %424
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %443, label %428

428:                                              ; preds = %421
  %429 = load i1, i1* @firstcol, align 4
  %430 = sext i1 %429 to i32
  %431 = add nuw nsw i32 %426, 1
  %432 = zext i32 %431 to i64
  %433 = xor i1 %429, true
  %434 = zext i1 %433 to i32
  %435 = insertelement <4 x i32> poison, i32 %434, i64 0
  %436 = shufflevector <4 x i32> %435, <4 x i32> poison, <4 x i32> zeroinitializer
  %437 = xor i1 %429, true
  %438 = zext i1 %437 to i32
  %439 = insertelement <4 x i32> poison, i32 %438, i64 0
  %440 = shufflevector <4 x i32> %439, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %477

441:                                              ; preds = %511, %507, %477
  %442 = icmp eq i64 %480, %432
  br i1 %442, label %443, label %477, !llvm.loop !30

443:                                              ; preds = %441, %421
  br label %444

444:                                              ; preds = %444, %443
  %445 = phi i64 [ 0, %443 ], [ %475, %444 ]
  %446 = or i64 %445, 1
  %447 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %446
  %448 = bitcast double* %447 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %448, align 8, !tbaa !5
  %449 = getelementptr inbounds double, double* %447, i64 2
  %450 = bitcast double* %449 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %450, align 8, !tbaa !5
  %451 = add nuw nsw i64 %445, 4
  %452 = or i64 %451, 1
  %453 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %452
  %454 = bitcast double* %453 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %454, align 8, !tbaa !5
  %455 = getelementptr inbounds double, double* %453, i64 2
  %456 = bitcast double* %455 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %456, align 8, !tbaa !5
  %457 = add nuw nsw i64 %445, 8
  %458 = or i64 %457, 1
  %459 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %458
  %460 = bitcast double* %459 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %460, align 8, !tbaa !5
  %461 = getelementptr inbounds double, double* %459, i64 2
  %462 = bitcast double* %461 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %462, align 8, !tbaa !5
  %463 = add nuw nsw i64 %445, 12
  %464 = or i64 %463, 1
  %465 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %464
  %466 = bitcast double* %465 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %466, align 8, !tbaa !5
  %467 = getelementptr inbounds double, double* %465, i64 2
  %468 = bitcast double* %467 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %468, align 8, !tbaa !5
  %469 = add nuw nsw i64 %445, 16
  %470 = or i64 %469, 1
  %471 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %470
  %472 = bitcast double* %471 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %472, align 8, !tbaa !5
  %473 = getelementptr inbounds double, double* %471, i64 2
  %474 = bitcast double* %473 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %474, align 8, !tbaa !5
  %475 = add nuw nsw i64 %445, 20
  %476 = icmp eq i64 %475, 150000
  br i1 %476, label %519, label %444, !llvm.loop !31

477:                                              ; preds = %428, %441
  %478 = phi i32 [ 1, %428 ], [ %482, %441 ]
  %479 = phi i64 [ 1, %428 ], [ %480, %441 ]
  %480 = add nuw nsw i64 %479, 1
  %481 = getelementptr inbounds [150002 x i32], [150002 x i32]* @rowstr, i64 0, i64 %480
  %482 = load i32, i32* %481, align 4, !tbaa !9
  %483 = icmp slt i32 %478, %482
  br i1 %483, label %484, label %441

484:                                              ; preds = %477
  %485 = sext i32 %478 to i64
  %486 = sext i32 %482 to i64
  %487 = sub nsw i64 %486, %485
  %488 = icmp ult i64 %487, 8
  br i1 %488, label %509, label %489

489:                                              ; preds = %484
  %490 = and i64 %487, -8
  %491 = add nsw i64 %490, %485
  br label %492

492:                                              ; preds = %492, %489
  %493 = phi i64 [ 0, %489 ], [ %505, %492 ]
  %494 = add i64 %493, %485
  %495 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @colidx, i64 0, i64 %494
  %496 = bitcast i32* %495 to <4 x i32>*
  %497 = load <4 x i32>, <4 x i32>* %496, align 4, !tbaa !9
  %498 = getelementptr inbounds i32, i32* %495, i64 4
  %499 = bitcast i32* %498 to <4 x i32>*
  %500 = load <4 x i32>, <4 x i32>* %499, align 4, !tbaa !9
  %501 = add <4 x i32> %436, %497
  %502 = add <4 x i32> %440, %500
  %503 = bitcast i32* %495 to <4 x i32>*
  store <4 x i32> %501, <4 x i32>* %503, align 4, !tbaa !9
  %504 = bitcast i32* %498 to <4 x i32>*
  store <4 x i32> %502, <4 x i32>* %504, align 4, !tbaa !9
  %505 = add nuw i64 %493, 8
  %506 = icmp eq i64 %505, %490
  br i1 %506, label %507, label %492, !llvm.loop !33

507:                                              ; preds = %492
  %508 = icmp eq i64 %487, %490
  br i1 %508, label %441, label %509

509:                                              ; preds = %484, %507
  %510 = phi i64 [ %485, %484 ], [ %491, %507 ]
  br label %511

511:                                              ; preds = %509, %511
  %512 = phi i64 [ %517, %511 ], [ %510, %509 ]
  %513 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @colidx, i64 0, i64 %512
  %514 = load i32, i32* %513, align 4, !tbaa !9
  %515 = add i32 %514, 1
  %516 = add i32 %515, %430
  store i32 %516, i32* %513, align 4, !tbaa !9
  %517 = add nsw i64 %512, 1
  %518 = icmp eq i64 %517, %486
  br i1 %518, label %441, label %511, !llvm.loop !34

519:                                              ; preds = %444
  store double 1.000000e+00, double* getelementptr inbounds ([150003 x double], [150003 x double]* @x, i64 0, i64 150001), align 8, !tbaa !5
  call fastcc void @conj_grad(double* noundef nonnull %3)
  %520 = load i1, i1* @lastcol, align 4
  %521 = load i1, i1* @firstcol, align 4
  %522 = sext i1 %521 to i32
  %523 = select i1 %520, i32 150001, i32 1
  %524 = add nsw i32 %523, %522
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %572, label %526

526:                                              ; preds = %519
  %527 = add nuw nsw i32 %524, 1
  %528 = zext i32 %527 to i64
  %529 = add nsw i64 %528, -1
  %530 = add nsw i64 %528, -2
  %531 = and i64 %529, 3
  %532 = icmp ult i64 %530, 3
  br i1 %532, label %557, label %533

533:                                              ; preds = %526
  %534 = and i64 %529, -4
  br label %535

535:                                              ; preds = %535, %533
  %536 = phi i64 [ 1, %533 ], [ %554, %535 ]
  %537 = phi double [ 0.000000e+00, %533 ], [ %553, %535 ]
  %538 = phi i64 [ 0, %533 ], [ %555, %535 ]
  %539 = getelementptr inbounds [150003 x double], [150003 x double]* @z, i64 0, i64 %536
  %540 = load double, double* %539, align 8, !tbaa !5
  %541 = tail call double @llvm.fmuladd.f64(double %540, double %540, double %537)
  %542 = add nuw nsw i64 %536, 1
  %543 = getelementptr inbounds [150003 x double], [150003 x double]* @z, i64 0, i64 %542
  %544 = load double, double* %543, align 8, !tbaa !5
  %545 = tail call double @llvm.fmuladd.f64(double %544, double %544, double %541)
  %546 = add nuw nsw i64 %536, 2
  %547 = getelementptr inbounds [150003 x double], [150003 x double]* @z, i64 0, i64 %546
  %548 = load double, double* %547, align 8, !tbaa !5
  %549 = tail call double @llvm.fmuladd.f64(double %548, double %548, double %545)
  %550 = add nuw nsw i64 %536, 3
  %551 = getelementptr inbounds [150003 x double], [150003 x double]* @z, i64 0, i64 %550
  %552 = load double, double* %551, align 8, !tbaa !5
  %553 = tail call double @llvm.fmuladd.f64(double %552, double %552, double %549)
  %554 = add nuw nsw i64 %536, 4
  %555 = add i64 %538, 4
  %556 = icmp eq i64 %555, %534
  br i1 %556, label %557, label %535, !llvm.loop !36

557:                                              ; preds = %535, %526
  %558 = phi double [ undef, %526 ], [ %553, %535 ]
  %559 = phi i64 [ 1, %526 ], [ %554, %535 ]
  %560 = phi double [ 0.000000e+00, %526 ], [ %553, %535 ]
  %561 = icmp eq i64 %531, 0
  br i1 %561, label %572, label %562

562:                                              ; preds = %557, %562
  %563 = phi i64 [ %569, %562 ], [ %559, %557 ]
  %564 = phi double [ %568, %562 ], [ %560, %557 ]
  %565 = phi i64 [ %570, %562 ], [ 0, %557 ]
  %566 = getelementptr inbounds [150003 x double], [150003 x double]* @z, i64 0, i64 %563
  %567 = load double, double* %566, align 8, !tbaa !5
  %568 = tail call double @llvm.fmuladd.f64(double %567, double %567, double %564)
  %569 = add nuw nsw i64 %563, 1
  %570 = add i64 %565, 1
  %571 = icmp eq i64 %570, %531
  br i1 %571, label %572, label %562, !llvm.loop !37

572:                                              ; preds = %557, %562, %519
  %573 = phi double [ 0.000000e+00, %519 ], [ %558, %557 ], [ %568, %562 ]
  %574 = tail call double @sqrt(double noundef %573) #12
  %575 = fdiv double 1.000000e+00, %574
  %576 = load i1, i1* @lastcol, align 4
  %577 = load i1, i1* @firstcol, align 4
  %578 = sext i1 %577 to i32
  %579 = select i1 %576, i32 150001, i32 1
  %580 = add nsw i32 %579, %578
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %655, label %582

582:                                              ; preds = %572
  %583 = add nuw nsw i32 %580, 1
  %584 = zext i32 %583 to i64
  %585 = add nsw i64 %584, -1
  %586 = icmp ult i64 %585, 4
  br i1 %586, label %653, label %587

587:                                              ; preds = %582
  %588 = and i64 %585, -4
  %589 = or i64 %588, 1
  %590 = insertelement <2 x double> poison, double %575, i64 0
  %591 = shufflevector <2 x double> %590, <2 x double> poison, <2 x i32> zeroinitializer
  %592 = insertelement <2 x double> poison, double %575, i64 0
  %593 = shufflevector <2 x double> %592, <2 x double> poison, <2 x i32> zeroinitializer
  %594 = add nsw i64 %588, -4
  %595 = lshr exact i64 %594, 2
  %596 = add nuw nsw i64 %595, 1
  %597 = and i64 %596, 1
  %598 = icmp eq i64 %594, 0
  br i1 %598, label %635, label %599

599:                                              ; preds = %587
  %600 = and i64 %596, 9223372036854775806
  br label %601

601:                                              ; preds = %601, %599
  %602 = phi i64 [ 0, %599 ], [ %630, %601 ]
  %603 = phi i64 [ 0, %599 ], [ %631, %601 ]
  %604 = or i64 %602, 1
  %605 = getelementptr inbounds [150003 x double], [150003 x double]* @z, i64 0, i64 %604
  %606 = bitcast double* %605 to <2 x double>*
  %607 = load <2 x double>, <2 x double>* %606, align 8, !tbaa !5
  %608 = getelementptr inbounds double, double* %605, i64 2
  %609 = bitcast double* %608 to <2 x double>*
  %610 = load <2 x double>, <2 x double>* %609, align 8, !tbaa !5
  %611 = fmul <2 x double> %591, %607
  %612 = fmul <2 x double> %593, %610
  %613 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %604
  %614 = bitcast double* %613 to <2 x double>*
  store <2 x double> %611, <2 x double>* %614, align 8, !tbaa !5
  %615 = getelementptr inbounds double, double* %613, i64 2
  %616 = bitcast double* %615 to <2 x double>*
  store <2 x double> %612, <2 x double>* %616, align 8, !tbaa !5
  %617 = or i64 %602, 5
  %618 = getelementptr inbounds [150003 x double], [150003 x double]* @z, i64 0, i64 %617
  %619 = bitcast double* %618 to <2 x double>*
  %620 = load <2 x double>, <2 x double>* %619, align 8, !tbaa !5
  %621 = getelementptr inbounds double, double* %618, i64 2
  %622 = bitcast double* %621 to <2 x double>*
  %623 = load <2 x double>, <2 x double>* %622, align 8, !tbaa !5
  %624 = fmul <2 x double> %591, %620
  %625 = fmul <2 x double> %593, %623
  %626 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %617
  %627 = bitcast double* %626 to <2 x double>*
  store <2 x double> %624, <2 x double>* %627, align 8, !tbaa !5
  %628 = getelementptr inbounds double, double* %626, i64 2
  %629 = bitcast double* %628 to <2 x double>*
  store <2 x double> %625, <2 x double>* %629, align 8, !tbaa !5
  %630 = add nuw i64 %602, 8
  %631 = add i64 %603, 2
  %632 = icmp eq i64 %631, %600
  br i1 %632, label %633, label %601, !llvm.loop !38

633:                                              ; preds = %601
  %634 = or i64 %630, 1
  br label %635

635:                                              ; preds = %633, %587
  %636 = phi i64 [ 1, %587 ], [ %634, %633 ]
  %637 = icmp eq i64 %597, 0
  br i1 %637, label %651, label %638

638:                                              ; preds = %635
  %639 = getelementptr inbounds [150003 x double], [150003 x double]* @z, i64 0, i64 %636
  %640 = bitcast double* %639 to <2 x double>*
  %641 = load <2 x double>, <2 x double>* %640, align 8, !tbaa !5
  %642 = getelementptr inbounds double, double* %639, i64 2
  %643 = bitcast double* %642 to <2 x double>*
  %644 = load <2 x double>, <2 x double>* %643, align 8, !tbaa !5
  %645 = fmul <2 x double> %591, %641
  %646 = fmul <2 x double> %593, %644
  %647 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %636
  %648 = bitcast double* %647 to <2 x double>*
  store <2 x double> %645, <2 x double>* %648, align 8, !tbaa !5
  %649 = getelementptr inbounds double, double* %647, i64 2
  %650 = bitcast double* %649 to <2 x double>*
  store <2 x double> %646, <2 x double>* %650, align 8, !tbaa !5
  br label %651

651:                                              ; preds = %635, %638
  %652 = icmp eq i64 %585, %588
  br i1 %652, label %655, label %653

653:                                              ; preds = %582, %651
  %654 = phi i64 [ 1, %582 ], [ %589, %651 ]
  br label %689

655:                                              ; preds = %689, %572, %651
  br label %656

656:                                              ; preds = %656, %655
  %657 = phi i64 [ 0, %655 ], [ %687, %656 ]
  %658 = or i64 %657, 1
  %659 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %658
  %660 = bitcast double* %659 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %660, align 8, !tbaa !5
  %661 = getelementptr inbounds double, double* %659, i64 2
  %662 = bitcast double* %661 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %662, align 8, !tbaa !5
  %663 = add nuw nsw i64 %657, 4
  %664 = or i64 %663, 1
  %665 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %664
  %666 = bitcast double* %665 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %666, align 8, !tbaa !5
  %667 = getelementptr inbounds double, double* %665, i64 2
  %668 = bitcast double* %667 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %668, align 8, !tbaa !5
  %669 = add nuw nsw i64 %657, 8
  %670 = or i64 %669, 1
  %671 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %670
  %672 = bitcast double* %671 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %672, align 8, !tbaa !5
  %673 = getelementptr inbounds double, double* %671, i64 2
  %674 = bitcast double* %673 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %674, align 8, !tbaa !5
  %675 = add nuw nsw i64 %657, 12
  %676 = or i64 %675, 1
  %677 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %676
  %678 = bitcast double* %677 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %678, align 8, !tbaa !5
  %679 = getelementptr inbounds double, double* %677, i64 2
  %680 = bitcast double* %679 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %680, align 8, !tbaa !5
  %681 = add nuw nsw i64 %657, 16
  %682 = or i64 %681, 1
  %683 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %682
  %684 = bitcast double* %683 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %684, align 8, !tbaa !5
  %685 = getelementptr inbounds double, double* %683, i64 2
  %686 = bitcast double* %685 to <2 x double>*
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, <2 x double>* %686, align 8, !tbaa !5
  %687 = add nuw nsw i64 %657, 20
  %688 = icmp eq i64 %687, 150000
  br i1 %688, label %697, label %656, !llvm.loop !39

689:                                              ; preds = %653, %689
  %690 = phi i64 [ %695, %689 ], [ %654, %653 ]
  %691 = getelementptr inbounds [150003 x double], [150003 x double]* @z, i64 0, i64 %690
  %692 = load double, double* %691, align 8, !tbaa !5
  %693 = fmul double %575, %692
  %694 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %690
  store double %693, double* %694, align 8, !tbaa !5
  %695 = add nuw nsw i64 %690, 1
  %696 = icmp eq i64 %695, %584
  br i1 %696, label %655, label %689, !llvm.loop !40

697:                                              ; preds = %656
  store double 1.000000e+00, double* getelementptr inbounds ([150003 x double], [150003 x double]* @x, i64 0, i64 150001), align 8, !tbaa !5
  tail call void @timer_clear(i32 noundef 1) #12
  tail call void @timer_start(i32 noundef 1) #12
  br label %698

698:                                              ; preds = %697, %856
  %699 = phi i32 [ 1, %697 ], [ %857, %856 ]
  call fastcc void @conj_grad(double* noundef nonnull %3)
  %700 = load i1, i1* @lastcol, align 4
  %701 = load i1, i1* @firstcol, align 4
  %702 = zext i1 %701 to i32
  %703 = select i1 %700, i32 150001, i32 1
  %704 = icmp eq i32 %703, %702
  br i1 %704, label %755, label %705

705:                                              ; preds = %698
  %706 = sext i1 %701 to i32
  %707 = add nuw nsw i32 %703, 1
  %708 = add nsw i32 %707, %706
  %709 = zext i32 %708 to i64
  %710 = add nsw i64 %709, -1
  %711 = and i64 %710, 1
  %712 = icmp eq i32 %708, 2
  br i1 %712, label %741, label %713

713:                                              ; preds = %705
  %714 = and i64 %710, -2
  br label %715

715:                                              ; preds = %715, %713
  %716 = phi i64 [ 1, %713 ], [ %736, %715 ]
  %717 = phi <2 x double> [ zeroinitializer, %713 ], [ %735, %715 ]
  %718 = phi i64 [ 0, %713 ], [ %737, %715 ]
  %719 = getelementptr inbounds [150003 x double], [150003 x double]* @z, i64 0, i64 %716
  %720 = load double, double* %719, align 8, !tbaa !5
  %721 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %716
  %722 = load double, double* %721, align 8, !tbaa !5
  %723 = insertelement <2 x double> poison, double %720, i64 0
  %724 = insertelement <2 x double> %723, double %722, i64 1
  %725 = shufflevector <2 x double> %723, <2 x double> poison, <2 x i32> zeroinitializer
  %726 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %724, <2 x double> %725, <2 x double> %717)
  %727 = add nuw nsw i64 %716, 1
  %728 = getelementptr inbounds [150003 x double], [150003 x double]* @z, i64 0, i64 %727
  %729 = load double, double* %728, align 8, !tbaa !5
  %730 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %727
  %731 = load double, double* %730, align 8, !tbaa !5
  %732 = insertelement <2 x double> poison, double %729, i64 0
  %733 = insertelement <2 x double> %732, double %731, i64 1
  %734 = shufflevector <2 x double> %732, <2 x double> poison, <2 x i32> zeroinitializer
  %735 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %733, <2 x double> %734, <2 x double> %726)
  %736 = add nuw nsw i64 %716, 2
  %737 = add i64 %718, 2
  %738 = icmp eq i64 %737, %714
  br i1 %738, label %739, label %715, !llvm.loop !41

739:                                              ; preds = %715
  %740 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %733, <2 x double> %734, <2 x double> %726)
  br label %741

741:                                              ; preds = %739, %705
  %742 = phi <2 x double> [ undef, %705 ], [ %740, %739 ]
  %743 = phi i64 [ 1, %705 ], [ %736, %739 ]
  %744 = phi <2 x double> [ zeroinitializer, %705 ], [ %735, %739 ]
  %745 = icmp eq i64 %711, 0
  br i1 %745, label %755, label %746

746:                                              ; preds = %741
  %747 = getelementptr inbounds [150003 x double], [150003 x double]* @z, i64 0, i64 %743
  %748 = load double, double* %747, align 8, !tbaa !5
  %749 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %743
  %750 = load double, double* %749, align 8, !tbaa !5
  %751 = insertelement <2 x double> poison, double %748, i64 0
  %752 = insertelement <2 x double> %751, double %750, i64 1
  %753 = shufflevector <2 x double> %751, <2 x double> poison, <2 x i32> zeroinitializer
  %754 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %752, <2 x double> %753, <2 x double> %744)
  br label %755

755:                                              ; preds = %746, %741, %698
  %756 = phi <2 x double> [ zeroinitializer, %698 ], [ %742, %741 ], [ %754, %746 ]
  %757 = extractelement <2 x double> %756, i64 0
  %758 = tail call double @sqrt(double noundef %757) #12
  %759 = fdiv double 1.000000e+00, %758
  %760 = extractelement <2 x double> %756, i64 1
  %761 = fdiv double 1.000000e+00, %760
  %762 = fadd double %761, 1.100000e+02
  %763 = icmp eq i32 %699, 1
  br i1 %763, label %764, label %766

764:                                              ; preds = %755
  %765 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([50 x i8], [50 x i8]* @str.26, i64 0, i64 0))
  br label %766

766:                                              ; preds = %764, %755
  %767 = load double, double* %3, align 8, !tbaa !5
  %768 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 noundef %699, double noundef %767, double noundef %762)
  %769 = load i1, i1* @lastcol, align 4
  %770 = load i1, i1* @firstcol, align 4
  %771 = zext i1 %770 to i32
  %772 = select i1 %769, i32 150001, i32 1
  %773 = icmp eq i32 %772, %771
  br i1 %773, label %856, label %774

774:                                              ; preds = %766
  %775 = sext i1 %770 to i32
  %776 = add nuw nsw i32 %772, 1
  %777 = add nsw i32 %776, %775
  %778 = zext i32 %777 to i64
  %779 = add nsw i64 %778, -1
  %780 = icmp ult i64 %779, 4
  br i1 %780, label %846, label %781

781:                                              ; preds = %774
  %782 = and i64 %779, -4
  %783 = or i64 %782, 1
  %784 = insertelement <2 x double> poison, double %759, i64 0
  %785 = shufflevector <2 x double> %784, <2 x double> poison, <2 x i32> zeroinitializer
  %786 = insertelement <2 x double> poison, double %759, i64 0
  %787 = shufflevector <2 x double> %786, <2 x double> poison, <2 x i32> zeroinitializer
  %788 = add nsw i64 %782, -4
  %789 = lshr exact i64 %788, 2
  %790 = add nuw nsw i64 %789, 1
  %791 = and i64 %790, 1
  %792 = icmp eq i64 %788, 0
  br i1 %792, label %827, label %793

793:                                              ; preds = %781
  %794 = and i64 %790, 9223372036854775806
  br label %795

795:                                              ; preds = %795, %793
  %796 = phi i64 [ 0, %793 ], [ %824, %795 ]
  %797 = phi i64 [ 0, %793 ], [ %825, %795 ]
  %798 = or i64 %796, 1
  %799 = getelementptr inbounds [150003 x double], [150003 x double]* @z, i64 0, i64 %798
  %800 = bitcast double* %799 to <2 x double>*
  %801 = load <2 x double>, <2 x double>* %800, align 8, !tbaa !5
  %802 = getelementptr inbounds double, double* %799, i64 2
  %803 = bitcast double* %802 to <2 x double>*
  %804 = load <2 x double>, <2 x double>* %803, align 8, !tbaa !5
  %805 = fmul <2 x double> %785, %801
  %806 = fmul <2 x double> %787, %804
  %807 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %798
  %808 = bitcast double* %807 to <2 x double>*
  store <2 x double> %805, <2 x double>* %808, align 8, !tbaa !5
  %809 = getelementptr inbounds double, double* %807, i64 2
  %810 = bitcast double* %809 to <2 x double>*
  store <2 x double> %806, <2 x double>* %810, align 8, !tbaa !5
  %811 = or i64 %796, 5
  %812 = getelementptr inbounds [150003 x double], [150003 x double]* @z, i64 0, i64 %811
  %813 = bitcast double* %812 to <2 x double>*
  %814 = load <2 x double>, <2 x double>* %813, align 8, !tbaa !5
  %815 = getelementptr inbounds double, double* %812, i64 2
  %816 = bitcast double* %815 to <2 x double>*
  %817 = load <2 x double>, <2 x double>* %816, align 8, !tbaa !5
  %818 = fmul <2 x double> %785, %814
  %819 = fmul <2 x double> %787, %817
  %820 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %811
  %821 = bitcast double* %820 to <2 x double>*
  store <2 x double> %818, <2 x double>* %821, align 8, !tbaa !5
  %822 = getelementptr inbounds double, double* %820, i64 2
  %823 = bitcast double* %822 to <2 x double>*
  store <2 x double> %819, <2 x double>* %823, align 8, !tbaa !5
  %824 = add nuw i64 %796, 8
  %825 = add i64 %797, 2
  %826 = icmp eq i64 %825, %794
  br i1 %826, label %827, label %795, !llvm.loop !42

827:                                              ; preds = %795, %781
  %828 = phi i64 [ 0, %781 ], [ %824, %795 ]
  %829 = icmp eq i64 %791, 0
  br i1 %829, label %844, label %830

830:                                              ; preds = %827
  %831 = or i64 %828, 1
  %832 = getelementptr inbounds [150003 x double], [150003 x double]* @z, i64 0, i64 %831
  %833 = bitcast double* %832 to <2 x double>*
  %834 = load <2 x double>, <2 x double>* %833, align 8, !tbaa !5
  %835 = getelementptr inbounds double, double* %832, i64 2
  %836 = bitcast double* %835 to <2 x double>*
  %837 = load <2 x double>, <2 x double>* %836, align 8, !tbaa !5
  %838 = fmul <2 x double> %785, %834
  %839 = fmul <2 x double> %787, %837
  %840 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %831
  %841 = bitcast double* %840 to <2 x double>*
  store <2 x double> %838, <2 x double>* %841, align 8, !tbaa !5
  %842 = getelementptr inbounds double, double* %840, i64 2
  %843 = bitcast double* %842 to <2 x double>*
  store <2 x double> %839, <2 x double>* %843, align 8, !tbaa !5
  br label %844

844:                                              ; preds = %827, %830
  %845 = icmp eq i64 %779, %782
  br i1 %845, label %856, label %846

846:                                              ; preds = %774, %844
  %847 = phi i64 [ 1, %774 ], [ %783, %844 ]
  br label %848

848:                                              ; preds = %846, %848
  %849 = phi i64 [ %854, %848 ], [ %847, %846 ]
  %850 = getelementptr inbounds [150003 x double], [150003 x double]* @z, i64 0, i64 %849
  %851 = load double, double* %850, align 8, !tbaa !5
  %852 = fmul double %759, %851
  %853 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %849
  store double %852, double* %853, align 8, !tbaa !5
  %854 = add nuw nsw i64 %849, 1
  %855 = icmp eq i64 %854, %778
  br i1 %855, label %856, label %848, !llvm.loop !43

856:                                              ; preds = %848, %844, %766
  %857 = add nuw nsw i32 %699, 1
  %858 = icmp eq i32 %857, 11
  br i1 %858, label %859, label %698, !llvm.loop !44

859:                                              ; preds = %856
  tail call void @timer_stop(i32 noundef 1) #12
  %860 = tail call double @timer_read(i32 noundef 1) #12
  %861 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str.24, i64 0, i64 0))
  %862 = fadd double %762, 0xC03CF93E375478D3
  %863 = tail call double @llvm.fabs.f64(double %862)
  %864 = fcmp ugt double %863, 1.000000e-10
  br i1 %864, label %869, label %865

865:                                              ; preds = %859
  %866 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str.25, i64 0, i64 0))
  %867 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), double noundef %762)
  %868 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), double noundef %862)
  br label %869

869:                                              ; preds = %859, %865
  %870 = phi i32 [ 1, %865 ], [ 0, %859 ]
  %871 = fcmp une double %860, 0.000000e+00
  br i1 %871, label %872, label %875

872:                                              ; preds = %869
  %873 = fdiv double 0x4240B016A1F00000, %860
  %874 = fdiv double %873, 1.000000e+06
  br label %875

875:                                              ; preds = %869, %872
  %876 = phi double [ %874, %872 ], [ 0.000000e+00, %869 ]
  tail call void @c_print_results(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8 noundef signext 67, i32 noundef 150000, i32 noundef 0, i32 noundef 0, i32 noundef 75, double noundef %860, double noundef %876, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 noundef %870, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0)) #12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #12
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

declare double @randlc(double* noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @conj_grad(double* nocapture noundef writeonly %0) unnamed_addr #4 {
  %2 = load i1, i1* @naa, align 4
  %3 = select i1 %2, i64 1200008, i64 8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(8) bitcast (double* getelementptr inbounds ([150003 x double], [150003 x double]* @q, i64 0, i64 1) to i8*), i8 0, i64 %3, i1 false), !tbaa !5
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(8) bitcast (double* getelementptr inbounds ([150003 x double], [150003 x double]* @z, i64 0, i64 1) to i8*), i8 0, i64 %3, i1 false), !tbaa !5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(8) bitcast (double* getelementptr inbounds ([150003 x double], [150003 x double]* @r, i64 0, i64 1) to i8*), i8* noundef nonnull align 8 dereferenceable(8) bitcast (double* getelementptr inbounds ([150003 x double], [150003 x double]* @x, i64 0, i64 1) to i8*), i64 %3, i1 false), !tbaa !5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(8) bitcast (double* getelementptr inbounds ([150003 x double], [150003 x double]* @p, i64 0, i64 1) to i8*), i8* noundef nonnull align 8 dereferenceable(8) bitcast (double* getelementptr inbounds ([150003 x double], [150003 x double]* @x, i64 0, i64 1) to i8*), i64 %3, i1 false), !tbaa !5
  %4 = load i1, i1* @lastcol, align 4
  %5 = load i1, i1* @firstcol, align 4
  %6 = sext i1 %5 to i32
  %7 = select i1 %4, i32 150001, i32 1
  %8 = add nsw i32 %7, %6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %1
  %11 = add nuw nsw i32 %8, 1
  %12 = zext i32 %11 to i64
  %13 = add nsw i64 %12, -1
  %14 = add nsw i64 %12, -2
  %15 = and i64 %13, 3
  %16 = icmp ult i64 %14, 3
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = and i64 %13, -4
  br label %60

19:                                               ; preds = %60, %10
  %20 = phi double [ undef, %10 ], [ %78, %60 ]
  %21 = phi i64 [ 1, %10 ], [ %79, %60 ]
  %22 = phi double [ 0.000000e+00, %10 ], [ %78, %60 ]
  %23 = icmp eq i64 %15, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19, %24
  %25 = phi i64 [ %31, %24 ], [ %21, %19 ]
  %26 = phi double [ %30, %24 ], [ %22, %19 ]
  %27 = phi i64 [ %32, %24 ], [ 0, %19 ]
  %28 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %25
  %29 = load double, double* %28, align 8, !tbaa !5
  %30 = tail call double @llvm.fmuladd.f64(double %29, double %29, double %26)
  %31 = add nuw nsw i64 %25, 1
  %32 = add i64 %27, 1
  %33 = icmp eq i64 %32, %15
  br i1 %33, label %34, label %24, !llvm.loop !45

34:                                               ; preds = %24, %19
  %35 = phi double [ %20, %19 ], [ %30, %24 ]
  %36 = zext i32 %11 to i64
  br label %37

37:                                               ; preds = %1, %34
  %38 = phi i64 [ %36, %34 ], [ 1, %1 ]
  %39 = phi double [ %35, %34 ], [ 0.000000e+00, %1 ]
  %40 = load i1, i1* @lastrow, align 4
  %41 = load i1, i1* @firstrow, align 4
  %42 = sext i1 %41 to i32
  %43 = select i1 %40, i32 150001, i32 1
  %44 = add nsw i32 %43, %42
  %45 = icmp eq i32 %44, 0
  %46 = add nuw nsw i32 %44, 1
  %47 = zext i32 %46 to i64
  %48 = load i32, i32* getelementptr inbounds ([150002 x i32], [150002 x i32]* @rowstr, i64 0, i64 1), align 4
  %49 = add nsw i64 %38, -1
  %50 = add nsw i64 %38, -1
  %51 = add nsw i64 %38, -2
  %52 = and i64 %50, 1
  %53 = icmp eq i64 %51, 0
  %54 = and i64 %50, -2
  %55 = icmp eq i64 %52, 0
  %56 = icmp ult i64 %49, 4
  %57 = and i64 %49, -4
  %58 = or i64 %57, 1
  %59 = icmp eq i64 %49, %57
  br label %82

60:                                               ; preds = %60, %17
  %61 = phi i64 [ 1, %17 ], [ %79, %60 ]
  %62 = phi double [ 0.000000e+00, %17 ], [ %78, %60 ]
  %63 = phi i64 [ 0, %17 ], [ %80, %60 ]
  %64 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %61
  %65 = load double, double* %64, align 8, !tbaa !5
  %66 = tail call double @llvm.fmuladd.f64(double %65, double %65, double %62)
  %67 = add nuw nsw i64 %61, 1
  %68 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %67
  %69 = load double, double* %68, align 8, !tbaa !5
  %70 = tail call double @llvm.fmuladd.f64(double %69, double %69, double %66)
  %71 = add nuw nsw i64 %61, 2
  %72 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %71
  %73 = load double, double* %72, align 8, !tbaa !5
  %74 = tail call double @llvm.fmuladd.f64(double %73, double %73, double %70)
  %75 = add nuw nsw i64 %61, 3
  %76 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %75
  %77 = load double, double* %76, align 8, !tbaa !5
  %78 = tail call double @llvm.fmuladd.f64(double %77, double %77, double %74)
  %79 = add nuw nsw i64 %61, 4
  %80 = add i64 %63, 4
  %81 = icmp eq i64 %80, %18
  br i1 %81, label %19, label %60, !llvm.loop !46

82:                                               ; preds = %37, %233
  %83 = phi i32 [ 1, %37 ], [ %235, %233 ]
  %84 = phi double [ %39, %37 ], [ %234, %233 ]
  br i1 %45, label %85, label %87

85:                                               ; preds = %139, %82
  br i1 %9, label %233, label %86

86:                                               ; preds = %85
  br i1 %53, label %161, label %143

87:                                               ; preds = %82, %139
  %88 = phi i32 [ %92, %139 ], [ %48, %82 ]
  %89 = phi i64 [ %90, %139 ], [ 1, %82 ]
  %90 = add nuw nsw i64 %89, 1
  %91 = getelementptr inbounds [150002 x i32], [150002 x i32]* @rowstr, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4, !tbaa !9
  %93 = icmp slt i32 %88, %92
  br i1 %93, label %94, label %139

94:                                               ; preds = %87
  %95 = sext i32 %88 to i64
  %96 = sext i32 %92 to i64
  %97 = sub nsw i64 %96, %95
  %98 = xor i64 %95, -1
  %99 = and i64 %97, 1
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %94
  %102 = getelementptr inbounds [40950001 x double], [40950001 x double]* @a, i64 0, i64 %95
  %103 = load double, double* %102, align 8, !tbaa !5
  %104 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @colidx, i64 0, i64 %95
  %105 = load i32, i32* %104, align 4, !tbaa !9
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [150003 x double], [150003 x double]* @p, i64 0, i64 %106
  %108 = load double, double* %107, align 8, !tbaa !5
  %109 = tail call double @llvm.fmuladd.f64(double %103, double %108, double 0.000000e+00)
  %110 = add nsw i64 %95, 1
  br label %111

111:                                              ; preds = %101, %94
  %112 = phi double [ undef, %94 ], [ %109, %101 ]
  %113 = phi i64 [ %95, %94 ], [ %110, %101 ]
  %114 = phi double [ 0.000000e+00, %94 ], [ %109, %101 ]
  %115 = sub nsw i64 0, %96
  %116 = icmp eq i64 %98, %115
  br i1 %116, label %139, label %117

117:                                              ; preds = %111, %117
  %118 = phi i64 [ %137, %117 ], [ %113, %111 ]
  %119 = phi double [ %136, %117 ], [ %114, %111 ]
  %120 = getelementptr inbounds [40950001 x double], [40950001 x double]* @a, i64 0, i64 %118
  %121 = load double, double* %120, align 8, !tbaa !5
  %122 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @colidx, i64 0, i64 %118
  %123 = load i32, i32* %122, align 4, !tbaa !9
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [150003 x double], [150003 x double]* @p, i64 0, i64 %124
  %126 = load double, double* %125, align 8, !tbaa !5
  %127 = tail call double @llvm.fmuladd.f64(double %121, double %126, double %119)
  %128 = add nsw i64 %118, 1
  %129 = getelementptr inbounds [40950001 x double], [40950001 x double]* @a, i64 0, i64 %128
  %130 = load double, double* %129, align 8, !tbaa !5
  %131 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @colidx, i64 0, i64 %128
  %132 = load i32, i32* %131, align 4, !tbaa !9
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [150003 x double], [150003 x double]* @p, i64 0, i64 %133
  %135 = load double, double* %134, align 8, !tbaa !5
  %136 = tail call double @llvm.fmuladd.f64(double %130, double %135, double %127)
  %137 = add nsw i64 %118, 2
  %138 = icmp eq i64 %137, %96
  br i1 %138, label %139, label %117, !llvm.loop !47

139:                                              ; preds = %111, %117, %87
  %140 = phi double [ 0.000000e+00, %87 ], [ %112, %111 ], [ %136, %117 ]
  %141 = getelementptr inbounds [150003 x double], [150003 x double]* @q, i64 0, i64 %89
  store double %140, double* %141, align 8, !tbaa !5
  %142 = icmp eq i64 %90, %47
  br i1 %142, label %85, label %87, !llvm.loop !48

143:                                              ; preds = %86, %143
  %144 = phi i64 [ %158, %143 ], [ 1, %86 ]
  %145 = phi double [ %157, %143 ], [ 0.000000e+00, %86 ]
  %146 = phi i64 [ %159, %143 ], [ 0, %86 ]
  %147 = getelementptr inbounds [150003 x double], [150003 x double]* @p, i64 0, i64 %144
  %148 = load double, double* %147, align 8, !tbaa !5
  %149 = getelementptr inbounds [150003 x double], [150003 x double]* @q, i64 0, i64 %144
  %150 = load double, double* %149, align 8, !tbaa !5
  %151 = tail call double @llvm.fmuladd.f64(double %148, double %150, double %145)
  %152 = add nuw nsw i64 %144, 1
  %153 = getelementptr inbounds [150003 x double], [150003 x double]* @p, i64 0, i64 %152
  %154 = load double, double* %153, align 8, !tbaa !5
  %155 = getelementptr inbounds [150003 x double], [150003 x double]* @q, i64 0, i64 %152
  %156 = load double, double* %155, align 8, !tbaa !5
  %157 = tail call double @llvm.fmuladd.f64(double %154, double %156, double %151)
  %158 = add nuw nsw i64 %144, 2
  %159 = add i64 %146, 2
  %160 = icmp eq i64 %159, %54
  br i1 %160, label %161, label %143, !llvm.loop !49

161:                                              ; preds = %143, %86
  %162 = phi double [ undef, %86 ], [ %157, %143 ]
  %163 = phi i64 [ 1, %86 ], [ %158, %143 ]
  %164 = phi double [ 0.000000e+00, %86 ], [ %157, %143 ]
  br i1 %55, label %171, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds [150003 x double], [150003 x double]* @p, i64 0, i64 %163
  %167 = load double, double* %166, align 8, !tbaa !5
  %168 = getelementptr inbounds [150003 x double], [150003 x double]* @q, i64 0, i64 %163
  %169 = load double, double* %168, align 8, !tbaa !5
  %170 = tail call double @llvm.fmuladd.f64(double %167, double %169, double %164)
  br label %171

171:                                              ; preds = %161, %165
  %172 = phi double [ %162, %161 ], [ %170, %165 ]
  %173 = fdiv double %84, %172
  br i1 %9, label %233, label %174

174:                                              ; preds = %171
  %175 = fneg double %173
  br label %176

176:                                              ; preds = %174, %176
  %177 = phi i64 [ 1, %174 ], [ %190, %176 ]
  %178 = phi double [ 0.000000e+00, %174 ], [ %189, %176 ]
  %179 = getelementptr inbounds [150003 x double], [150003 x double]* @r, i64 0, i64 %177
  %180 = load double, double* %179, align 8, !tbaa !5
  %181 = getelementptr inbounds [150003 x double], [150003 x double]* @q, i64 0, i64 %177
  %182 = load double, double* %181, align 8, !tbaa !5
  %183 = tail call double @llvm.fmuladd.f64(double %175, double %182, double %180)
  %184 = getelementptr inbounds [150003 x double], [150003 x double]* @z, i64 0, i64 %177
  %185 = load double, double* %184, align 8, !tbaa !5
  %186 = getelementptr inbounds [150003 x double], [150003 x double]* @p, i64 0, i64 %177
  %187 = load double, double* %186, align 8, !tbaa !5
  %188 = tail call double @llvm.fmuladd.f64(double %173, double %187, double %185)
  store double %188, double* %184, align 8, !tbaa !5
  store double %183, double* %179, align 8, !tbaa !5
  %189 = tail call double @llvm.fmuladd.f64(double %183, double %183, double %178)
  %190 = add nuw nsw i64 %177, 1
  %191 = icmp eq i64 %190, %38
  br i1 %191, label %192, label %176, !llvm.loop !50

192:                                              ; preds = %176
  %193 = fdiv double %189, %84
  br i1 %9, label %233, label %194

194:                                              ; preds = %192
  br i1 %56, label %222, label %195

195:                                              ; preds = %194
  %196 = insertelement <2 x double> poison, double %193, i64 0
  %197 = shufflevector <2 x double> %196, <2 x double> poison, <2 x i32> zeroinitializer
  %198 = insertelement <2 x double> poison, double %193, i64 0
  %199 = shufflevector <2 x double> %198, <2 x double> poison, <2 x i32> zeroinitializer
  br label %200

200:                                              ; preds = %200, %195
  %201 = phi i64 [ 0, %195 ], [ %219, %200 ]
  %202 = or i64 %201, 1
  %203 = getelementptr inbounds [150003 x double], [150003 x double]* @r, i64 0, i64 %202
  %204 = bitcast double* %203 to <2 x double>*
  %205 = load <2 x double>, <2 x double>* %204, align 8, !tbaa !5
  %206 = getelementptr inbounds double, double* %203, i64 2
  %207 = bitcast double* %206 to <2 x double>*
  %208 = load <2 x double>, <2 x double>* %207, align 8, !tbaa !5
  %209 = getelementptr inbounds [150003 x double], [150003 x double]* @p, i64 0, i64 %202
  %210 = bitcast double* %209 to <2 x double>*
  %211 = load <2 x double>, <2 x double>* %210, align 8, !tbaa !5
  %212 = getelementptr inbounds double, double* %209, i64 2
  %213 = bitcast double* %212 to <2 x double>*
  %214 = load <2 x double>, <2 x double>* %213, align 8, !tbaa !5
  %215 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %197, <2 x double> %211, <2 x double> %205)
  %216 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %199, <2 x double> %214, <2 x double> %208)
  %217 = bitcast double* %209 to <2 x double>*
  store <2 x double> %215, <2 x double>* %217, align 8, !tbaa !5
  %218 = bitcast double* %212 to <2 x double>*
  store <2 x double> %216, <2 x double>* %218, align 8, !tbaa !5
  %219 = add nuw i64 %201, 4
  %220 = icmp eq i64 %219, %57
  br i1 %220, label %221, label %200, !llvm.loop !51

221:                                              ; preds = %200
  br i1 %59, label %233, label %222

222:                                              ; preds = %194, %221
  %223 = phi i64 [ 1, %194 ], [ %58, %221 ]
  br label %224

224:                                              ; preds = %222, %224
  %225 = phi i64 [ %231, %224 ], [ %223, %222 ]
  %226 = getelementptr inbounds [150003 x double], [150003 x double]* @r, i64 0, i64 %225
  %227 = load double, double* %226, align 8, !tbaa !5
  %228 = getelementptr inbounds [150003 x double], [150003 x double]* @p, i64 0, i64 %225
  %229 = load double, double* %228, align 8, !tbaa !5
  %230 = tail call double @llvm.fmuladd.f64(double %193, double %229, double %227)
  store double %230, double* %228, align 8, !tbaa !5
  %231 = add nuw nsw i64 %225, 1
  %232 = icmp eq i64 %231, %38
  br i1 %232, label %233, label %224, !llvm.loop !52

233:                                              ; preds = %224, %221, %171, %85, %192
  %234 = phi double [ %189, %192 ], [ 0.000000e+00, %85 ], [ 0.000000e+00, %171 ], [ %189, %221 ], [ %189, %224 ]
  %235 = add nuw nsw i32 %83, 1
  %236 = icmp eq i32 %235, 26
  br i1 %236, label %237, label %82, !llvm.loop !53

237:                                              ; preds = %233
  br i1 %45, label %241, label %238

238:                                              ; preds = %237
  %239 = zext i32 %46 to i64
  %240 = load i32, i32* getelementptr inbounds ([150002 x i32], [150002 x i32]* @rowstr, i64 0, i64 1), align 4, !tbaa !9
  br label %247

241:                                              ; preds = %299, %237
  br i1 %9, label %335, label %242

242:                                              ; preds = %241
  %243 = and i64 %50, 1
  %244 = icmp eq i64 %51, 0
  br i1 %244, label %323, label %245

245:                                              ; preds = %242
  %246 = and i64 %50, -2
  br label %303

247:                                              ; preds = %238, %299
  %248 = phi i32 [ %240, %238 ], [ %252, %299 ]
  %249 = phi i64 [ 1, %238 ], [ %250, %299 ]
  %250 = add nuw nsw i64 %249, 1
  %251 = getelementptr inbounds [150002 x i32], [150002 x i32]* @rowstr, i64 0, i64 %250
  %252 = load i32, i32* %251, align 4, !tbaa !9
  %253 = icmp slt i32 %248, %252
  br i1 %253, label %254, label %299

254:                                              ; preds = %247
  %255 = sext i32 %248 to i64
  %256 = sext i32 %252 to i64
  %257 = sub nsw i64 %256, %255
  %258 = xor i64 %255, -1
  %259 = and i64 %257, 1
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %271, label %261

261:                                              ; preds = %254
  %262 = getelementptr inbounds [40950001 x double], [40950001 x double]* @a, i64 0, i64 %255
  %263 = load double, double* %262, align 8, !tbaa !5
  %264 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @colidx, i64 0, i64 %255
  %265 = load i32, i32* %264, align 4, !tbaa !9
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [150003 x double], [150003 x double]* @z, i64 0, i64 %266
  %268 = load double, double* %267, align 8, !tbaa !5
  %269 = tail call double @llvm.fmuladd.f64(double %263, double %268, double 0.000000e+00)
  %270 = add nsw i64 %255, 1
  br label %271

271:                                              ; preds = %261, %254
  %272 = phi double [ undef, %254 ], [ %269, %261 ]
  %273 = phi i64 [ %255, %254 ], [ %270, %261 ]
  %274 = phi double [ 0.000000e+00, %254 ], [ %269, %261 ]
  %275 = sub nsw i64 0, %256
  %276 = icmp eq i64 %258, %275
  br i1 %276, label %299, label %277

277:                                              ; preds = %271, %277
  %278 = phi i64 [ %297, %277 ], [ %273, %271 ]
  %279 = phi double [ %296, %277 ], [ %274, %271 ]
  %280 = getelementptr inbounds [40950001 x double], [40950001 x double]* @a, i64 0, i64 %278
  %281 = load double, double* %280, align 8, !tbaa !5
  %282 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @colidx, i64 0, i64 %278
  %283 = load i32, i32* %282, align 4, !tbaa !9
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [150003 x double], [150003 x double]* @z, i64 0, i64 %284
  %286 = load double, double* %285, align 8, !tbaa !5
  %287 = tail call double @llvm.fmuladd.f64(double %281, double %286, double %279)
  %288 = add nsw i64 %278, 1
  %289 = getelementptr inbounds [40950001 x double], [40950001 x double]* @a, i64 0, i64 %288
  %290 = load double, double* %289, align 8, !tbaa !5
  %291 = getelementptr inbounds [40950001 x i32], [40950001 x i32]* @colidx, i64 0, i64 %288
  %292 = load i32, i32* %291, align 4, !tbaa !9
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [150003 x double], [150003 x double]* @z, i64 0, i64 %293
  %295 = load double, double* %294, align 8, !tbaa !5
  %296 = tail call double @llvm.fmuladd.f64(double %290, double %295, double %287)
  %297 = add nsw i64 %278, 2
  %298 = icmp eq i64 %297, %256
  br i1 %298, label %299, label %277, !llvm.loop !54

299:                                              ; preds = %271, %277, %247
  %300 = phi double [ 0.000000e+00, %247 ], [ %272, %271 ], [ %296, %277 ]
  %301 = getelementptr inbounds [150003 x double], [150003 x double]* @r, i64 0, i64 %249
  store double %300, double* %301, align 8, !tbaa !5
  %302 = icmp eq i64 %250, %239
  br i1 %302, label %241, label %247, !llvm.loop !55

303:                                              ; preds = %303, %245
  %304 = phi i64 [ 1, %245 ], [ %320, %303 ]
  %305 = phi double [ 0.000000e+00, %245 ], [ %319, %303 ]
  %306 = phi i64 [ 0, %245 ], [ %321, %303 ]
  %307 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %304
  %308 = load double, double* %307, align 8, !tbaa !5
  %309 = getelementptr inbounds [150003 x double], [150003 x double]* @r, i64 0, i64 %304
  %310 = load double, double* %309, align 8, !tbaa !5
  %311 = fsub double %308, %310
  %312 = tail call double @llvm.fmuladd.f64(double %311, double %311, double %305)
  %313 = add nuw nsw i64 %304, 1
  %314 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %313
  %315 = load double, double* %314, align 8, !tbaa !5
  %316 = getelementptr inbounds [150003 x double], [150003 x double]* @r, i64 0, i64 %313
  %317 = load double, double* %316, align 8, !tbaa !5
  %318 = fsub double %315, %317
  %319 = tail call double @llvm.fmuladd.f64(double %318, double %318, double %312)
  %320 = add nuw nsw i64 %304, 2
  %321 = add i64 %306, 2
  %322 = icmp eq i64 %321, %246
  br i1 %322, label %323, label %303, !llvm.loop !56

323:                                              ; preds = %303, %242
  %324 = phi double [ undef, %242 ], [ %319, %303 ]
  %325 = phi i64 [ 1, %242 ], [ %320, %303 ]
  %326 = phi double [ 0.000000e+00, %242 ], [ %319, %303 ]
  %327 = icmp eq i64 %243, 0
  br i1 %327, label %335, label %328

328:                                              ; preds = %323
  %329 = getelementptr inbounds [150003 x double], [150003 x double]* @x, i64 0, i64 %325
  %330 = load double, double* %329, align 8, !tbaa !5
  %331 = getelementptr inbounds [150003 x double], [150003 x double]* @r, i64 0, i64 %325
  %332 = load double, double* %331, align 8, !tbaa !5
  %333 = fsub double %330, %332
  %334 = tail call double @llvm.fmuladd.f64(double %333, double %333, double %326)
  br label %335

335:                                              ; preds = %328, %323, %241
  %336 = phi double [ 0.000000e+00, %241 ], [ %324, %323 ], [ %334, %328 ]
  %337 = tail call double @sqrt(double noundef %336) #12
  store double %337, double* %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #6

declare void @timer_clear(i32 noundef) local_unnamed_addr #3

declare void @timer_start(i32 noundef) local_unnamed_addr #3

declare void @timer_stop(i32 noundef) local_unnamed_addr #3

declare double @timer_read(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #5

declare void @c_print_results(i8* noundef, i8 noundef signext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, double noundef, double noundef, i8* noundef, i32 noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.isvectorized", i32 1}
!33 = distinct !{!33, !12, !32}
!34 = distinct !{!34, !12, !35, !32}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !16}
!38 = distinct !{!38, !12, !32}
!39 = distinct !{!39, !12, !32}
!40 = distinct !{!40, !12, !35, !32}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12, !32}
!43 = distinct !{!43, !12, !35, !32}
!44 = distinct !{!44, !12}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !12}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
!49 = distinct !{!49, !12}
!50 = distinct !{!50, !12}
!51 = distinct !{!51, !12, !32}
!52 = distinct !{!52, !12, !35, !32}
!53 = distinct !{!53, !12}
!54 = distinct !{!54, !12}
!55 = distinct !{!55, !12}
!56 = distinct !{!56, !12}
