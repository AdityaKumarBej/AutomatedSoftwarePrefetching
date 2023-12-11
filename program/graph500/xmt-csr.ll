; ModuleID = 'xmt-csr/xmt-csr.c'
source_filename = "xmt-csr/xmt-csr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.packed_edge = type { i64, i64 }

@xoff = internal unnamed_addr global i64* null, align 8
@maxvtx = internal global i64 0, align 8
@nv = internal unnamed_addr global i64 0, align 8
@xadj = internal unnamed_addr global i64* null, align 8
@xadjstore = internal unnamed_addr global i64* null, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @create_graph_from_edgelist(%struct.packed_edge* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  store i64 -1, i64* @maxvtx, align 8, !tbaa !8, !noalias !5
  %4 = icmp sgt i64 %1, 0
  br i1 %4, label %5, label %48

5:                                                ; preds = %2
  %6 = and i64 %1, 1
  %7 = icmp eq i64 %1, 1
  br i1 %7, label %34, label %8

8:                                                ; preds = %5
  %9 = and i64 %1, -2
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i64 [ -1, %8 ], [ %30, %10 ]
  %12 = phi i64 [ 0, %8 ], [ %31, %10 ]
  %13 = phi i64 [ 0, %8 ], [ %32, %10 ]
  %14 = getelementptr inbounds %struct.packed_edge, %struct.packed_edge* %0, i64 %12, i32 0
  %15 = load i64, i64* %14, align 8, !tbaa !12, !alias.scope !5
  %16 = icmp sgt i64 %15, %11
  %17 = select i1 %16, i64 %15, i64 %11
  %18 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %12, i32 1
  %19 = load i64, i64* %18, align 8, !tbaa !14, !alias.scope !5
  %20 = icmp sgt i64 %19, %17
  %21 = select i1 %20, i64 %19, i64 %17
  %22 = or i64 %12, 1
  %23 = getelementptr inbounds %struct.packed_edge, %struct.packed_edge* %0, i64 %22, i32 0
  %24 = load i64, i64* %23, align 8, !tbaa !12, !alias.scope !5
  %25 = icmp sgt i64 %24, %21
  %26 = select i1 %25, i64 %24, i64 %21
  %27 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %22, i32 1
  %28 = load i64, i64* %27, align 8, !tbaa !14, !alias.scope !5
  %29 = icmp sgt i64 %28, %26
  %30 = select i1 %29, i64 %28, i64 %26
  %31 = add nuw nsw i64 %12, 2
  %32 = add i64 %13, 2
  %33 = icmp eq i64 %32, %9
  br i1 %33, label %34, label %10, !llvm.loop !15

34:                                               ; preds = %10, %5
  %35 = phi i64 [ undef, %5 ], [ %30, %10 ]
  %36 = phi i64 [ -1, %5 ], [ %30, %10 ]
  %37 = phi i64 [ 0, %5 ], [ %31, %10 ]
  %38 = icmp eq i64 %6, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.packed_edge, %struct.packed_edge* %0, i64 %37, i32 0
  %41 = load i64, i64* %40, align 8, !tbaa !12, !alias.scope !5
  %42 = icmp sgt i64 %41, %36
  %43 = select i1 %42, i64 %41, i64 %36
  %44 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %37, i32 1
  %45 = load i64, i64* %44, align 8, !tbaa !14, !alias.scope !5
  %46 = icmp sgt i64 %45, %43
  %47 = select i1 %46, i64 %45, i64 %43
  br label %48

48:                                               ; preds = %39, %34, %2
  %49 = phi i64 [ -1, %2 ], [ %35, %34 ], [ %47, %39 ]
  %50 = tail call i32 (i64*, ...) bitcast (i32 (...)* @readfe to i32 (i64*, ...)*)(i64* noundef nonnull @maxvtx) #9, !noalias !5
  %51 = sext i32 %50 to i64
  %52 = icmp sgt i64 %49, %51
  %53 = select i1 %52, i64 %49, i64 %51
  %54 = tail call i32 (i64*, i64, ...) bitcast (i32 (...)* @writeef to i32 (i64*, i64, ...)*)(i64* noundef nonnull @maxvtx, i64 noundef %53) #9, !noalias !5
  %55 = load i64, i64* @maxvtx, align 8, !tbaa !8, !noalias !5
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* @nv, align 8, !tbaa !8, !noalias !5
  %57 = shl i64 %56, 4
  %58 = add i64 %57, 16
  %59 = tail call i8* @xmalloc_large(i64 noundef %58) #9
  store i8* %59, i8** bitcast (i64** @xoff to i8**), align 8, !tbaa !17
  %60 = icmp eq i8* %59, null
  %61 = bitcast i8* %59 to i64*
  br i1 %60, label %316, label %62

62:                                               ; preds = %48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %63 = load i64, i64* @nv, align 8, !tbaa !8, !noalias !19
  %64 = icmp sgt i64 %63, -1
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = shl nuw i64 %63, 1
  %67 = or i64 %66, 1
  %68 = tail call i64 @llvm.smax.i64(i64 %67, i64 0) #9
  %69 = shl i64 %68, 3
  %70 = add i64 %69, 8
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %59, i8 0, i64 %70, i1 false) #9, !tbaa !8, !noalias !19
  br label %71

71:                                               ; preds = %65, %62
  br i1 %4, label %90, label %76

72:                                               ; preds = %106
  %73 = load i64, i64* @nv, align 8, !tbaa !8, !noalias !19
  %74 = load i64*, i64** @xoff, align 8, !tbaa !17, !noalias !19
  %75 = bitcast i64* %74 to i8*
  br label %76

76:                                               ; preds = %72, %71
  %77 = phi i8* [ %75, %72 ], [ %59, %71 ]
  %78 = phi i64* [ %74, %72 ], [ %61, %71 ]
  %79 = phi i64 [ %73, %72 ], [ %63, %71 ]
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = add i64 %79, -1
  %83 = and i64 %79, 1
  %84 = icmp eq i64 %82, 0
  br i1 %84, label %131, label %85

85:                                               ; preds = %81
  %86 = and i64 %79, -2
  br label %109

87:                                               ; preds = %76
  %88 = shl nsw i64 %79, 1
  %89 = getelementptr inbounds i64, i64* %78, i64 %88
  store i64 0, i64* %89, align 8, !tbaa !8, !noalias !19
  br label %196

90:                                               ; preds = %71, %106
  %91 = phi i64 [ %107, %106 ], [ 0, %71 ]
  %92 = getelementptr inbounds %struct.packed_edge, %struct.packed_edge* %0, i64 %91, i32 0
  %93 = load i64, i64* %92, align 8, !tbaa !12, !alias.scope !19
  %94 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %91, i32 1
  %95 = load i64, i64* %94, align 8, !tbaa !14, !alias.scope !19
  %96 = icmp eq i64 %93, %95
  br i1 %96, label %106, label %97

97:                                               ; preds = %90
  %98 = load i64*, i64** @xoff, align 8, !tbaa !17, !noalias !19
  %99 = shl nsw i64 %93, 1
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = tail call i32 (i64*, i32, ...) bitcast (i32 (...)* @int_fetch_add to i32 (i64*, i32, ...)*)(i64* noundef %100, i32 noundef 1) #9, !noalias !19
  %102 = load i64*, i64** @xoff, align 8, !tbaa !17, !noalias !19
  %103 = shl nsw i64 %95, 1
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = tail call i32 (i64*, i32, ...) bitcast (i32 (...)* @int_fetch_add to i32 (i64*, i32, ...)*)(i64* noundef %104, i32 noundef 1) #9, !noalias !19
  br label %106

106:                                              ; preds = %97, %90
  %107 = add nuw nsw i64 %91, 1
  %108 = icmp eq i64 %107, %1
  br i1 %108, label %72, label %90, !llvm.loop !22

109:                                              ; preds = %109, %85
  %110 = phi i64 [ 0, %85 ], [ %126, %109 ]
  %111 = phi i64 [ 0, %85 ], [ %125, %109 ]
  %112 = phi i64 [ 0, %85 ], [ %127, %109 ]
  %113 = shl nuw nsw i64 %110, 1
  %114 = getelementptr inbounds i64, i64* %78, i64 %113
  %115 = load i64, i64* %114, align 8, !tbaa !8, !noalias !19
  %116 = icmp sgt i64 %115, 2
  %117 = select i1 %116, i64 %115, i64 2
  store i64 %111, i64* %114, align 8, !tbaa !8, !noalias !19
  %118 = add nuw nsw i64 %117, %111
  %119 = shl nuw i64 %110, 1
  %120 = or i64 %119, 2
  %121 = getelementptr inbounds i64, i64* %78, i64 %120
  %122 = load i64, i64* %121, align 8, !tbaa !8, !noalias !19
  %123 = icmp sgt i64 %122, 2
  %124 = select i1 %123, i64 %122, i64 2
  store i64 %118, i64* %121, align 8, !tbaa !8, !noalias !19
  %125 = add nuw nsw i64 %124, %118
  %126 = add nuw nsw i64 %110, 2
  %127 = add i64 %112, 2
  %128 = icmp eq i64 %127, %86
  br i1 %128, label %129, label %109, !llvm.loop !23

129:                                              ; preds = %109
  %130 = shl nuw i64 %126, 1
  br label %131

131:                                              ; preds = %129, %81
  %132 = phi i64 [ undef, %81 ], [ %125, %129 ]
  %133 = phi i64 [ 0, %81 ], [ %130, %129 ]
  %134 = phi i64 [ 0, %81 ], [ %125, %129 ]
  %135 = icmp eq i64 %83, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds i64, i64* %78, i64 %133
  %138 = load i64, i64* %137, align 8, !tbaa !8, !noalias !19
  %139 = icmp sgt i64 %138, 2
  %140 = select i1 %139, i64 %138, i64 2
  store i64 %134, i64* %137, align 8, !tbaa !8, !noalias !19
  %141 = add nuw nsw i64 %140, %134
  br label %142

142:                                              ; preds = %131, %136
  %143 = phi i64 [ %132, %131 ], [ %141, %136 ]
  %144 = shl nsw i64 %79, 1
  %145 = getelementptr inbounds i64, i64* %78, i64 %144
  store i64 %143, i64* %145, align 8, !tbaa !8, !noalias !19
  %146 = and i64 %79, 3
  %147 = icmp ult i64 %82, 3
  br i1 %147, label %179, label %148

148:                                              ; preds = %142
  %149 = and i64 %79, -4
  br label %150

150:                                              ; preds = %150, %148
  %151 = phi i64 [ 0, %148 ], [ %176, %150 ]
  %152 = phi i64 [ 0, %148 ], [ %177, %150 ]
  %153 = shl nuw nsw i64 %151, 1
  %154 = getelementptr inbounds i64, i64* %78, i64 %153
  %155 = load i64, i64* %154, align 8, !tbaa !8, !noalias !19
  %156 = or i64 %153, 1
  %157 = getelementptr inbounds i64, i64* %78, i64 %156
  store i64 %155, i64* %157, align 8, !tbaa !8, !noalias !19
  %158 = shl nuw i64 %151, 1
  %159 = or i64 %158, 2
  %160 = getelementptr inbounds i64, i64* %78, i64 %159
  %161 = load i64, i64* %160, align 8, !tbaa !8, !noalias !19
  %162 = or i64 %158, 3
  %163 = getelementptr inbounds i64, i64* %78, i64 %162
  store i64 %161, i64* %163, align 8, !tbaa !8, !noalias !19
  %164 = shl nuw i64 %151, 1
  %165 = or i64 %164, 4
  %166 = getelementptr inbounds i64, i64* %78, i64 %165
  %167 = load i64, i64* %166, align 8, !tbaa !8, !noalias !19
  %168 = or i64 %164, 5
  %169 = getelementptr inbounds i64, i64* %78, i64 %168
  store i64 %167, i64* %169, align 8, !tbaa !8, !noalias !19
  %170 = shl nuw i64 %151, 1
  %171 = or i64 %170, 6
  %172 = getelementptr inbounds i64, i64* %78, i64 %171
  %173 = load i64, i64* %172, align 8, !tbaa !8, !noalias !19
  %174 = or i64 %170, 7
  %175 = getelementptr inbounds i64, i64* %78, i64 %174
  store i64 %173, i64* %175, align 8, !tbaa !8, !noalias !19
  %176 = add nuw nsw i64 %151, 4
  %177 = add i64 %152, 4
  %178 = icmp eq i64 %177, %149
  br i1 %178, label %179, label %150, !llvm.loop !24

179:                                              ; preds = %150, %142
  %180 = phi i64 [ 0, %142 ], [ %176, %150 ]
  %181 = icmp eq i64 %146, 0
  br i1 %181, label %193, label %182

182:                                              ; preds = %179, %182
  %183 = phi i64 [ %190, %182 ], [ %180, %179 ]
  %184 = phi i64 [ %191, %182 ], [ 0, %179 ]
  %185 = shl nuw nsw i64 %183, 1
  %186 = getelementptr inbounds i64, i64* %78, i64 %185
  %187 = load i64, i64* %186, align 8, !tbaa !8, !noalias !19
  %188 = or i64 %185, 1
  %189 = getelementptr inbounds i64, i64* %78, i64 %188
  store i64 %187, i64* %189, align 8, !tbaa !8, !noalias !19
  %190 = add nuw nsw i64 %183, 1
  %191 = add i64 %184, 1
  %192 = icmp eq i64 %191, %146
  br i1 %192, label %193, label %182, !llvm.loop !25

193:                                              ; preds = %182, %179
  %194 = shl i64 %143, 3
  %195 = add i64 %194, 16
  br label %196

196:                                              ; preds = %193, %87
  %197 = phi i64 [ 16, %87 ], [ %195, %193 ]
  %198 = tail call noalias i8* @malloc(i64 noundef %197) #9
  store i8* %198, i8** bitcast (i64** @xadjstore to i8**), align 8, !tbaa !17, !noalias !19
  %199 = icmp eq i8* %198, null
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  tail call void @xfree_large(i8* noundef %77) #9
  br label %316

201:                                              ; preds = %196
  %202 = bitcast i8* %198 to i64*
  %203 = getelementptr inbounds i64, i64* %202, i64 2
  store i64* %203, i64** @xadj, align 8, !tbaa !17, !noalias !19
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %198, i8 -1, i64 %197, i1 false) #9, !tbaa !8, !noalias !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  br i1 %4, label %204, label %233

204:                                              ; preds = %201, %228
  %205 = phi i64 [ %229, %228 ], [ 0, %201 ]
  %206 = getelementptr inbounds %struct.packed_edge, %struct.packed_edge* %0, i64 %205, i32 0
  %207 = load i64, i64* %206, align 8, !tbaa !12, !alias.scope !27
  %208 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %205, i32 1
  %209 = load i64, i64* %208, align 8, !tbaa !14, !alias.scope !27
  %210 = icmp eq i64 %207, %209
  br i1 %210, label %228, label %211

211:                                              ; preds = %204
  %212 = load i64*, i64** @xoff, align 8, !tbaa !17, !noalias !27
  %213 = shl nsw i64 %207, 1
  %214 = or i64 %213, 1
  %215 = getelementptr inbounds i64, i64* %212, i64 %214
  %216 = tail call i32 (i64*, i32, ...) bitcast (i32 (...)* @int_fetch_add to i32 (i64*, i32, ...)*)(i64* noundef nonnull %215, i32 noundef 1) #9, !noalias !27
  %217 = sext i32 %216 to i64
  %218 = load i64*, i64** @xadj, align 8, !tbaa !17, !noalias !27
  %219 = getelementptr inbounds i64, i64* %218, i64 %217
  store i64 %209, i64* %219, align 8, !tbaa !8, !noalias !27
  %220 = load i64*, i64** @xoff, align 8, !tbaa !17, !noalias !27
  %221 = shl nsw i64 %209, 1
  %222 = or i64 %221, 1
  %223 = getelementptr inbounds i64, i64* %220, i64 %222
  %224 = tail call i32 (i64*, i32, ...) bitcast (i32 (...)* @int_fetch_add to i32 (i64*, i32, ...)*)(i64* noundef nonnull %223, i32 noundef 1) #9, !noalias !27
  %225 = sext i32 %224 to i64
  %226 = load i64*, i64** @xadj, align 8, !tbaa !17, !noalias !27
  %227 = getelementptr inbounds i64, i64* %226, i64 %225
  store i64 %207, i64* %227, align 8, !tbaa !8, !noalias !27
  br label %228

228:                                              ; preds = %211, %204
  %229 = add nuw nsw i64 %205, 1
  %230 = icmp eq i64 %229, %1
  br i1 %230, label %231, label %204, !llvm.loop !30

231:                                              ; preds = %228
  %232 = load i64, i64* @nv, align 8, !tbaa !8, !noalias !27
  br label %233

233:                                              ; preds = %231, %201
  %234 = phi i64 [ %232, %231 ], [ %79, %201 ]
  %235 = icmp sgt i64 %234, 0
  br i1 %235, label %236, label %316

236:                                              ; preds = %233
  %237 = bitcast i64* %3 to i8*
  %238 = load i64*, i64** @xoff, align 8, !tbaa !17, !noalias !27
  br label %239

239:                                              ; preds = %311, %236
  %240 = phi i64 [ %234, %236 ], [ %312, %311 ]
  %241 = phi i64* [ %238, %236 ], [ %313, %311 ]
  %242 = phi i64 [ 0, %236 ], [ %314, %311 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %237) #9, !noalias !27
  %243 = shl nuw nsw i64 %242, 1
  %244 = getelementptr inbounds i64, i64* %241, i64 %243
  %245 = load i64, i64* %244, align 8, !tbaa !8, !noalias !27
  %246 = add nsw i64 %245, 1
  %247 = or i64 %243, 1
  %248 = getelementptr inbounds i64, i64* %241, i64 %247
  %249 = load i64, i64* %248, align 8, !tbaa !8, !noalias !27
  %250 = icmp slt i64 %246, %249
  br i1 %250, label %251, label %311

251:                                              ; preds = %239
  %252 = load i64*, i64** @xadj, align 8, !tbaa !17, !noalias !27
  %253 = getelementptr inbounds i64, i64* %252, i64 %245
  %254 = bitcast i64* %253 to i8*
  %255 = sub nsw i64 %249, %245
  call void @qsort(i8* noundef %254, i64 noundef %255, i64 noundef 8, i32 (i8*, i8*)* noundef nonnull @i64cmp) #9, !noalias !27
  %256 = load i64*, i64** @xoff, align 8, !tbaa !17, !noalias !27
  %257 = getelementptr inbounds i64, i64* %256, i64 %243
  %258 = load i64, i64* %257, align 8, !tbaa !8, !noalias !27
  store i64 %258, i64* %3, align 8, !tbaa !8, !noalias !27
  %259 = load i64, i64* %257, align 8, !tbaa !8, !noalias !27
  %260 = add nsw i64 %259, 1
  %261 = getelementptr inbounds i64, i64* %256, i64 %247
  %262 = load i64, i64* %261, align 8, !tbaa !8, !noalias !27
  %263 = icmp slt i64 %260, %262
  br i1 %263, label %264, label %291

264:                                              ; preds = %251
  %265 = load i64*, i64** @xadj, align 8, !tbaa !17, !noalias !27
  br label %266

266:                                              ; preds = %283, %264
  %267 = phi i64* [ %256, %264 ], [ %284, %283 ]
  %268 = phi i64 [ %258, %264 ], [ %290, %283 ]
  %269 = phi i64* [ %265, %264 ], [ %285, %283 ]
  %270 = phi i64 [ %260, %264 ], [ %286, %283 ]
  %271 = getelementptr inbounds i64, i64* %269, i64 %270
  %272 = load i64, i64* %271, align 8, !tbaa !8, !noalias !27
  %273 = getelementptr inbounds i64, i64* %269, i64 %268
  %274 = load i64, i64* %273, align 8, !tbaa !8, !noalias !27
  %275 = icmp eq i64 %272, %274
  br i1 %275, label %283, label %276

276:                                              ; preds = %266
  %277 = call i32 (i64*, i32, ...) bitcast (i32 (...)* @int_fetch_add to i32 (i64*, i32, ...)*)(i64* noundef nonnull %3, i32 noundef 1) #9, !noalias !27
  %278 = add nsw i32 %277, 1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i64, i64* %269, i64 %279
  store i64 %272, i64* %280, align 8, !tbaa !8, !noalias !27
  %281 = load i64*, i64** @xadj, align 8, !tbaa !17, !noalias !27
  %282 = load i64*, i64** @xoff, align 8, !tbaa !17, !noalias !27
  br label %283

283:                                              ; preds = %276, %266
  %284 = phi i64* [ %267, %266 ], [ %282, %276 ]
  %285 = phi i64* [ %269, %266 ], [ %281, %276 ]
  %286 = add nsw i64 %270, 1
  %287 = getelementptr inbounds i64, i64* %284, i64 %247
  %288 = load i64, i64* %287, align 8, !tbaa !8, !noalias !27
  %289 = icmp slt i64 %286, %288
  %290 = load i64, i64* %3, align 8, !tbaa !8
  br i1 %289, label %266, label %291, !llvm.loop !31

291:                                              ; preds = %283, %251
  %292 = phi i64 [ %258, %251 ], [ %290, %283 ]
  %293 = phi i64* [ %256, %251 ], [ %284, %283 ]
  %294 = getelementptr inbounds i64, i64* %293, i64 %247
  %295 = add nsw i64 %292, 1
  store i64 %295, i64* %3, align 8, !tbaa !8, !noalias !27
  %296 = load i64, i64* %294, align 8, !tbaa !8, !noalias !27
  %297 = icmp slt i64 %295, %296
  br i1 %297, label %298, label %308

298:                                              ; preds = %291
  %299 = load i64*, i64** @xadj, align 8, !tbaa !17, !noalias !27
  br label %300

300:                                              ; preds = %300, %298
  %301 = phi i64 [ %295, %298 ], [ %303, %300 ]
  %302 = getelementptr inbounds i64, i64* %299, i64 %301
  store i64 -1, i64* %302, align 8, !tbaa !8, !noalias !27
  %303 = add nsw i64 %301, 1
  %304 = load i64, i64* %294, align 8, !tbaa !8, !noalias !27
  %305 = icmp slt i64 %303, %304
  br i1 %305, label %300, label %306, !llvm.loop !32

306:                                              ; preds = %300
  %307 = load i64, i64* %3, align 8, !tbaa !8, !noalias !27
  br label %308

308:                                              ; preds = %306, %291
  %309 = phi i64 [ %307, %306 ], [ %295, %291 ]
  store i64 %309, i64* %294, align 8, !tbaa !8, !noalias !27
  %310 = load i64, i64* @nv, align 8, !tbaa !8, !noalias !27
  br label %311

311:                                              ; preds = %308, %239
  %312 = phi i64 [ %310, %308 ], [ %240, %239 ]
  %313 = phi i64* [ %293, %308 ], [ %241, %239 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %237) #9, !noalias !27
  %314 = add nuw nsw i64 %242, 1
  %315 = icmp slt i64 %314, %312
  br i1 %315, label %239, label %316, !llvm.loop !33

316:                                              ; preds = %311, %233, %48, %200
  %317 = phi i32 [ -1, %200 ], [ -1, %48 ], [ 0, %233 ], [ 0, %311 ]
  ret i32 %317
}

declare void @xfree_large(i8* noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @make_bfs_tree(i64* noundef %0, i64* nocapture noundef writeonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = bitcast i64* %0 to i8*
  %5 = alloca i64, align 8
  %6 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9
  %7 = load i64, i64* @maxvtx, align 8, !tbaa !8
  store i64 %7, i64* %1, align 8, !tbaa !8
  %8 = load i64, i64* @nv, align 8, !tbaa !8
  %9 = shl i64 %8, 3
  %10 = tail call i8* @xmalloc_large(i64 noundef %9) #9
  %11 = bitcast i8* %10 to i64*
  %12 = icmp eq i8* %10, null
  br i1 %12, label %71, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* @nv, align 8, !tbaa !8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = shl nuw i64 %14, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 -1, i64 %17, i1 false), !tbaa !8
  br label %18

18:                                               ; preds = %13, %16
  store i64 %2, i64* %11, align 8, !tbaa !8
  %19 = getelementptr inbounds i64, i64* %0, i64 %2
  store i64 %2, i64* %19, align 8, !tbaa !8
  store i64 1, i64* %5, align 8, !tbaa !8
  br label %25

20:                                               ; preds = %67
  %21 = load i64, i64* %5, align 8, !tbaa !8
  br label %22

22:                                               ; preds = %20, %25
  %23 = phi i64 [ %21, %20 ], [ %26, %25 ]
  %24 = icmp eq i64 %26, %23
  br i1 %24, label %70, label %25, !llvm.loop !34

25:                                               ; preds = %18, %22
  %26 = phi i64 [ %23, %22 ], [ 1, %18 ]
  %27 = phi i64 [ %26, %22 ], [ 0, %18 ]
  %28 = icmp slt i64 %27, %26
  br i1 %28, label %29, label %22

29:                                               ; preds = %25, %67
  %30 = phi i64 [ %68, %67 ], [ %27, %25 ]
  %31 = getelementptr inbounds i64, i64* %11, i64 %30
  %32 = load i64, i64* %31, align 8, !tbaa !8
  %33 = load i64*, i64** @xoff, align 8, !tbaa !17
  %34 = shl nsw i64 %32, 1
  %35 = or i64 %34, 1
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8, !tbaa !8
  %38 = getelementptr inbounds i64, i64* %33, i64 %34
  %39 = load i64, i64* %38, align 8, !tbaa !8
  %40 = icmp slt i64 %39, %37
  br i1 %40, label %41, label %67

41:                                               ; preds = %29
  %42 = load i64*, i64** @xadj, align 8, !tbaa !17
  br label %43

43:                                               ; preds = %41, %63
  %44 = phi i64* [ %64, %63 ], [ %42, %41 ]
  %45 = phi i64 [ %65, %63 ], [ %39, %41 ]
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8, !tbaa !8
  %48 = getelementptr inbounds i64, i64* %0, i64 %47
  %49 = load i64, i64* %48, align 8, !tbaa !8
  %50 = icmp eq i64 %49, -1
  br i1 %50, label %51, label %63

51:                                               ; preds = %43
  %52 = call i32 (i64*, ...) bitcast (i32 (...)* @readfe to i32 (i64*, ...)*)(i64* noundef nonnull %48) #9
  %53 = sext i32 %52 to i64
  %54 = icmp eq i32 %52, -1
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = call i32 (i64*, i32, ...) bitcast (i32 (...)* @int_fetch_add to i32 (i64*, i32, ...)*)(i64* noundef nonnull %5, i32 noundef 1) #9
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %11, i64 %57
  store i64 %47, i64* %58, align 8, !tbaa !8
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i64 [ %32, %55 ], [ %53, %51 ]
  %61 = call i32 (i64*, i64, ...) bitcast (i32 (...)* @writeef to i32 (i64*, i64, ...)*)(i64* noundef nonnull %48, i64 noundef %60) #9
  %62 = load i64*, i64** @xadj, align 8, !tbaa !17
  br label %63

63:                                               ; preds = %59, %43
  %64 = phi i64* [ %62, %59 ], [ %44, %43 ]
  %65 = add i64 %45, 1
  %66 = icmp eq i64 %65, %37
  br i1 %66, label %67, label %43, !llvm.loop !35

67:                                               ; preds = %63, %29
  %68 = add i64 %30, 1
  %69 = icmp eq i64 %68, %26
  br i1 %69, label %20, label %29, !llvm.loop !36

70:                                               ; preds = %22
  call void @xfree_large(i8* noundef nonnull %10) #9
  br label %71

71:                                               ; preds = %3, %70
  %72 = phi i32 [ 0, %70 ], [ -1, %3 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9
  ret i32 %72
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @xmalloc_large(i64 noundef) local_unnamed_addr #1

declare i32 @readfe(...) local_unnamed_addr #1

declare i32 @int_fetch_add(...) local_unnamed_addr #1

declare i32 @writeef(...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @destroy_graph() local_unnamed_addr #0 {
  %1 = load i8*, i8** bitcast (i64** @xadjstore to i8**), align 8, !tbaa !17
  tail call void @xfree_large(i8* noundef %1) #9
  %2 = load i8*, i8** bitcast (i64** @xoff to i8**), align 8, !tbaa !17
  tail call void @xfree_large(i8* noundef %2) #9
  ret void
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @i64cmp(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) #5 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !8
  %5 = bitcast i8* %1 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !8
  %7 = icmp slt i64 %4, %6
  %8 = icmp sgt i64 %4, %6
  %9 = zext i1 %8 to i32
  %10 = select i1 %7, i32 -1, i32 %9
  ret i32 %10
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"find_nv: argument 0"}
!7 = distinct !{!7, !"find_nv"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !9, i64 0}
!13 = !{!"packed_edge", !9, i64 0, !9, i64 8}
!14 = !{!13, !9, i64 8}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !10, i64 0}
!19 = !{!20}
!20 = distinct !{!20, !21, !"setup_deg_off: argument 0"}
!21 = distinct !{!21, !"setup_deg_off"}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"gather_edges: argument 0"}
!29 = distinct !{!29, !"gather_edges"}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !16}
