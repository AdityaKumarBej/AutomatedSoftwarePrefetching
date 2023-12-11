; ModuleID = 'seq-csr/seq-csr.c'
source_filename = "seq-csr/seq-csr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.packed_edge = type { i64, i64 }

@xoff = internal unnamed_addr global i64* null, align 8
@maxvtx = internal unnamed_addr global i64 0, align 8
@nv = internal unnamed_addr global i64 0, align 8
@xadj = internal unnamed_addr global i64* null, align 8
@xadjstore = internal unnamed_addr global i64* null, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @create_graph_from_edgelist(%struct.packed_edge* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  store i64 -1, i64* @maxvtx, align 8, !tbaa !8, !noalias !5
  %3 = icmp sgt i64 %1, 0
  br i1 %3, label %4, label %57

4:                                                ; preds = %2
  %5 = and i64 %1, 1
  %6 = icmp eq i64 %1, 1
  br i1 %6, label %41, label %7

7:                                                ; preds = %4
  %8 = and i64 %1, -2
  br label %9

9:                                                ; preds = %36, %7
  %10 = phi i64 [ 0, %7 ], [ %38, %36 ]
  %11 = phi i64 [ -1, %7 ], [ %37, %36 ]
  %12 = phi i64 [ 0, %7 ], [ %39, %36 ]
  %13 = getelementptr inbounds %struct.packed_edge, %struct.packed_edge* %0, i64 %10, i32 0
  %14 = load i64, i64* %13, align 8, !tbaa !12, !alias.scope !5
  %15 = icmp sgt i64 %14, %11
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i64 %14, i64* @maxvtx, align 8, !tbaa !8, !noalias !5
  br label %17

17:                                               ; preds = %16, %9
  %18 = phi i64 [ %14, %16 ], [ %11, %9 ]
  %19 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %10, i32 1
  %20 = load i64, i64* %19, align 8, !tbaa !14, !alias.scope !5
  %21 = icmp sgt i64 %20, %18
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i64 %20, i64* @maxvtx, align 8, !tbaa !8, !noalias !5
  br label %23

23:                                               ; preds = %22, %17
  %24 = phi i64 [ %18, %17 ], [ %20, %22 ]
  %25 = or i64 %10, 1
  %26 = getelementptr inbounds %struct.packed_edge, %struct.packed_edge* %0, i64 %25, i32 0
  %27 = load i64, i64* %26, align 8, !tbaa !12, !alias.scope !5
  %28 = icmp sgt i64 %27, %24
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i64 %27, i64* @maxvtx, align 8, !tbaa !8, !noalias !5
  br label %30

30:                                               ; preds = %29, %23
  %31 = phi i64 [ %27, %29 ], [ %24, %23 ]
  %32 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %25, i32 1
  %33 = load i64, i64* %32, align 8, !tbaa !14, !alias.scope !5
  %34 = icmp sgt i64 %33, %31
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i64 %33, i64* @maxvtx, align 8, !tbaa !8, !noalias !5
  br label %36

36:                                               ; preds = %35, %30
  %37 = phi i64 [ %31, %30 ], [ %33, %35 ]
  %38 = add nuw nsw i64 %10, 2
  %39 = add i64 %12, 2
  %40 = icmp eq i64 %39, %8
  br i1 %40, label %41, label %9, !llvm.loop !15

41:                                               ; preds = %36, %4
  %42 = phi i64 [ undef, %4 ], [ %37, %36 ]
  %43 = phi i64 [ 0, %4 ], [ %38, %36 ]
  %44 = phi i64 [ -1, %4 ], [ %37, %36 ]
  %45 = icmp eq i64 %5, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.packed_edge, %struct.packed_edge* %0, i64 %43, i32 0
  %48 = load i64, i64* %47, align 8, !tbaa !12, !alias.scope !5
  %49 = icmp sgt i64 %48, %44
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i64 %48, i64* @maxvtx, align 8, !tbaa !8, !noalias !5
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i64 [ %48, %50 ], [ %44, %46 ]
  %53 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %43, i32 1
  %54 = load i64, i64* %53, align 8, !tbaa !14, !alias.scope !5
  %55 = icmp sgt i64 %54, %52
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i64 %54, i64* @maxvtx, align 8, !tbaa !8, !noalias !5
  br label %57

57:                                               ; preds = %41, %56, %51, %2
  %58 = phi i64 [ -1, %2 ], [ %42, %41 ], [ %52, %51 ], [ %54, %56 ]
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* @nv, align 8, !tbaa !8, !noalias !5
  %60 = shl i64 %59, 4
  %61 = add i64 %60, 16
  %62 = tail call i8* @xmalloc_large_ext(i64 noundef %61) #7
  store i8* %62, i8** bitcast (i64** @xoff to i8**), align 8, !tbaa !17
  %63 = icmp eq i8* %62, null
  %64 = bitcast i8* %62 to i64*
  br i1 %63, label %303, label %65

65:                                               ; preds = %57
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %66 = load i64, i64* @nv, align 8, !tbaa !8, !noalias !19
  %67 = shl i64 %66, 1
  %68 = icmp sgt i64 %66, -1
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = or i64 %67, 1
  %71 = tail call i64 @llvm.smax.i64(i64 %70, i64 0) #7
  %72 = shl i64 %71, 3
  %73 = add i64 %72, 8
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %62, i8 0, i64 %73, i1 false) #7, !tbaa !8, !noalias !19
  br label %74

74:                                               ; preds = %69, %65
  br i1 %3, label %85, label %75

75:                                               ; preds = %106, %74
  %76 = icmp sgt i64 %66, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %75
  %78 = add i64 %66, -1
  %79 = and i64 %66, 1
  %80 = icmp eq i64 %78, 0
  br i1 %80, label %131, label %81

81:                                               ; preds = %77
  %82 = and i64 %66, -2
  br label %109

83:                                               ; preds = %75
  %84 = getelementptr inbounds i64, i64* %64, i64 %67
  store i64 0, i64* %84, align 8, !tbaa !8, !noalias !19
  br label %195

85:                                               ; preds = %74, %106
  %86 = phi i64 [ %107, %106 ], [ 0, %74 ]
  %87 = getelementptr inbounds %struct.packed_edge, %struct.packed_edge* %0, i64 %86, i32 0
  %88 = load i64, i64* %87, align 8, !tbaa !12, !alias.scope !19
  %89 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %86, i32 1
  %90 = load i64, i64* %89, align 8, !tbaa !14, !alias.scope !19
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %106, label %92

92:                                               ; preds = %85
  %93 = icmp sgt i64 %88, -1
  br i1 %93, label %94, label %99

94:                                               ; preds = %92
  %95 = shl nuw nsw i64 %88, 1
  %96 = getelementptr inbounds i64, i64* %64, i64 %95
  %97 = load i64, i64* %96, align 8, !tbaa !8, !noalias !19
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %96, align 8, !tbaa !8, !noalias !19
  br label %99

99:                                               ; preds = %94, %92
  %100 = icmp sgt i64 %90, -1
  br i1 %100, label %101, label %106

101:                                              ; preds = %99
  %102 = shl nuw nsw i64 %90, 1
  %103 = getelementptr inbounds i64, i64* %64, i64 %102
  %104 = load i64, i64* %103, align 8, !tbaa !8, !noalias !19
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %103, align 8, !tbaa !8, !noalias !19
  br label %106

106:                                              ; preds = %101, %99, %85
  %107 = add nuw nsw i64 %86, 1
  %108 = icmp eq i64 %107, %1
  br i1 %108, label %75, label %85, !llvm.loop !22

109:                                              ; preds = %109, %81
  %110 = phi i64 [ 0, %81 ], [ %126, %109 ]
  %111 = phi i64 [ 0, %81 ], [ %125, %109 ]
  %112 = phi i64 [ 0, %81 ], [ %127, %109 ]
  %113 = shl nuw nsw i64 %110, 1
  %114 = getelementptr inbounds i64, i64* %64, i64 %113
  %115 = load i64, i64* %114, align 8, !tbaa !8, !noalias !19
  %116 = icmp sgt i64 %115, 2
  %117 = select i1 %116, i64 %115, i64 2
  store i64 %111, i64* %114, align 8, !tbaa !8, !noalias !19
  %118 = add nuw nsw i64 %117, %111
  %119 = shl nuw i64 %110, 1
  %120 = or i64 %119, 2
  %121 = getelementptr inbounds i64, i64* %64, i64 %120
  %122 = load i64, i64* %121, align 8, !tbaa !8, !noalias !19
  %123 = icmp sgt i64 %122, 2
  %124 = select i1 %123, i64 %122, i64 2
  store i64 %118, i64* %121, align 8, !tbaa !8, !noalias !19
  %125 = add nuw nsw i64 %124, %118
  %126 = add nuw nsw i64 %110, 2
  %127 = add i64 %112, 2
  %128 = icmp eq i64 %127, %82
  br i1 %128, label %129, label %109, !llvm.loop !23

129:                                              ; preds = %109
  %130 = shl nuw i64 %126, 1
  br label %131

131:                                              ; preds = %129, %77
  %132 = phi i64 [ undef, %77 ], [ %125, %129 ]
  %133 = phi i64 [ 0, %77 ], [ %130, %129 ]
  %134 = phi i64 [ 0, %77 ], [ %125, %129 ]
  %135 = icmp eq i64 %79, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds i64, i64* %64, i64 %133
  %138 = load i64, i64* %137, align 8, !tbaa !8, !noalias !19
  %139 = icmp sgt i64 %138, 2
  %140 = select i1 %139, i64 %138, i64 2
  store i64 %134, i64* %137, align 8, !tbaa !8, !noalias !19
  %141 = add nuw nsw i64 %140, %134
  br label %142

142:                                              ; preds = %131, %136
  %143 = phi i64 [ %132, %131 ], [ %141, %136 ]
  %144 = getelementptr inbounds i64, i64* %64, i64 %67
  store i64 %143, i64* %144, align 8, !tbaa !8, !noalias !19
  %145 = and i64 %66, 3
  %146 = icmp ult i64 %78, 3
  br i1 %146, label %178, label %147

147:                                              ; preds = %142
  %148 = and i64 %66, -4
  br label %149

149:                                              ; preds = %149, %147
  %150 = phi i64 [ 0, %147 ], [ %175, %149 ]
  %151 = phi i64 [ 0, %147 ], [ %176, %149 ]
  %152 = shl nuw nsw i64 %150, 1
  %153 = getelementptr inbounds i64, i64* %64, i64 %152
  %154 = load i64, i64* %153, align 8, !tbaa !8, !noalias !19
  %155 = or i64 %152, 1
  %156 = getelementptr inbounds i64, i64* %64, i64 %155
  store i64 %154, i64* %156, align 8, !tbaa !8, !noalias !19
  %157 = shl nuw i64 %150, 1
  %158 = or i64 %157, 2
  %159 = getelementptr inbounds i64, i64* %64, i64 %158
  %160 = load i64, i64* %159, align 8, !tbaa !8, !noalias !19
  %161 = or i64 %157, 3
  %162 = getelementptr inbounds i64, i64* %64, i64 %161
  store i64 %160, i64* %162, align 8, !tbaa !8, !noalias !19
  %163 = shl nuw i64 %150, 1
  %164 = or i64 %163, 4
  %165 = getelementptr inbounds i64, i64* %64, i64 %164
  %166 = load i64, i64* %165, align 8, !tbaa !8, !noalias !19
  %167 = or i64 %163, 5
  %168 = getelementptr inbounds i64, i64* %64, i64 %167
  store i64 %166, i64* %168, align 8, !tbaa !8, !noalias !19
  %169 = shl nuw i64 %150, 1
  %170 = or i64 %169, 6
  %171 = getelementptr inbounds i64, i64* %64, i64 %170
  %172 = load i64, i64* %171, align 8, !tbaa !8, !noalias !19
  %173 = or i64 %169, 7
  %174 = getelementptr inbounds i64, i64* %64, i64 %173
  store i64 %172, i64* %174, align 8, !tbaa !8, !noalias !19
  %175 = add nuw nsw i64 %150, 4
  %176 = add i64 %151, 4
  %177 = icmp eq i64 %176, %148
  br i1 %177, label %178, label %149, !llvm.loop !24

178:                                              ; preds = %149, %142
  %179 = phi i64 [ 0, %142 ], [ %175, %149 ]
  %180 = icmp eq i64 %145, 0
  br i1 %180, label %192, label %181

181:                                              ; preds = %178, %181
  %182 = phi i64 [ %189, %181 ], [ %179, %178 ]
  %183 = phi i64 [ %190, %181 ], [ 0, %178 ]
  %184 = shl nuw nsw i64 %182, 1
  %185 = getelementptr inbounds i64, i64* %64, i64 %184
  %186 = load i64, i64* %185, align 8, !tbaa !8, !noalias !19
  %187 = or i64 %184, 1
  %188 = getelementptr inbounds i64, i64* %64, i64 %187
  store i64 %186, i64* %188, align 8, !tbaa !8, !noalias !19
  %189 = add nuw nsw i64 %182, 1
  %190 = add i64 %183, 1
  %191 = icmp eq i64 %190, %145
  br i1 %191, label %192, label %181, !llvm.loop !25

192:                                              ; preds = %181, %178
  %193 = shl i64 %143, 3
  %194 = add i64 %193, 16
  br label %195

195:                                              ; preds = %192, %83
  %196 = phi i64 [ 16, %83 ], [ %194, %192 ]
  %197 = tail call i8* @xmalloc_large_ext(i64 noundef %196) #7, !noalias !19
  store i8* %197, i8** bitcast (i64** @xadjstore to i8**), align 8, !tbaa !17, !noalias !19
  %198 = icmp eq i8* %197, null
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = load i8*, i8** bitcast (i64** @xoff to i8**), align 8, !tbaa !17
  tail call void @xfree_large(i8* noundef %200) #7
  br label %303

201:                                              ; preds = %195
  %202 = getelementptr inbounds i8, i8* %197, i64 16
  store i8* %202, i8** bitcast (i64** @xadj to i8**), align 8, !tbaa !17, !noalias !19
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %197, i8 -1, i64 %196, i1 false) #7, !tbaa !8, !noalias !19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %203 = bitcast i8* %202 to i64*
  br i1 %3, label %204, label %233

204:                                              ; preds = %201
  %205 = load i64*, i64** @xoff, align 8, !noalias !27
  br label %206

206:                                              ; preds = %230, %204
  %207 = phi i64 [ 0, %204 ], [ %231, %230 ]
  %208 = getelementptr inbounds %struct.packed_edge, %struct.packed_edge* %0, i64 %207, i32 0
  %209 = load i64, i64* %208, align 8, !tbaa !12, !alias.scope !27
  %210 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %207, i32 1
  %211 = load i64, i64* %210, align 8, !tbaa !14, !alias.scope !27
  %212 = icmp slt i64 %209, 0
  %213 = icmp slt i64 %211, 0
  %214 = select i1 %212, i1 true, i1 %213
  %215 = icmp eq i64 %209, %211
  %216 = select i1 %214, i1 true, i1 %215
  br i1 %216, label %230, label %217

217:                                              ; preds = %206
  %218 = shl nuw nsw i64 %209, 1
  %219 = or i64 %218, 1
  %220 = getelementptr inbounds i64, i64* %205, i64 %219
  %221 = load i64, i64* %220, align 8, !tbaa !8, !noalias !27
  %222 = add nsw i64 %221, 1
  store i64 %222, i64* %220, align 8, !tbaa !8, !noalias !27
  %223 = getelementptr inbounds i64, i64* %203, i64 %221
  store i64 %211, i64* %223, align 8, !tbaa !8, !noalias !27
  %224 = shl nuw nsw i64 %211, 1
  %225 = or i64 %224, 1
  %226 = getelementptr inbounds i64, i64* %205, i64 %225
  %227 = load i64, i64* %226, align 8, !tbaa !8, !noalias !27
  %228 = add nsw i64 %227, 1
  store i64 %228, i64* %226, align 8, !tbaa !8, !noalias !27
  %229 = getelementptr inbounds i64, i64* %203, i64 %227
  store i64 %209, i64* %229, align 8, !tbaa !8, !noalias !27
  br label %230

230:                                              ; preds = %217, %206
  %231 = add nuw nsw i64 %207, 1
  %232 = icmp eq i64 %231, %1
  br i1 %232, label %233, label %206, !llvm.loop !30

233:                                              ; preds = %230, %201
  %234 = load i64, i64* @nv, align 8, !tbaa !8, !noalias !27
  %235 = icmp sgt i64 %234, 0
  br i1 %235, label %236, label %303

236:                                              ; preds = %233
  %237 = load i64*, i64** @xoff, align 8, !tbaa !17, !noalias !27
  br label %238

238:                                              ; preds = %298, %236
  %239 = phi i64 [ %299, %298 ], [ %234, %236 ]
  %240 = phi i64* [ %300, %298 ], [ %237, %236 ]
  %241 = phi i64 [ %301, %298 ], [ 0, %236 ]
  %242 = shl nuw nsw i64 %241, 1
  %243 = getelementptr inbounds i64, i64* %240, i64 %242
  %244 = load i64, i64* %243, align 8, !tbaa !8, !noalias !27
  %245 = add nsw i64 %244, 1
  %246 = or i64 %242, 1
  %247 = getelementptr inbounds i64, i64* %240, i64 %246
  %248 = load i64, i64* %247, align 8, !tbaa !8, !noalias !27
  %249 = icmp slt i64 %245, %248
  br i1 %249, label %250, label %298

250:                                              ; preds = %238
  %251 = load i64*, i64** @xadj, align 8, !tbaa !17, !noalias !27
  %252 = getelementptr inbounds i64, i64* %251, i64 %244
  %253 = bitcast i64* %252 to i8*
  %254 = sub nsw i64 %248, %244
  tail call void @qsort(i8* noundef %253, i64 noundef %254, i64 noundef 8, i32 (i8*, i8*)* noundef nonnull @i64cmp) #7, !noalias !27
  %255 = load i64*, i64** @xoff, align 8, !tbaa !17, !noalias !27
  %256 = getelementptr inbounds i64, i64* %255, i64 %242
  %257 = load i64, i64* %256, align 8, !tbaa !8, !noalias !27
  %258 = getelementptr inbounds i64, i64* %255, i64 %246
  %259 = add nsw i64 %257, 1
  %260 = load i64, i64* %258, align 8, !tbaa !8, !noalias !27
  %261 = icmp slt i64 %259, %260
  br i1 %261, label %262, label %284

262:                                              ; preds = %250
  %263 = load i64*, i64** @xadj, align 8, !tbaa !17, !noalias !27
  br label %264

264:                                              ; preds = %277, %262
  %265 = phi i64 [ %260, %262 ], [ %278, %277 ]
  %266 = phi i64 [ %259, %262 ], [ %280, %277 ]
  %267 = phi i64 [ %257, %262 ], [ %279, %277 ]
  %268 = getelementptr inbounds i64, i64* %263, i64 %266
  %269 = load i64, i64* %268, align 8, !tbaa !8, !noalias !27
  %270 = getelementptr inbounds i64, i64* %263, i64 %267
  %271 = load i64, i64* %270, align 8, !tbaa !8, !noalias !27
  %272 = icmp eq i64 %269, %271
  br i1 %272, label %277, label %273

273:                                              ; preds = %264
  %274 = add nsw i64 %267, 1
  %275 = getelementptr inbounds i64, i64* %263, i64 %274
  store i64 %269, i64* %275, align 8, !tbaa !8, !noalias !27
  %276 = load i64, i64* %258, align 8, !tbaa !8, !noalias !27
  br label %277

277:                                              ; preds = %273, %264
  %278 = phi i64 [ %276, %273 ], [ %265, %264 ]
  %279 = phi i64 [ %274, %273 ], [ %267, %264 ]
  %280 = add nsw i64 %266, 1
  %281 = icmp slt i64 %280, %278
  br i1 %281, label %264, label %282, !llvm.loop !31

282:                                              ; preds = %277
  %283 = add nsw i64 %279, 1
  br label %284

284:                                              ; preds = %282, %250
  %285 = phi i64 [ %283, %282 ], [ %259, %250 ]
  %286 = phi i64 [ %278, %282 ], [ %260, %250 ]
  %287 = icmp slt i64 %285, %286
  br i1 %287, label %288, label %296

288:                                              ; preds = %284
  %289 = load i64*, i64** @xadj, align 8, !tbaa !17, !noalias !27
  br label %290

290:                                              ; preds = %290, %288
  %291 = phi i64 [ %285, %288 ], [ %293, %290 ]
  %292 = getelementptr inbounds i64, i64* %289, i64 %291
  store i64 -1, i64* %292, align 8, !tbaa !8, !noalias !27
  %293 = add nsw i64 %291, 1
  %294 = load i64, i64* %258, align 8, !tbaa !8, !noalias !27
  %295 = icmp slt i64 %293, %294
  br i1 %295, label %290, label %296, !llvm.loop !32

296:                                              ; preds = %290, %284
  store i64 %285, i64* %258, align 8, !tbaa !8, !noalias !27
  %297 = load i64, i64* @nv, align 8, !tbaa !8, !noalias !27
  br label %298

298:                                              ; preds = %296, %238
  %299 = phi i64 [ %239, %238 ], [ %297, %296 ]
  %300 = phi i64* [ %240, %238 ], [ %255, %296 ]
  %301 = add nuw nsw i64 %241, 1
  %302 = icmp slt i64 %301, %299
  br i1 %302, label %238, label %303, !llvm.loop !33

303:                                              ; preds = %298, %233, %57, %199
  %304 = phi i32 [ -1, %199 ], [ -1, %57 ], [ 0, %233 ], [ 0, %298 ]
  ret i32 %304
}

declare void @xfree_large(i8* noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @make_bfs_tree(i64* nocapture noundef %0, i64* nocapture noundef writeonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = bitcast i64* %0 to i8*
  %5 = load i64, i64* @maxvtx, align 8, !tbaa !8
  store i64 %5, i64* %1, align 8, !tbaa !8
  %6 = load i64, i64* @nv, align 8, !tbaa !8
  %7 = shl i64 %6, 3
  %8 = tail call i8* @xmalloc_large(i64 noundef %7) #7
  %9 = bitcast i8* %8 to i64*
  %10 = icmp eq i8* %8, null
  br i1 %10, label %92, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* @nv, align 8, !tbaa !8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = shl nuw i64 %12, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 -1, i64 %15, i1 false), !tbaa !8
  br label %16

16:                                               ; preds = %14, %11
  store i64 %2, i64* %9, align 8, !tbaa !8
  %17 = getelementptr inbounds i64, i64* %0, i64 %2
  store i64 %2, i64* %17, align 8, !tbaa !8
  %18 = load i64*, i64** @xoff, align 8
  %19 = load i64*, i64** @xadj, align 8
  br label %23

20:                                               ; preds = %87, %23
  %21 = phi i64 [ %25, %23 ], [ %88, %87 ]
  %22 = icmp eq i64 %25, %21
  br i1 %22, label %91, label %23, !llvm.loop !34

23:                                               ; preds = %16, %20
  %24 = phi i64 [ 0, %16 ], [ %25, %20 ]
  %25 = phi i64 [ 1, %16 ], [ %21, %20 ]
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %20

27:                                               ; preds = %23, %87
  %28 = phi i64 [ %89, %87 ], [ %24, %23 ]
  %29 = phi i64 [ %88, %87 ], [ %25, %23 ]
  %30 = getelementptr inbounds i64, i64* %9, i64 %28
  %31 = load i64, i64* %30, align 8, !tbaa !8
  %32 = shl nsw i64 %31, 1
  %33 = or i64 %32, 1
  %34 = getelementptr inbounds i64, i64* %18, i64 %33
  %35 = load i64, i64* %34, align 8, !tbaa !8
  %36 = getelementptr inbounds i64, i64* %18, i64 %32
  %37 = load i64, i64* %36, align 8, !tbaa !8
  %38 = icmp sgt i64 %35, %37
  br i1 %38, label %39, label %87

39:                                               ; preds = %27
  %40 = sub i64 %35, %37
  %41 = add i64 %37, 1
  %42 = and i64 %40, 1
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds i64, i64* %19, i64 %37
  %46 = load i64, i64* %45, align 8, !tbaa !8
  %47 = getelementptr inbounds i64, i64* %0, i64 %46
  %48 = load i64, i64* %47, align 8, !tbaa !8
  %49 = icmp eq i64 %48, -1
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  store i64 %31, i64* %47, align 8, !tbaa !8
  %51 = add nsw i64 %29, 1
  %52 = getelementptr inbounds i64, i64* %9, i64 %29
  store i64 %46, i64* %52, align 8, !tbaa !8
  br label %53

53:                                               ; preds = %50, %44
  %54 = phi i64 [ %51, %50 ], [ %29, %44 ]
  %55 = add nsw i64 %37, 1
  br label %56

56:                                               ; preds = %53, %39
  %57 = phi i64 [ undef, %39 ], [ %54, %53 ]
  %58 = phi i64 [ %37, %39 ], [ %55, %53 ]
  %59 = phi i64 [ %29, %39 ], [ %54, %53 ]
  %60 = icmp eq i64 %35, %41
  br i1 %60, label %87, label %61

61:                                               ; preds = %56, %83
  %62 = phi i64 [ %85, %83 ], [ %58, %56 ]
  %63 = phi i64 [ %84, %83 ], [ %59, %56 ]
  %64 = getelementptr inbounds i64, i64* %19, i64 %62
  %65 = load i64, i64* %64, align 8, !tbaa !8
  %66 = getelementptr inbounds i64, i64* %0, i64 %65
  %67 = load i64, i64* %66, align 8, !tbaa !8
  %68 = icmp eq i64 %67, -1
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  store i64 %31, i64* %66, align 8, !tbaa !8
  %70 = add nsw i64 %63, 1
  %71 = getelementptr inbounds i64, i64* %9, i64 %63
  store i64 %65, i64* %71, align 8, !tbaa !8
  br label %72

72:                                               ; preds = %69, %61
  %73 = phi i64 [ %70, %69 ], [ %63, %61 ]
  %74 = add nsw i64 %62, 1
  %75 = getelementptr inbounds i64, i64* %19, i64 %74
  %76 = load i64, i64* %75, align 8, !tbaa !8
  %77 = getelementptr inbounds i64, i64* %0, i64 %76
  %78 = load i64, i64* %77, align 8, !tbaa !8
  %79 = icmp eq i64 %78, -1
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  store i64 %31, i64* %77, align 8, !tbaa !8
  %81 = add nsw i64 %73, 1
  %82 = getelementptr inbounds i64, i64* %9, i64 %73
  store i64 %76, i64* %82, align 8, !tbaa !8
  br label %83

83:                                               ; preds = %80, %72
  %84 = phi i64 [ %81, %80 ], [ %73, %72 ]
  %85 = add nsw i64 %62, 2
  %86 = icmp eq i64 %85, %35
  br i1 %86, label %87, label %61, !llvm.loop !35

87:                                               ; preds = %56, %83, %27
  %88 = phi i64 [ %29, %27 ], [ %57, %56 ], [ %84, %83 ]
  %89 = add nsw i64 %28, 1
  %90 = icmp eq i64 %89, %25
  br i1 %90, label %20, label %27, !llvm.loop !36

91:                                               ; preds = %20
  tail call void @xfree_large(i8* noundef nonnull %8) #7
  br label %92

92:                                               ; preds = %3, %91
  %93 = phi i32 [ 0, %91 ], [ -1, %3 ]
  ret i32 %93
}

declare i8* @xmalloc_large(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @destroy_graph() local_unnamed_addr #0 {
  %1 = load i8*, i8** bitcast (i64** @xadjstore to i8**), align 8, !tbaa !17
  tail call void @xfree_large(i8* noundef %1) #7
  %2 = load i8*, i8** bitcast (i64** @xoff to i8**), align 8, !tbaa !17
  tail call void @xfree_large(i8* noundef %2) #7
  ret void
}

declare i8* @xmalloc_large_ext(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @i64cmp(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) #3 {
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
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #7 = { nounwind }

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
