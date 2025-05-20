; Functions
(function
  (function_header
    name: (global_name) @name)) @item

; Global variables
(global_variable
  name: (global_name) @name) @item

; Structure type definitions
(type_declaration
  name: (_) @name) @item

; Module identification
(module_declaration
  (string_literal) @name) @item

; Target triples
(target_triple
  (string_literal) @name) @item
