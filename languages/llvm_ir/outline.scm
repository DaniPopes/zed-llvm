; Function definitions for the outline
(define
  (function_header 
    name: (global_var) @name)) @item

; Function declarations
(declare 
  (function_header 
    name: (global_var) @name)) @item

; Global variable definitions
(global_global 
  (global_var) @name) @item

; Type definitions
(global_type 
  (local_var) @name) @item

; Module identification
(source_file_name 
  (string) @name) @item

; Target definitions
(target_definition
  (target_triple 
    (string) @name)) @item

; Labels in functions
(label) @name @item

; Metadata definitions
(global_metadata
  (metadata_ref) @name) @item