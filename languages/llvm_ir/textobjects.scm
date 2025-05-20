; Text objects for LLVM IR

; Function definitions as text objects
(define
  (function_header)
  (function_body) @function.inside) @function.around

; Function declarations as text objects
(declare
  (function_header)) @function.around

; Consider global variables as a text object
(global_global) @class.around

; Consider module-level entities as class-level objects 
(target_definition) @class.around
(source_file_name) @class.around
(global_type) @class.around

; Handle comments
(comment) @comment.around

; Instructions as smaller objects
(instruction) @function.inside

; Basic blocks (sections between labels) can be navigated
((label) @_start
 . (_) @_body) @function.around