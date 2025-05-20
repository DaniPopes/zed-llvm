; Keywords 
[
  "define"
  "declare"
  "global"
  "constant"
  "internal"
  "external"
  "private"
  "linkonce"
  "linkonce_odr"
  "weak"
  "weak_odr"
  "appending"
  "common"
  "extern_weak"
  "available_externally"
  "dllimport"
  "dllexport"
  "hidden"
  "protected"
  "default"
  "except"
  "extern"
  "attribute"
  "declare"
  "module"
  "addrspace"
  "source_filename"
  "target"
  "triple"
  "datalayout"
  "volatile"
  "atomic"
] @keyword

; Types
[
  "void"
  "half"
  "float"
  "double"
  "x86_fp80"
  "fp128"
  "ppc_fp128"
  "label"
  "metadata"
  "x86_mmx"
  "opaque"
] @type

; Type modifiers
(type_int) @type

; Operators
[
  "icmp"
  "fcmp"
  "eq"
  "ne"
  "ugt"
  "uge"
  "ult"
  "ule"
  "sgt"
  "sge"
  "slt"
  "sle"
  "oeq"
  "ogt"
  "oge"
  "olt"
  "ole"
  "one"
  "ord"
  "ueq"
  "ugt"
  "uge"
  "ult"
  "ule"
  "une"
  "uno"
  "true"
  "false"
  "add"
  "fadd"
  "sub"
  "fsub"
  "mul"
  "fmul"
  "udiv"
  "sdiv"
  "fdiv"
  "urem"
  "srem"
  "frem"
  "shl"
  "lshr"
  "ashr"
  "and"
  "or"
  "xor"
  "select"
  "va_arg"
  "extractelement"
  "insertelement"
  "shufflevector"
  "phi"
  "landingpad"
  "resume"
  "malloc"
  "alloca"
  "free"
  "load"
  "store"
  "getelementptr"
  "extractvalue"
  "insertvalue"
  "inttoptr"
  "ptrtoint"
  "bitcast"
  "zext"
  "sext"
  "trunc"
  "fptrunc"
  "fpext"
  "fptoui"
  "fptosi"
  "uitofp"
  "sitofp"
  "addrspacecast"
  "invoke"
  "ret"
  "br"
  "switch"
  "indirectbr"
  "unreachable"
  "inbounds"
  "call"
  "tail"
] @operator

; Constants
(constant_int) @number
(constant_float) @number
(constant_string) @string
(constant_boolean) @boolean
(constant_null) @constant

; Labels
(label) @label
(label_ref) @label

; Special registers
(local_var 
  (local_name) @variable.special)

(global_name) @variable.special

; Comments 
(comment) @comment

; Metadata
(metadata_ref) @attribute
(metadata_node) @attribute
(metadata_string) @string.special
(metadata_string (string_literal) @string.special)

; Commas and parentheses
[
 ","
 "="
] @punctuation.delimiter

[
 "("
 ")"
 "["
 "]"
 "{"
 "}"
 "<"
 ">"
 "<<"
 ">>"
] @punctuation.bracket

; Attribute groups
(attribute_group) @attribute