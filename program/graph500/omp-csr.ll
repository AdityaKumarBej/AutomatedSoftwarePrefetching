; ModuleID = 'omp-csr/omp-csr.c'
source_filename = "omp-csr/omp-csr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.packed_edge = type { i64, i64 }

@xoff = internal unnamed_addr global i64* null, align 8
@maxvtx = internal unnamed_addr global i64 0, align 8
@nv = internal unnamed_addr global i64 0, align 8
@xadj = internal unnamed_addr global i64* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"voff + THREAD_BUF_LEN <= nv\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"omp-csr/omp-csr.c\00", align 1
@__PRETTY_FUNCTION__.make_bfs_tree = private unnamed_addr constant [49 x i8] c"int make_bfs_tree(int64_t *, int64_t *, int64_t)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"voff + kbuf <= nv\00", align 1
@xadjstore = internal unnamed_addr global i64* null, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @create_graph_from_edgelist(%struct.packed_edge* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  store i64 -1, i64* @maxvtx, align 8, !tbaa !8, !noalias !5
  %3 = icmp sgt i64 %1, 0
  br i1 %3, label %4, label %58

4:                                                ; preds = %2
  %5 = and i64 %1, 1
  %6 = icmp eq i64 %1, 1
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = and i64 %1, -2
  br label %26

9:                                                ; preds = %26, %4
  %10 = phi i64 [ undef, %4 ], [ %46, %26 ]
  %11 = phi i64 [ -1, %4 ], [ %46, %26 ]
  %12 = phi i64 [ 0, %4 ], [ %47, %26 ]
  %13 = icmp eq i64 %5, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.packed_edge, %struct.packed_edge* %0, i64 %12, i32 0
  %16 = load i64, i64* %15, align 8, !tbaa !12, !alias.scope !5
  %17 = icmp sgt i64 %16, %11
  %18 = select i1 %17, i64 %16, i64 %11
  %19 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %12, i32 1
  %20 = load i64, i64* %19, align 8, !tbaa !14, !alias.scope !5
  %21 = icmp sgt i64 %20, %18
  %22 = select i1 %21, i64 %20, i64 %18
  br label %23

23:                                               ; preds = %9, %14
  %24 = phi i64 [ %10, %9 ], [ %22, %14 ]
  %25 = icmp sgt i64 %24, -1
  br i1 %25, label %50, label %58

26:                                               ; preds = %26, %7
  %27 = phi i64 [ -1, %7 ], [ %46, %26 ]
  %28 = phi i64 [ 0, %7 ], [ %47, %26 ]
  %29 = phi i64 [ 0, %7 ], [ %48, %26 ]
  %30 = getelementptr inbounds %struct.packed_edge, %struct.packed_edge* %0, i64 %28, i32 0
  %31 = load i64, i64* %30, align 8, !tbaa !12, !alias.scope !5
  %32 = icmp sgt i64 %31, %27
  %33 = select i1 %32, i64 %31, i64 %27
  %34 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %28, i32 1
  %35 = load i64, i64* %34, align 8, !tbaa !14, !alias.scope !5
  %36 = icmp sgt i64 %35, %33
  %37 = select i1 %36, i64 %35, i64 %33
  %38 = or i64 %28, 1
  %39 = getelementptr inbounds %struct.packed_edge, %struct.packed_edge* %0, i64 %38, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !12, !alias.scope !5
  %41 = icmp sgt i64 %40, %37
  %42 = select i1 %41, i64 %40, i64 %37
  %43 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %38, i32 1
  %44 = load i64, i64* %43, align 8, !tbaa !14, !alias.scope !5
  %45 = icmp sgt i64 %44, %42
  %46 = select i1 %45, i64 %44, i64 %42
  %47 = add nuw nsw i64 %28, 2
  %48 = add i64 %29, 2
  %49 = icmp eq i64 %48, %8
  br i1 %49, label %9, label %26, !llvm.loop !15

50:                                               ; preds = %23, %55
  %51 = phi i64 [ %52, %55 ], [ -1, %23 ]
  %52 = phi i64 [ %56, %55 ], [ -1, %23 ]
  %53 = icmp eq i64 %52, %51
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i64 %24, i64* @maxvtx, align 8, !tbaa !8, !noalias !5
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i64 [ %52, %50 ], [ %24, %54 ]
  %57 = icmp sgt i64 %24, %52
  br i1 %57, label %50, label %58, !llvm.loop !17

58:                                               ; preds = %55, %2, %23
  %59 = phi i64 [ -1, %23 ], [ -1, %2 ], [ %56, %55 ]
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* @nv, align 8, !tbaa !8, !noalias !5
  %61 = shl i64 %60, 4
  %62 = add i64 %61, 16
  %63 = tail call i8* @xmalloc_large_ext(i64 noundef %62) #11
  store i8* %63, i8** bitcast (i64** @xoff to i8**), align 8, !tbaa !18
  %64 = icmp eq i8* %63, null
  %65 = bitcast i8* %63 to i64*
  br i1 %64, label %400, label %66

66:                                               ; preds = %58
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  store i64* null, i64** @xadj, align 8, !tbaa !18, !noalias !20
  %67 = load i64, i64* @nv, align 8, !tbaa !8, !noalias !20
  %68 = shl i64 %67, 1
  %69 = icmp sgt i64 %67, -1
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = or i64 %68, 1
  %72 = tail call i64 @llvm.smax.i64(i64 %71, i64 0) #11
  %73 = shl i64 %72, 3
  %74 = add i64 %73, 8
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %63, i8 0, i64 %74, i1 false) #11, !tbaa !8, !noalias !20
  br label %75

75:                                               ; preds = %70, %66
  br i1 %3, label %84, label %76

76:                                               ; preds = %105, %75
  %77 = icmp sgt i64 %67, 0
  br i1 %77, label %78, label %271

78:                                               ; preds = %76
  %79 = add i64 %67, -1
  %80 = and i64 %67, 1
  %81 = icmp eq i64 %79, 0
  br i1 %81, label %127, label %82

82:                                               ; preds = %78
  %83 = and i64 %67, -2
  br label %108

84:                                               ; preds = %75, %105
  %85 = phi i64 [ %106, %105 ], [ 0, %75 ]
  %86 = getelementptr inbounds %struct.packed_edge, %struct.packed_edge* %0, i64 %85, i32 0
  %87 = load i64, i64* %86, align 8, !tbaa !12, !alias.scope !20
  %88 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %85, i32 1
  %89 = load i64, i64* %88, align 8, !tbaa !14, !alias.scope !20
  %90 = icmp eq i64 %87, %89
  br i1 %90, label %105, label %91

91:                                               ; preds = %84
  %92 = icmp sgt i64 %87, -1
  br i1 %92, label %93, label %98

93:                                               ; preds = %91
  %94 = shl nuw nsw i64 %87, 1
  %95 = getelementptr inbounds i64, i64* %65, i64 %94
  %96 = load i64, i64* %95, align 8, !tbaa !8, !noalias !20
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %95, align 8, !tbaa !8, !noalias !20
  br label %98

98:                                               ; preds = %93, %91
  %99 = icmp sgt i64 %89, -1
  br i1 %99, label %100, label %105

100:                                              ; preds = %98
  %101 = shl nuw nsw i64 %89, 1
  %102 = getelementptr inbounds i64, i64* %65, i64 %101
  %103 = load i64, i64* %102, align 8, !tbaa !8, !noalias !20
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %102, align 8, !tbaa !8, !noalias !20
  br label %105

105:                                              ; preds = %100, %98, %84
  %106 = add nuw nsw i64 %85, 1
  %107 = icmp eq i64 %106, %1
  br i1 %107, label %76, label %84, !llvm.loop !23

108:                                              ; preds = %123, %82
  %109 = phi i64 [ 0, %82 ], [ %124, %123 ]
  %110 = phi i64 [ 0, %82 ], [ %125, %123 ]
  %111 = shl nuw nsw i64 %109, 1
  %112 = getelementptr inbounds i64, i64* %65, i64 %111
  %113 = load i64, i64* %112, align 8, !tbaa !8, !noalias !20
  %114 = icmp slt i64 %113, 2
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  store i64 2, i64* %112, align 8, !tbaa !8, !noalias !20
  br label %116

116:                                              ; preds = %115, %108
  %117 = shl nuw i64 %109, 1
  %118 = or i64 %117, 2
  %119 = getelementptr inbounds i64, i64* %65, i64 %118
  %120 = load i64, i64* %119, align 8, !tbaa !8, !noalias !20
  %121 = icmp slt i64 %120, 2
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store i64 2, i64* %119, align 8, !tbaa !8, !noalias !20
  br label %123

123:                                              ; preds = %122, %116
  %124 = add nuw nsw i64 %109, 2
  %125 = add i64 %110, 2
  %126 = icmp eq i64 %125, %83
  br i1 %126, label %127, label %108, !llvm.loop !24

127:                                              ; preds = %123, %78
  %128 = phi i64 [ 0, %78 ], [ %124, %123 ]
  %129 = icmp eq i64 %80, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %127
  %131 = shl nuw nsw i64 %128, 1
  %132 = getelementptr inbounds i64, i64* %65, i64 %131
  %133 = load i64, i64* %132, align 8, !tbaa !8, !noalias !20
  %134 = icmp slt i64 %133, 2
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i64 2, i64* %132, align 8, !tbaa !8, !noalias !20
  br label %136

136:                                              ; preds = %130, %135, %127
  %137 = icmp ult i64 %67, 5
  br i1 %137, label %165, label %138

138:                                              ; preds = %136
  %139 = and i64 %67, 3
  %140 = icmp eq i64 %139, 0
  %141 = select i1 %140, i64 4, i64 %139
  %142 = sub i64 %67, %141
  br label %143

143:                                              ; preds = %143, %138
  %144 = phi i64 [ 0, %138 ], [ %160, %143 ]
  %145 = phi <2 x i64> [ zeroinitializer, %138 ], [ %158, %143 ]
  %146 = phi <2 x i64> [ zeroinitializer, %138 ], [ %159, %143 ]
  %147 = shl nuw nsw i64 %144, 1
  %148 = shl i64 %144, 1
  %149 = or i64 %148, 4
  %150 = getelementptr inbounds i64, i64* %65, i64 %147
  %151 = getelementptr inbounds i64, i64* %65, i64 %149
  %152 = bitcast i64* %150 to <4 x i64>*
  %153 = bitcast i64* %151 to <4 x i64>*
  %154 = load <4 x i64>, <4 x i64>* %152, align 8, !tbaa !8, !noalias !20
  %155 = load <4 x i64>, <4 x i64>* %153, align 8, !tbaa !8, !noalias !20
  %156 = shufflevector <4 x i64> %154, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %157 = shufflevector <4 x i64> %155, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %158 = add <2 x i64> %156, %145
  %159 = add <2 x i64> %157, %146
  %160 = add nuw i64 %144, 4
  %161 = icmp eq i64 %160, %142
  br i1 %161, label %162, label %143, !llvm.loop !25

162:                                              ; preds = %143
  %163 = add <2 x i64> %159, %158
  %164 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %163)
  br label %165

165:                                              ; preds = %136, %162
  %166 = phi i64 [ 0, %136 ], [ %164, %162 ]
  %167 = phi i64 [ 0, %136 ], [ %142, %162 ]
  br label %168

168:                                              ; preds = %165, %168
  %169 = phi i64 [ %174, %168 ], [ %166, %165 ]
  %170 = phi i64 [ %175, %168 ], [ %167, %165 ]
  %171 = shl nuw nsw i64 %170, 1
  %172 = getelementptr inbounds i64, i64* %65, i64 %171
  %173 = load i64, i64* %172, align 8, !tbaa !8, !noalias !20
  %174 = add nsw i64 %173, %169
  %175 = add nuw nsw i64 %170, 1
  %176 = icmp eq i64 %175, %67
  br i1 %176, label %177, label %168, !llvm.loop !27

177:                                              ; preds = %168
  %178 = and i64 %67, 3
  %179 = icmp ult i64 %79, 3
  br i1 %179, label %208, label %180

180:                                              ; preds = %177
  %181 = and i64 %67, -4
  br label %182

182:                                              ; preds = %182, %180
  %183 = phi i64 [ 0, %180 ], [ %204, %182 ]
  %184 = phi i64 [ 0, %180 ], [ %205, %182 ]
  %185 = phi i64 [ 0, %180 ], [ %206, %182 ]
  %186 = shl nuw nsw i64 %184, 1
  %187 = getelementptr inbounds i64, i64* %65, i64 %186
  %188 = load i64, i64* %187, align 8, !tbaa !8, !noalias !20
  store i64 %183, i64* %187, align 8, !tbaa !8, !noalias !20
  %189 = add nsw i64 %188, %183
  %190 = shl nuw i64 %184, 1
  %191 = or i64 %190, 2
  %192 = getelementptr inbounds i64, i64* %65, i64 %191
  %193 = load i64, i64* %192, align 8, !tbaa !8, !noalias !20
  store i64 %189, i64* %192, align 8, !tbaa !8, !noalias !20
  %194 = add nsw i64 %193, %189
  %195 = shl nuw i64 %184, 1
  %196 = or i64 %195, 4
  %197 = getelementptr inbounds i64, i64* %65, i64 %196
  %198 = load i64, i64* %197, align 8, !tbaa !8, !noalias !20
  store i64 %194, i64* %197, align 8, !tbaa !8, !noalias !20
  %199 = add nsw i64 %198, %194
  %200 = shl nuw i64 %184, 1
  %201 = or i64 %200, 6
  %202 = getelementptr inbounds i64, i64* %65, i64 %201
  %203 = load i64, i64* %202, align 8, !tbaa !8, !noalias !20
  store i64 %199, i64* %202, align 8, !tbaa !8, !noalias !20
  %204 = add nsw i64 %203, %199
  %205 = add nuw nsw i64 %184, 4
  %206 = add i64 %185, 4
  %207 = icmp eq i64 %206, %181
  br i1 %207, label %208, label %182, !llvm.loop !29

208:                                              ; preds = %182, %177
  %209 = phi i64 [ 0, %177 ], [ %204, %182 ]
  %210 = phi i64 [ 0, %177 ], [ %205, %182 ]
  %211 = icmp eq i64 %178, 0
  br i1 %211, label %223, label %212

212:                                              ; preds = %208, %212
  %213 = phi i64 [ %219, %212 ], [ %209, %208 ]
  %214 = phi i64 [ %220, %212 ], [ %210, %208 ]
  %215 = phi i64 [ %221, %212 ], [ 0, %208 ]
  %216 = shl nuw nsw i64 %214, 1
  %217 = getelementptr inbounds i64, i64* %65, i64 %216
  %218 = load i64, i64* %217, align 8, !tbaa !8, !noalias !20
  store i64 %213, i64* %217, align 8, !tbaa !8, !noalias !20
  %219 = add nsw i64 %218, %213
  %220 = add nuw nsw i64 %214, 1
  %221 = add i64 %215, 1
  %222 = icmp eq i64 %221, %178
  br i1 %222, label %223, label %212, !llvm.loop !30

223:                                              ; preds = %212, %208
  %224 = and i64 %67, 3
  %225 = icmp ult i64 %79, 3
  br i1 %225, label %257, label %226

226:                                              ; preds = %223
  %227 = and i64 %67, -4
  br label %228

228:                                              ; preds = %228, %226
  %229 = phi i64 [ 0, %226 ], [ %254, %228 ]
  %230 = phi i64 [ 0, %226 ], [ %255, %228 ]
  %231 = shl nuw nsw i64 %229, 1
  %232 = getelementptr inbounds i64, i64* %65, i64 %231
  %233 = load i64, i64* %232, align 8, !tbaa !8, !noalias !20
  %234 = or i64 %231, 1
  %235 = getelementptr inbounds i64, i64* %65, i64 %234
  store i64 %233, i64* %235, align 8, !tbaa !8, !noalias !20
  %236 = shl nuw i64 %229, 1
  %237 = or i64 %236, 2
  %238 = getelementptr inbounds i64, i64* %65, i64 %237
  %239 = load i64, i64* %238, align 8, !tbaa !8, !noalias !20
  %240 = or i64 %236, 3
  %241 = getelementptr inbounds i64, i64* %65, i64 %240
  store i64 %239, i64* %241, align 8, !tbaa !8, !noalias !20
  %242 = shl nuw i64 %229, 1
  %243 = or i64 %242, 4
  %244 = getelementptr inbounds i64, i64* %65, i64 %243
  %245 = load i64, i64* %244, align 8, !tbaa !8, !noalias !20
  %246 = or i64 %242, 5
  %247 = getelementptr inbounds i64, i64* %65, i64 %246
  store i64 %245, i64* %247, align 8, !tbaa !8, !noalias !20
  %248 = shl nuw i64 %229, 1
  %249 = or i64 %248, 6
  %250 = getelementptr inbounds i64, i64* %65, i64 %249
  %251 = load i64, i64* %250, align 8, !tbaa !8, !noalias !20
  %252 = or i64 %248, 7
  %253 = getelementptr inbounds i64, i64* %65, i64 %252
  store i64 %251, i64* %253, align 8, !tbaa !8, !noalias !20
  %254 = add nuw nsw i64 %229, 4
  %255 = add i64 %230, 4
  %256 = icmp eq i64 %255, %227
  br i1 %256, label %257, label %228, !llvm.loop !32

257:                                              ; preds = %228, %223
  %258 = phi i64 [ 0, %223 ], [ %254, %228 ]
  %259 = icmp eq i64 %224, 0
  br i1 %259, label %271, label %260

260:                                              ; preds = %257, %260
  %261 = phi i64 [ %268, %260 ], [ %258, %257 ]
  %262 = phi i64 [ %269, %260 ], [ 0, %257 ]
  %263 = shl nuw nsw i64 %261, 1
  %264 = getelementptr inbounds i64, i64* %65, i64 %263
  %265 = load i64, i64* %264, align 8, !tbaa !8, !noalias !20
  %266 = or i64 %263, 1
  %267 = getelementptr inbounds i64, i64* %65, i64 %266
  store i64 %265, i64* %267, align 8, !tbaa !8, !noalias !20
  %268 = add nuw nsw i64 %261, 1
  %269 = add i64 %262, 1
  %270 = icmp eq i64 %269, %224
  br i1 %270, label %271, label %260, !llvm.loop !33

271:                                              ; preds = %257, %260, %76
  %272 = phi i64 [ 0, %76 ], [ %174, %260 ], [ %174, %257 ]
  %273 = getelementptr inbounds i64, i64* %65, i64 %68
  store i64 %272, i64* %273, align 8, !tbaa !8, !noalias !20
  %274 = shl i64 %272, 3
  %275 = add i64 %274, 16
  %276 = tail call i8* @xmalloc_large_ext(i64 noundef %275) #11, !noalias !20
  store i8* %276, i8** bitcast (i64** @xadjstore to i8**), align 8, !tbaa !18, !noalias !20
  %277 = icmp eq i8* %276, null
  %278 = bitcast i8* %276 to i64*
  br i1 %277, label %294, label %279

279:                                              ; preds = %271
  %280 = getelementptr inbounds i8, i8* %276, i64 16
  store i8* %280, i8** bitcast (i64** @xadj to i8**), align 8, !tbaa !18, !noalias !20
  %281 = load i64*, i64** @xoff, align 8, !tbaa !18, !noalias !20
  %282 = load i64, i64* @nv, align 8, !tbaa !8, !noalias !20
  %283 = shl nsw i64 %282, 1
  %284 = getelementptr inbounds i64, i64* %281, i64 %283
  %285 = load i64, i64* %284, align 8, !tbaa !8, !noalias !20
  %286 = icmp sgt i64 %285, -2
  %287 = bitcast i8* %280 to i64*
  br i1 %286, label %288, label %299

288:                                              ; preds = %279, %288
  %289 = phi i64 [ %291, %288 ], [ 0, %279 ]
  %290 = getelementptr inbounds i64, i64* %278, i64 %289
  store i64 -1, i64* %290, align 8, !tbaa !8, !noalias !20
  %291 = add nuw nsw i64 %289, 1
  %292 = load i64, i64* %284, align 8, !tbaa !8, !noalias !20
  %293 = icmp sgt i64 %289, %292
  br i1 %293, label %299, label %288, !llvm.loop !34

294:                                              ; preds = %271
  %295 = load i64*, i64** @xadj, align 8, !tbaa !18, !noalias !20
  %296 = icmp eq i64* %295, null
  br i1 %296, label %297, label %299

297:                                              ; preds = %294
  %298 = load i8*, i8** bitcast (i64** @xoff to i8**), align 8, !tbaa !18
  tail call void @xfree_large(i8* noundef %298) #11
  br label %400

299:                                              ; preds = %288, %279, %294
  %300 = phi i64* [ %287, %279 ], [ %295, %294 ], [ %287, %288 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  br i1 %3, label %301, label %330

301:                                              ; preds = %299
  %302 = load i64*, i64** @xoff, align 8, !noalias !35
  br label %303

303:                                              ; preds = %327, %301
  %304 = phi i64 [ 0, %301 ], [ %328, %327 ]
  %305 = getelementptr inbounds %struct.packed_edge, %struct.packed_edge* %0, i64 %304, i32 0
  %306 = load i64, i64* %305, align 8, !tbaa !12, !alias.scope !35
  %307 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %304, i32 1
  %308 = load i64, i64* %307, align 8, !tbaa !14, !alias.scope !35
  %309 = icmp slt i64 %306, 0
  %310 = icmp slt i64 %308, 0
  %311 = select i1 %309, i1 true, i1 %310
  %312 = icmp eq i64 %306, %308
  %313 = select i1 %311, i1 true, i1 %312
  br i1 %313, label %327, label %314

314:                                              ; preds = %303
  %315 = shl nuw nsw i64 %306, 1
  %316 = or i64 %315, 1
  %317 = getelementptr inbounds i64, i64* %302, i64 %316
  %318 = load i64, i64* %317, align 8, !tbaa !8, !noalias !35
  %319 = add nsw i64 %318, 1
  store i64 %319, i64* %317, align 8, !tbaa !8, !noalias !35
  %320 = getelementptr inbounds i64, i64* %300, i64 %318
  store i64 %308, i64* %320, align 8, !tbaa !8, !noalias !35
  %321 = shl nuw nsw i64 %308, 1
  %322 = or i64 %321, 1
  %323 = getelementptr inbounds i64, i64* %302, i64 %322
  %324 = load i64, i64* %323, align 8, !tbaa !8, !noalias !35
  %325 = add nsw i64 %324, 1
  store i64 %325, i64* %323, align 8, !tbaa !8, !noalias !35
  %326 = getelementptr inbounds i64, i64* %300, i64 %324
  store i64 %306, i64* %326, align 8, !tbaa !8, !noalias !35
  br label %327

327:                                              ; preds = %314, %303
  %328 = add nuw nsw i64 %304, 1
  %329 = icmp eq i64 %328, %1
  br i1 %329, label %330, label %303, !llvm.loop !38

330:                                              ; preds = %327, %299
  %331 = load i64, i64* @nv, align 8, !tbaa !8, !noalias !35
  %332 = icmp sgt i64 %331, 0
  br i1 %332, label %333, label %400

333:                                              ; preds = %330
  %334 = load i64*, i64** @xoff, align 8, !tbaa !18, !noalias !35
  br label %335

335:                                              ; preds = %395, %333
  %336 = phi i64 [ %396, %395 ], [ %331, %333 ]
  %337 = phi i64* [ %397, %395 ], [ %334, %333 ]
  %338 = phi i64 [ %398, %395 ], [ 0, %333 ]
  %339 = shl nuw nsw i64 %338, 1
  %340 = getelementptr inbounds i64, i64* %337, i64 %339
  %341 = load i64, i64* %340, align 8, !tbaa !8, !noalias !35
  %342 = add nsw i64 %341, 1
  %343 = or i64 %339, 1
  %344 = getelementptr inbounds i64, i64* %337, i64 %343
  %345 = load i64, i64* %344, align 8, !tbaa !8, !noalias !35
  %346 = icmp slt i64 %342, %345
  br i1 %346, label %347, label %395

347:                                              ; preds = %335
  %348 = load i64*, i64** @xadj, align 8, !tbaa !18, !noalias !35
  %349 = getelementptr inbounds i64, i64* %348, i64 %341
  %350 = bitcast i64* %349 to i8*
  %351 = sub nsw i64 %345, %341
  tail call void @qsort(i8* noundef %350, i64 noundef %351, i64 noundef 8, i32 (i8*, i8*)* noundef nonnull @i64cmp) #11, !noalias !35
  %352 = load i64*, i64** @xoff, align 8, !tbaa !18, !noalias !35
  %353 = getelementptr inbounds i64, i64* %352, i64 %339
  %354 = load i64, i64* %353, align 8, !tbaa !8, !noalias !35
  %355 = getelementptr inbounds i64, i64* %352, i64 %343
  %356 = add nsw i64 %354, 1
  %357 = load i64, i64* %355, align 8, !tbaa !8, !noalias !35
  %358 = icmp slt i64 %356, %357
  br i1 %358, label %359, label %381

359:                                              ; preds = %347
  %360 = load i64*, i64** @xadj, align 8, !tbaa !18, !noalias !35
  br label %361

361:                                              ; preds = %374, %359
  %362 = phi i64 [ %357, %359 ], [ %375, %374 ]
  %363 = phi i64 [ %356, %359 ], [ %377, %374 ]
  %364 = phi i64 [ %354, %359 ], [ %376, %374 ]
  %365 = getelementptr inbounds i64, i64* %360, i64 %363
  %366 = load i64, i64* %365, align 8, !tbaa !8, !noalias !35
  %367 = getelementptr inbounds i64, i64* %360, i64 %364
  %368 = load i64, i64* %367, align 8, !tbaa !8, !noalias !35
  %369 = icmp eq i64 %366, %368
  br i1 %369, label %374, label %370

370:                                              ; preds = %361
  %371 = add nsw i64 %364, 1
  %372 = getelementptr inbounds i64, i64* %360, i64 %371
  store i64 %366, i64* %372, align 8, !tbaa !8, !noalias !35
  %373 = load i64, i64* %355, align 8, !tbaa !8, !noalias !35
  br label %374

374:                                              ; preds = %370, %361
  %375 = phi i64 [ %373, %370 ], [ %362, %361 ]
  %376 = phi i64 [ %371, %370 ], [ %364, %361 ]
  %377 = add nsw i64 %363, 1
  %378 = icmp slt i64 %377, %375
  br i1 %378, label %361, label %379, !llvm.loop !39

379:                                              ; preds = %374
  %380 = add nsw i64 %376, 1
  br label %381

381:                                              ; preds = %379, %347
  %382 = phi i64 [ %380, %379 ], [ %356, %347 ]
  %383 = phi i64 [ %375, %379 ], [ %357, %347 ]
  %384 = icmp slt i64 %382, %383
  br i1 %384, label %385, label %393

385:                                              ; preds = %381
  %386 = load i64*, i64** @xadj, align 8, !tbaa !18, !noalias !35
  br label %387

387:                                              ; preds = %387, %385
  %388 = phi i64 [ %382, %385 ], [ %390, %387 ]
  %389 = getelementptr inbounds i64, i64* %386, i64 %388
  store i64 -1, i64* %389, align 8, !tbaa !8, !noalias !35
  %390 = add nsw i64 %388, 1
  %391 = load i64, i64* %355, align 8, !tbaa !8, !noalias !35
  %392 = icmp slt i64 %390, %391
  br i1 %392, label %387, label %393, !llvm.loop !40

393:                                              ; preds = %387, %381
  store i64 %382, i64* %355, align 8, !tbaa !8, !noalias !35
  %394 = load i64, i64* @nv, align 8, !tbaa !8, !noalias !35
  br label %395

395:                                              ; preds = %393, %335
  %396 = phi i64 [ %336, %335 ], [ %394, %393 ]
  %397 = phi i64* [ %337, %335 ], [ %352, %393 ]
  %398 = add nuw nsw i64 %338, 1
  %399 = icmp slt i64 %398, %396
  br i1 %399, label %335, label %400, !llvm.loop !41

400:                                              ; preds = %395, %330, %58, %297
  %401 = phi i32 [ -1, %297 ], [ -1, %58 ], [ 0, %330 ], [ 0, %395 ]
  ret i32 %401
}

declare void @xfree_large(i8* noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @make_bfs_tree(i64* nocapture noundef %0, i64* nocapture noundef writeonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = bitcast i64* %0 to i8*
  %5 = alloca [16384 x i64], align 16
  %6 = bitcast [16384 x i64]* %5 to i8*
  %7 = load i64, i64* @maxvtx, align 8, !tbaa !8
  store i64 %7, i64* %1, align 8, !tbaa !8
  %8 = load i64, i64* @nv, align 8, !tbaa !8
  %9 = shl i64 %8, 3
  %10 = tail call i8* @xmalloc_large(i64 noundef %9) #11
  %11 = bitcast i8* %10 to i64*
  %12 = icmp eq i8* %10, null
  br i1 %12, label %96, label %13

13:                                               ; preds = %3
  store i64 %2, i64* %11, align 8, !tbaa !8
  %14 = getelementptr inbounds i64, i64* %0, i64 %2
  store i64 %2, i64* %14, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0i8(i64 131072, i8* nonnull %6) #11
  %15 = icmp sgt i64 %2, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = shl nuw i64 %2, 3
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 -1, i64 %17, i1 false), !tbaa !8
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i64, i64* @nv, align 8, !tbaa !8
  %20 = add i64 %2, 1
  %21 = icmp slt i64 %20, %19
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr i64, i64* %0, i64 %20
  %24 = bitcast i64* %23 to i8*
  %25 = xor i64 %2, -1
  %26 = add i64 %19, %25
  %27 = shl nuw i64 %26, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 -1, i64 %27, i1 false), !tbaa !8
  br label %28

28:                                               ; preds = %22, %18
  %29 = load i64*, i64** @xoff, align 8
  %30 = load i64*, i64** @xadj, align 8
  %31 = getelementptr inbounds [16384 x i64], [16384 x i64]* %5, i64 0, i64 0
  br label %32

32:                                               ; preds = %28, %92
  %33 = phi i64 [ 0, %28 ], [ %34, %92 ]
  %34 = phi i64 [ 1, %28 ], [ %93, %92 ]
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %92

36:                                               ; preds = %32, %75
  %37 = phi i64 [ %78, %75 ], [ %33, %32 ]
  %38 = phi i64 [ %77, %75 ], [ 0, %32 ]
  %39 = phi i64 [ %76, %75 ], [ %34, %32 ]
  %40 = getelementptr inbounds i64, i64* %11, i64 %37
  %41 = load i64, i64* %40, align 8, !tbaa !8
  %42 = shl nsw i64 %41, 1
  %43 = or i64 %42, 1
  %44 = getelementptr inbounds i64, i64* %29, i64 %43
  %45 = load i64, i64* %44, align 8, !tbaa !8
  %46 = getelementptr inbounds i64, i64* %29, i64 %42
  %47 = load i64, i64* %46, align 8, !tbaa !8
  %48 = icmp slt i64 %47, %45
  br i1 %48, label %49, label %75

49:                                               ; preds = %36, %70
  %50 = phi i64 [ %73, %70 ], [ %47, %36 ]
  %51 = phi i64 [ %72, %70 ], [ %38, %36 ]
  %52 = phi i64 [ %71, %70 ], [ %39, %36 ]
  %53 = getelementptr inbounds i64, i64* %30, i64 %50
  %54 = load i64, i64* %53, align 8, !tbaa !8
  %55 = getelementptr inbounds i64, i64* %0, i64 %54
  %56 = load i64, i64* %55, align 8, !tbaa !8
  %57 = icmp eq i64 %56, -1
  br i1 %57, label %58, label %70

58:                                               ; preds = %49
  store i64 %41, i64* %55, align 8, !tbaa !8
  %59 = icmp slt i64 %51, 16384
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = add nsw i64 %51, 1
  %62 = getelementptr inbounds [16384 x i64], [16384 x i64]* %5, i64 0, i64 %51
  store i64 %54, i64* %62, align 8, !tbaa !8
  br label %70

63:                                               ; preds = %58
  %64 = add nsw i64 %52, 16384
  %65 = icmp sgt i64 %64, %19
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = shl i64 %52, 3
  %68 = getelementptr i8, i8* %10, i64 %67
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(131072) %68, i8* noundef nonnull align 16 dereferenceable(131072) %6, i64 131072, i1 false), !tbaa !8
  store i64 %54, i64* %31, align 16, !tbaa !8
  br label %70

69:                                               ; preds = %63
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 283, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.make_bfs_tree, i64 0, i64 0)) #12
  unreachable

70:                                               ; preds = %66, %60, %49
  %71 = phi i64 [ %52, %60 ], [ %64, %66 ], [ %52, %49 ]
  %72 = phi i64 [ %61, %60 ], [ 1, %66 ], [ %51, %49 ]
  %73 = add i64 %50, 1
  %74 = icmp eq i64 %73, %45
  br i1 %74, label %75, label %49, !llvm.loop !42

75:                                               ; preds = %70, %36
  %76 = phi i64 [ %39, %36 ], [ %71, %70 ]
  %77 = phi i64 [ %38, %36 ], [ %72, %70 ]
  %78 = add i64 %37, 1
  %79 = icmp eq i64 %78, %34
  br i1 %79, label %80, label %36, !llvm.loop !43

80:                                               ; preds = %75
  %81 = icmp eq i64 %77, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %80
  %83 = add nsw i64 %77, %76
  %84 = icmp sgt i64 %83, %19
  br i1 %84, label %91, label %85

85:                                               ; preds = %82
  %86 = icmp sgt i64 %77, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %85
  %88 = shl i64 %76, 3
  %89 = getelementptr i8, i8* %10, i64 %88
  %90 = shl nuw i64 %77, 3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* nonnull align 16 %6, i64 %90, i1 false), !tbaa !8
  br label %92

91:                                               ; preds = %82
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef 295, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.make_bfs_tree, i64 0, i64 0)) #12
  unreachable

92:                                               ; preds = %32, %87, %85, %80
  %93 = phi i64 [ %76, %80 ], [ %83, %85 ], [ %83, %87 ], [ %34, %32 ]
  %94 = icmp eq i64 %34, %93
  br i1 %94, label %95, label %32, !llvm.loop !44

95:                                               ; preds = %92
  call void @llvm.lifetime.end.p0i8(i64 131072, i8* nonnull %6) #11
  tail call void @xfree_large(i8* noundef nonnull %10) #11
  br label %96

96:                                               ; preds = %3, %95
  %97 = phi i32 [ 0, %95 ], [ -1, %3 ]
  ret i32 %97
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i8* @xmalloc_large(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @destroy_graph() local_unnamed_addr #0 {
  %1 = load i8*, i8** bitcast (i64** @xadjstore to i8**), align 8, !tbaa !18
  tail call void @xfree_large(i8* noundef %1) #11
  %2 = load i8*, i8** bitcast (i64** @xoff to i8**), align 8, !tbaa !18
  tail call void @xfree_large(i8* noundef %2) #11
  ret void
}

declare i8* @xmalloc_large_ext(i64 noundef) local_unnamed_addr #1

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

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #10

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

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
!17 = distinct !{!17, !16}
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !10, i64 0}
!20 = !{!21}
!21 = distinct !{!21, !22, !"setup_deg_off: argument 0"}
!22 = distinct !{!22, !"setup_deg_off"}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16, !26}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = distinct !{!27, !16, !28, !26}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !16}
!35 = !{!36}
!36 = distinct !{!36, !37, !"gather_edges: argument 0"}
!37 = distinct !{!37, !"gather_edges"}
!38 = distinct !{!38, !16}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
