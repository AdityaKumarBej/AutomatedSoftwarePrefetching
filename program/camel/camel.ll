; ModuleID = './camel.c'
source_filename = "./camel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@array1 = dso_local global [33554432 x i32] zeroinitializer, align 16
@array2 = dso_local global [33554432 x i32*] zeroinitializer, align 16
@.str = private unnamed_addr constant [66 x i8] c"Multi Hashing Memory Access Benchmark ---- Auto prefetch results\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Result %ld\0ATime taken (ms) :%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash(i32 noundef %0) #0 {
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
  %18 = and i32 %17, 33554431
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %23, %0
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 33554432
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @array1, i64 0, i64 %14
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @hash(i32 noundef %16)
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @array1, i64 0, i64 %18
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [33554432 x i32*], [33554432 x i32*]* @array2, i64 0, i64 %21
  store i32* %19, i32** %22, align 8
  br label %23

23:                                               ; preds = %11
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %2, align 4
  br label %8, !llvm.loop !6

26:                                               ; preds = %8
  store i64 0, i64* %3, align 8
  %27 = call i64 @clock() #4
  store i64 %27, i64* %4, align 8
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %70, %26
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 33554432
  br i1 %30, label %31, label %73

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 33554368
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 32
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [33554432 x i32*], [33554432 x i32*]* @array2, i64 0, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = bitcast i32* %39 to i8*
  call void @llvm.prefetch.p0i8(i8* %40, i32 0, i32 3, i32 1)
  br label %41

41:                                               ; preds = %34, %31
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [33554432 x i32*], [33554432 x i32*]* @array2, i64 0, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @hash(i32 noundef %46)
  %48 = call i32 @hash(i32 noundef %47)
  %49 = call i32 @hash(i32 noundef %48)
  %50 = call i32 @hash(i32 noundef %49)
  %51 = call i32 @hash(i32 noundef %50)
  %52 = call i32 @hash(i32 noundef %51)
  %53 = call i32 @hash(i32 noundef %52)
  %54 = call i32 @hash(i32 noundef %53)
  %55 = call i32 @hash(i32 noundef %54)
  %56 = call i32 @hash(i32 noundef %55)
  %57 = call i32 @hash(i32 noundef %56)
  %58 = call i32 @hash(i32 noundef %57)
  %59 = call i32 @hash(i32 noundef %58)
  %60 = call i32 @hash(i32 noundef %59)
  %61 = call i32 @hash(i32 noundef %60)
  %62 = call i32 @hash(i32 noundef %61)
  %63 = call i32 @hash(i32 noundef %62)
  %64 = call i32 @hash(i32 noundef %63)
  %65 = call i32 @hash(i32 noundef %64)
  %66 = call i32 @hash(i32 noundef %65)
  %67 = zext i32 %66 to i64
  %68 = load i64, i64* %3, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %3, align 8
  br label %70

70:                                               ; preds = %41
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %28, !llvm.loop !8

73:                                               ; preds = %28
  %74 = call i64 @clock() #4
  %75 = load i64, i64* %4, align 8
  %76 = sub nsw i64 %74, %75
  store i64 %76, i64* %5, align 8
  %77 = load i64, i64* %5, align 8
  %78 = mul nsw i64 %77, 1000
  %79 = sdiv i64 %78, 1000000
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %7, align 4
  %81 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %82 = load i64, i64* %3, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 noundef %82, i32 noundef %83)
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @clock() #1

; Function Attrs: inaccessiblemem_or_argmemonly nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0i8(i8* nocapture readonly, i32 immarg, i32 immarg, i32) #2

declare i32 @printf(i8* noundef, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
