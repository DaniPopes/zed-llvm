(module name: "indents")
@indent [
  (function)
  (struct_type)
  (array_type)
]

(function
  "{" @open
  "}" @close) @indent

"{" @open
"}" @close

"(" @open
")" @close

"[" @open
"]" @close

"<" @open
">" @close
