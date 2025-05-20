; ModuleID = 'sample.ll'
source_filename = "sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function that calculates factorial recursively
define i64 @factorial(i64 %n) #0 {
entry:
  ; Base case check
  %cmp = icmp eq i64 %n, 0
  br i1 %cmp, label %base_case, label %recursive_case

base_case:
  ret i64 1

recursive_case:
  ; Calculate n-1
  %sub = sub nsw i64 %n, 1
  
  ; Recursive call to factorial(n-1)
  %call = call i64 @factorial(i64 %sub)
  
  ; Multiply n by factorial(n-1)
  %mul = mul nsw i64 %n, %call
  
  ret i64 %mul
}

; Function to calculate fibonacci numbers
define i32 @fibonacci(i32 %n) #0 {
entry:
  ; Base cases: fib(0) = 0, fib(1) = 1
  %cmp = icmp ult i32 %n, 2
  br i1 %cmp, label %base_case, label %recursive_case

base_case:
  ret i32 %n

recursive_case:
  ; Calculate fib(n-1)
  %sub = sub nsw i32 %n, 1
  %call1 = call i32 @fibonacci(i32 %sub)
  
  ; Calculate fib(n-2)
  %sub2 = sub nsw i32 %n, 2
  %call2 = call i32 @fibonacci(i32 %sub2)
  
  ; Return fib(n-1) + fib(n-2)
  %add = add nsw i32 %call1, %call2
  ret i32 %add
}

; Simple function showing various LLVM IR features
define i32 @example_function(i32 %a, i32 %b) #0 {
entry:
  ; Allocate local variables
  %result = alloca i32, align 4
  %temp = alloca i32, align 4
  
  ; Simple arithmetic operations
  %add = add nsw i32 %a, %b
  store i32 %add, i32* %result, align 4
  
  ; Pointer operations
  %result_ptr = load i32, i32* %result, align 4
  %mul = mul nsw i32 %result_ptr, 2
  store i32 %mul, i32* %temp, align 4
  
  ; Comparison and branching
  %cmp = icmp sgt i32 %mul, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:
  %load1 = load i32, i32* %temp, align 4
  %add1 = add nsw i32 %load1, 5
  store i32 %add1, i32* %result, align 4
  br label %if.end

if.else:
  %load2 = load i32, i32* %temp, align 4
  %sub = sub nsw i32 %load2, 5
  store i32 %sub, i32* %result, align 4
  br label %if.end

if.end:
  ; Return result
  %final = load i32, i32* %result, align 4
  ret i32 %final
}

; Global variables
@global_var = global i32 42, align 4
@hello_str = constant [14 x i8] c"Hello, World!\00", align 1

; Structure type definition
%struct.Point = type { i32, i32, i32 }

; Function using a structure
define void @create_point(i32 %x, i32 %y, i32 %z, %struct.Point* %p) #0 {
entry:
  ; Get pointers to structure fields
  %x_ptr = getelementptr inbounds %struct.Point, %struct.Point* %p, i32 0, i32 0
  %y_ptr = getelementptr inbounds %struct.Point, %struct.Point* %p, i32 0, i32 1
  %z_ptr = getelementptr inbounds %struct.Point, %struct.Point* %p, i32 0, i32 2
  
  ; Store values into the structure
  store i32 %x, i32* %x_ptr, align 4
  store i32 %y, i32* %y_ptr, align 4
  store i32 %z, i32* %z_ptr, align 4
  ret void
}

; Function using vector operations
define <4 x float> @vector_add(<4 x float> %a, <4 x float> %b) #0 {
entry:
  %result = fadd <4 x float> %a, %b
  ret <4 x float> %result
}

; Example of metadata usage
define void @metadata_example() #0 !dbg !4 {
entry:
  call void @llvm.dbg.declare(metadata i32* undef, metadata !7, metadata !DIExpression()), !dbg !10
  ret void, !dbg !11
}

; Intrinsic declaration
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1)
!1 = !DIFile(filename: "sample.c", directory: ".")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = distinct !DISubprogram(name: "metadata_example", scope: !1, file: !1, line: 42)
!7 = !DILocalVariable(name: "local", scope: !4, file: !1, line: 43, type: !9)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DILocation(line: 43, column: 7, scope: !4)
!11 = !DILocation(line: 44, column: 1, scope: !4)