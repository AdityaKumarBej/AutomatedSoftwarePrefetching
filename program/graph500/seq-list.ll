; ModuleID = 'seq-list/seq-list.c'
source_filename = "seq-list/seq-list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.packed_edge = type { i64, i64 }

@IJ = internal unnamed_addr global %struct.packed_edge* null, align 8
@maxvtx = internal unnamed_addr global i64 0, align 8
@head = internal unnamed_addr global i64* null, align 8
@deg = internal unnamed_addr global i64* null, align 8
@next = internal unnamed_addr global i64* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"t_head < 2*nIJ\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"seq-list/seq-list.c\00", align 1
@__PRETTY_FUNCTION__.create_graph_from_edgelist = private unnamed_addr constant [62 x i8] c"int create_graph_from_edgelist(struct packed_edge *, int64_t)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @create_graph_from_edgelist(%struct.packed_edge* noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  store %struct.packed_edge* %0, %struct.packed_edge** @IJ, align 8, !tbaa !5
  store i64 -1, i64* @maxvtx, align 8, !tbaa !9
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
  %14 = load i64, i64* %13, align 8, !tbaa !11
  %15 = icmp sgt i64 %14, %11
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i64 %14, i64* @maxvtx, align 8, !tbaa !9
  br label %17

17:                                               ; preds = %16, %9
  %18 = phi i64 [ %14, %16 ], [ %11, %9 ]
  %19 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %10, i32 1
  %20 = load i64, i64* %19, align 8, !tbaa !13
  %21 = icmp sgt i64 %20, %18
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i64 %20, i64* @maxvtx, align 8, !tbaa !9
  br label %23

23:                                               ; preds = %17, %22
  %24 = phi i64 [ %18, %17 ], [ %20, %22 ]
  %25 = or i64 %10, 1
  %26 = getelementptr inbounds %struct.packed_edge, %struct.packed_edge* %0, i64 %25, i32 0
  %27 = load i64, i64* %26, align 8, !tbaa !11
  %28 = icmp sgt i64 %27, %24
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i64 %27, i64* @maxvtx, align 8, !tbaa !9
  br label %30

30:                                               ; preds = %29, %23
  %31 = phi i64 [ %27, %29 ], [ %24, %23 ]
  %32 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %25, i32 1
  %33 = load i64, i64* %32, align 8, !tbaa !13
  %34 = icmp sgt i64 %33, %31
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i64 %33, i64* @maxvtx, align 8, !tbaa !9
  br label %36

36:                                               ; preds = %35, %30
  %37 = phi i64 [ %31, %30 ], [ %33, %35 ]
  %38 = add nuw nsw i64 %10, 2
  %39 = add i64 %12, 2
  %40 = icmp eq i64 %39, %8
  br i1 %40, label %41, label %9, !llvm.loop !14

41:                                               ; preds = %36, %4
  %42 = phi i64 [ undef, %4 ], [ %37, %36 ]
  %43 = phi i64 [ 0, %4 ], [ %38, %36 ]
  %44 = phi i64 [ -1, %4 ], [ %37, %36 ]
  %45 = icmp eq i64 %5, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.packed_edge, %struct.packed_edge* %0, i64 %43, i32 0
  %48 = load i64, i64* %47, align 8, !tbaa !11
  %49 = icmp sgt i64 %48, %44
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i64 %48, i64* @maxvtx, align 8, !tbaa !9
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i64 [ %48, %50 ], [ %44, %46 ]
  %53 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %43, i32 1
  %54 = load i64, i64* %53, align 8, !tbaa !13
  %55 = icmp sgt i64 %54, %52
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i64 %54, i64* @maxvtx, align 8, !tbaa !9
  br label %57

57:                                               ; preds = %41, %56, %51, %2
  %58 = phi i64 [ -1, %2 ], [ %42, %41 ], [ %52, %51 ], [ %54, %56 ]
  %59 = shl i64 %58, 1
  %60 = shl nsw i64 %1, 1
  %61 = add i64 %60, 2
  %62 = add i64 %61, %59
  %63 = shl i64 %62, 3
  %64 = tail call noalias i8* @malloc(i64 noundef %63) #6
  store i8* %64, i8** bitcast (i64** @head to i8**), align 8, !tbaa !5
  %65 = icmp eq i8* %64, null
  %66 = bitcast i8* %64 to i64*
  br i1 %65, label %188, label %67

67:                                               ; preds = %57
  %68 = add i64 %58, 1
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  store i64* %69, i64** @deg, align 8, !tbaa !5
  %70 = getelementptr inbounds i64, i64* %69, i64 %68
  store i64* %70, i64** @next, align 8, !tbaa !5
  %71 = icmp slt i64 %58, 0
  br i1 %71, label %145, label %72

72:                                               ; preds = %67
  %73 = icmp ult i64 %68, 4
  br i1 %73, label %143, label %74

74:                                               ; preds = %72
  %75 = and i64 %68, -4
  %76 = add i64 %75, -4
  %77 = lshr exact i64 %76, 2
  %78 = add nuw nsw i64 %77, 1
  %79 = and i64 %78, 3
  %80 = icmp ult i64 %76, 12
  br i1 %80, label %124, label %81

81:                                               ; preds = %74
  %82 = and i64 %78, 9223372036854775804
  br label %83

83:                                               ; preds = %83, %81
  %84 = phi i64 [ 0, %81 ], [ %121, %83 ]
  %85 = phi i64 [ 0, %81 ], [ %122, %83 ]
  %86 = getelementptr inbounds i64, i64* %66, i64 %84
  %87 = bitcast i64* %86 to <2 x i64>*
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %87, align 8, !tbaa !9
  %88 = getelementptr inbounds i64, i64* %86, i64 2
  %89 = bitcast i64* %88 to <2 x i64>*
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %89, align 8, !tbaa !9
  %90 = getelementptr inbounds i64, i64* %69, i64 %84
  %91 = bitcast i64* %90 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %91, align 8, !tbaa !9
  %92 = getelementptr inbounds i64, i64* %90, i64 2
  %93 = bitcast i64* %92 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %93, align 8, !tbaa !9
  %94 = or i64 %84, 4
  %95 = getelementptr inbounds i64, i64* %66, i64 %94
  %96 = bitcast i64* %95 to <2 x i64>*
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %96, align 8, !tbaa !9
  %97 = getelementptr inbounds i64, i64* %95, i64 2
  %98 = bitcast i64* %97 to <2 x i64>*
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %98, align 8, !tbaa !9
  %99 = getelementptr inbounds i64, i64* %69, i64 %94
  %100 = bitcast i64* %99 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %100, align 8, !tbaa !9
  %101 = getelementptr inbounds i64, i64* %99, i64 2
  %102 = bitcast i64* %101 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %102, align 8, !tbaa !9
  %103 = or i64 %84, 8
  %104 = getelementptr inbounds i64, i64* %66, i64 %103
  %105 = bitcast i64* %104 to <2 x i64>*
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %105, align 8, !tbaa !9
  %106 = getelementptr inbounds i64, i64* %104, i64 2
  %107 = bitcast i64* %106 to <2 x i64>*
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %107, align 8, !tbaa !9
  %108 = getelementptr inbounds i64, i64* %69, i64 %103
  %109 = bitcast i64* %108 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %109, align 8, !tbaa !9
  %110 = getelementptr inbounds i64, i64* %108, i64 2
  %111 = bitcast i64* %110 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %111, align 8, !tbaa !9
  %112 = or i64 %84, 12
  %113 = getelementptr inbounds i64, i64* %66, i64 %112
  %114 = bitcast i64* %113 to <2 x i64>*
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %114, align 8, !tbaa !9
  %115 = getelementptr inbounds i64, i64* %113, i64 2
  %116 = bitcast i64* %115 to <2 x i64>*
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %116, align 8, !tbaa !9
  %117 = getelementptr inbounds i64, i64* %69, i64 %112
  %118 = bitcast i64* %117 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %118, align 8, !tbaa !9
  %119 = getelementptr inbounds i64, i64* %117, i64 2
  %120 = bitcast i64* %119 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %120, align 8, !tbaa !9
  %121 = add nuw i64 %84, 16
  %122 = add nuw i64 %85, 4
  %123 = icmp eq i64 %122, %82
  br i1 %123, label %124, label %83, !llvm.loop !16

124:                                              ; preds = %83, %74
  %125 = phi i64 [ 0, %74 ], [ %121, %83 ]
  %126 = icmp eq i64 %79, 0
  br i1 %126, label %141, label %127

127:                                              ; preds = %124, %127
  %128 = phi i64 [ %138, %127 ], [ %125, %124 ]
  %129 = phi i64 [ %139, %127 ], [ 0, %124 ]
  %130 = getelementptr inbounds i64, i64* %66, i64 %128
  %131 = bitcast i64* %130 to <2 x i64>*
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %131, align 8, !tbaa !9
  %132 = getelementptr inbounds i64, i64* %130, i64 2
  %133 = bitcast i64* %132 to <2 x i64>*
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %133, align 8, !tbaa !9
  %134 = getelementptr inbounds i64, i64* %69, i64 %128
  %135 = bitcast i64* %134 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %135, align 8, !tbaa !9
  %136 = getelementptr inbounds i64, i64* %134, i64 2
  %137 = bitcast i64* %136 to <2 x i64>*
  store <2 x i64> zeroinitializer, <2 x i64>* %137, align 8, !tbaa !9
  %138 = add nuw i64 %128, 4
  %139 = add i64 %129, 1
  %140 = icmp eq i64 %139, %79
  br i1 %140, label %141, label %127, !llvm.loop !18

141:                                              ; preds = %127, %124
  %142 = icmp eq i64 %68, %75
  br i1 %142, label %145, label %143

143:                                              ; preds = %72, %141
  %144 = phi i64 [ 0, %72 ], [ %75, %141 ]
  br label %146

145:                                              ; preds = %146, %141, %67
  br i1 %3, label %152, label %188

146:                                              ; preds = %143, %146
  %147 = phi i64 [ %150, %146 ], [ %144, %143 ]
  %148 = getelementptr inbounds i64, i64* %66, i64 %147
  store i64 -1, i64* %148, align 8, !tbaa !9
  %149 = getelementptr inbounds i64, i64* %69, i64 %147
  store i64 0, i64* %149, align 8, !tbaa !9
  %150 = add nuw i64 %147, 1
  %151 = icmp eq i64 %147, %58
  br i1 %151, label %145, label %146, !llvm.loop !20

152:                                              ; preds = %145, %185
  %153 = phi i64 [ %186, %185 ], [ 0, %145 ]
  %154 = getelementptr inbounds %struct.packed_edge, %struct.packed_edge* %0, i64 %153, i32 0
  %155 = load i64, i64* %154, align 8, !tbaa !11
  %156 = getelementptr %struct.packed_edge, %struct.packed_edge* %0, i64 %153, i32 1
  %157 = load i64, i64* %156, align 8, !tbaa !13
  %158 = icmp slt i64 %155, 0
  %159 = icmp slt i64 %157, 0
  %160 = select i1 %158, i1 true, i1 %159
  %161 = icmp eq i64 %155, %157
  %162 = select i1 %160, i1 true, i1 %161
  br i1 %162, label %185, label %163

163:                                              ; preds = %152
  %164 = shl nuw nsw i64 %153, 1
  %165 = getelementptr inbounds i64, i64* %70, i64 %164
  %166 = or i64 %164, 1
  %167 = bitcast i64* %165 to <2 x i64>*
  store <2 x i64> <i64 -1, i64 -1>, <2 x i64>* %167, align 8, !tbaa !9
  %168 = getelementptr inbounds i64, i64* %66, i64 %155
  %169 = load i64, i64* %168, align 8, !tbaa !9
  store i64 %166, i64* %168, align 8, !tbaa !9
  %170 = icmp slt i64 %169, %60
  br i1 %170, label %172, label %171

171:                                              ; preds = %163
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.create_graph_from_edgelist, i64 0, i64 0)) #7
  unreachable

172:                                              ; preds = %163
  %173 = getelementptr inbounds i64, i64* %70, i64 %166
  store i64 %169, i64* %173, align 8, !tbaa !9
  %174 = getelementptr inbounds i64, i64* %69, i64 %155
  %175 = load i64, i64* %174, align 8, !tbaa !9
  %176 = add nsw i64 %175, 1
  store i64 %176, i64* %174, align 8, !tbaa !9
  %177 = getelementptr inbounds i64, i64* %66, i64 %157
  %178 = load i64, i64* %177, align 8, !tbaa !9
  store i64 %164, i64* %177, align 8, !tbaa !9
  %179 = icmp slt i64 %178, %60
  br i1 %179, label %181, label %180

180:                                              ; preds = %172
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.create_graph_from_edgelist, i64 0, i64 0)) #7
  unreachable

181:                                              ; preds = %172
  store i64 %178, i64* %165, align 8, !tbaa !9
  %182 = getelementptr inbounds i64, i64* %69, i64 %157
  %183 = load i64, i64* %182, align 8, !tbaa !9
  %184 = add nsw i64 %183, 1
  store i64 %184, i64* %182, align 8, !tbaa !9
  br label %185

185:                                              ; preds = %181, %152
  %186 = add nuw nsw i64 %153, 1
  %187 = icmp eq i64 %186, %1
  br i1 %187, label %188, label %152, !llvm.loop !22

188:                                              ; preds = %185, %145, %57
  %189 = phi i32 [ -1, %57 ], [ 0, %145 ], [ 0, %185 ]
  ret i32 %189
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @make_bfs_tree(i64* nocapture noundef %0, i64* nocapture noundef writeonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = bitcast i64* %0 to i8*
  %5 = load i64, i64* @maxvtx, align 8, !tbaa !9
  store i64 %5, i64* %1, align 8, !tbaa !9
  %6 = getelementptr inbounds i64, i64* %0, i64 %2
  store i64 %2, i64* %6, align 8, !tbaa !9
  %7 = shl i64 %5, 3
  %8 = add i64 %7, 8
  %9 = tail call noalias i8* @malloc(i64 noundef %8) #6
  %10 = bitcast i8* %9 to i64*
  %11 = icmp eq i8* %9, null
  br i1 %11, label %70, label %12

12:                                               ; preds = %3
  store i64 %2, i64* %6, align 8, !tbaa !9
  store i64 %2, i64* %10, align 8, !tbaa !9
  %13 = icmp sgt i64 %2, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = shl nuw i64 %2, 3
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 -1, i64 %15, i1 false), !tbaa !9
  br label %16

16:                                               ; preds = %14, %12
  %17 = icmp sgt i64 %5, %2
  br i1 %17, label %18, label %24

18:                                               ; preds = %16
  %19 = add nsw i64 %2, 1
  %20 = getelementptr i64, i64* %0, i64 %19
  %21 = bitcast i64* %20 to i8*
  %22 = sub i64 %5, %2
  %23 = shl i64 %22, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 -1, i64 %23, i1 false), !tbaa !9
  br label %24

24:                                               ; preds = %18, %16
  %25 = load i64*, i64** @head, align 8
  %26 = load %struct.packed_edge*, %struct.packed_edge** @IJ, align 8
  %27 = load i64*, i64** @next, align 8
  br label %32

28:                                               ; preds = %65, %32
  %29 = phi i64 [ %33, %32 ], [ %37, %65 ]
  %30 = phi i64 [ %34, %32 ], [ %66, %65 ]
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %69, label %32, !llvm.loop !23

32:                                               ; preds = %24, %28
  %33 = phi i64 [ 0, %24 ], [ %29, %28 ]
  %34 = phi i64 [ 1, %24 ], [ %30, %28 ]
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %28

36:                                               ; preds = %32, %65
  %37 = phi i64 [ %66, %65 ], [ %34, %32 ]
  %38 = phi i64 [ %67, %65 ], [ %33, %32 ]
  %39 = getelementptr inbounds i64, i64* %10, i64 %38
  %40 = load i64, i64* %39, align 8, !tbaa !9
  %41 = getelementptr inbounds i64, i64* %25, i64 %40
  %42 = load i64, i64* %41, align 8, !tbaa !9
  %43 = icmp sgt i64 %42, -1
  br i1 %43, label %44, label %65

44:                                               ; preds = %36, %60
  %45 = phi i64 [ %63, %60 ], [ %42, %36 ]
  %46 = phi i64 [ %61, %60 ], [ %37, %36 ]
  %47 = and i64 %45, 1
  %48 = icmp eq i64 %47, 0
  %49 = lshr i64 %45, 1
  %50 = getelementptr %struct.packed_edge, %struct.packed_edge* %26, i64 %49, i32 1
  %51 = getelementptr inbounds %struct.packed_edge, %struct.packed_edge* %26, i64 %49, i32 0
  %52 = select i1 %48, i64* %51, i64* %50
  %53 = load i64, i64* %52, align 8, !tbaa !9
  %54 = getelementptr inbounds i64, i64* %0, i64 %53
  %55 = load i64, i64* %54, align 8, !tbaa !9
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %44
  store i64 %40, i64* %54, align 8, !tbaa !9
  %58 = add nsw i64 %46, 1
  %59 = getelementptr inbounds i64, i64* %10, i64 %46
  store i64 %53, i64* %59, align 8, !tbaa !9
  br label %60

60:                                               ; preds = %57, %44
  %61 = phi i64 [ %58, %57 ], [ %46, %44 ]
  %62 = getelementptr inbounds i64, i64* %27, i64 %45
  %63 = load i64, i64* %62, align 8, !tbaa !9
  %64 = icmp sgt i64 %63, -1
  br i1 %64, label %44, label %65, !llvm.loop !24

65:                                               ; preds = %60, %36
  %66 = phi i64 [ %37, %36 ], [ %61, %60 ]
  %67 = add nsw i64 %38, 1
  %68 = icmp slt i64 %67, %66
  br i1 %68, label %36, label %28, !llvm.loop !25

69:                                               ; preds = %28
  tail call void @free(i8* noundef %9) #6
  br label %70

70:                                               ; preds = %3, %69
  %71 = phi i32 [ 0, %69 ], [ -1, %3 ]
  ret i32 %71
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @destroy_graph() local_unnamed_addr #4 {
  %1 = load i8*, i8** bitcast (i64** @head to i8**), align 8, !tbaa !5
  tail call void @free(i8* noundef %1) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"packed_edge", !10, i64 0, !10, i64 8}
!13 = !{!12, !10, i64 8}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15, !17}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !15, !21, !17}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
