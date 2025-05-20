; Blocks that should be indented
[
  (function_body)
  (define)
  (struct_type)
  (packed_struct_type)
  (array_type)
  (vector_type)
  (argument_list)
  (struct_value)
  (packed_struct_value)
  (array_value)
  (vector_value)
  (metadata_tuple)
] @indent

; Bracket matching for indentation
[
  "{"
  "("
  "["
  "<"
  "<{"
] @indent.begin

[
  "}"
  ")"
  "]"
  ">"
  "}>"
] @indent.end

; Handle line-breaks in multi-line constructs
(instruction_phi 
  (type) @indent.begin
  "]" @indent.end) @indent

; Multiline comma-separated lists should be properly indented
(struct_body
  "," @indent.begin
  (type) @indent.end) @indent