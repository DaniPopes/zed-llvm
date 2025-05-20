; Keywords
[
  "add"
  "addrspace"
  "addrspacecast"
  "align"
  "alloca"
  "and"
  "arcp"
  "ashr"
  "asm"
  "atomic"
  "atomicrmw"
  "attributes"
  "available_externally"
  "bitcast"
  "blockaddress"
  "br"
  "byval"
  "c"
  "call"
  "callbr"
  "catch"
  "catchpad"
  "catchret"
  "catchswitch"
  "ccc"
  "cleanup"
  "cleanuppad"
  "cleanupret"
  "cmpxchg"
  "comdat"
  "common"
  "constant"
  "datalayout"
  "declare"
  "default"
  "define"
  "dereferenceable"
  "distinct"
  "dllexport"
  "dllimport"
  "double"
  "dso_local"
  "dso_preemptable"
  "extractelement"
  "extractvalue"
  "fadd"
  "false"
  "fast"
  "fcmp"
  "fdiv"
  "fence"
  "filter"
  "float"
  "fneg"
  "fpext"
  "fptosi"
  "fptoui"
  "fptrunc"
  "frem"
  "from"
  "fsub"
  "getelementptr"
  "global"
  "half"
  "hidden"
  "icmp"
  "ifunc"
  "inalloca"
  "inbounds"
  "indirectbr"
  "initialexec"
  "inlinehint"
  "inrange"
  "insertelement"
  "insertvalue"
  "inteldialect"
  "internal"
  "inttoptr"
  "invoke"
  "label"
  "landingpad"
  "linkonce"
  "linkonce_odr"
  "load"
  "local_unnamed_addr"
  "lshr"
  "metadata"
  "module"
  "mul"
  "musttail"
  "nand"
  "ne"
  "ninf"
  "nnan"
  "noalias"
  "nocapture"
  "none"
  "nonnull"
  "norecurse"
  "noreturn"
  "notail"
  "nsw"
  "nsz"
  "null"
  "nuw"
  "oeq"
  "oge"
  "ogt"
  "ole"
  "olt"
  "one"
  "opaque"
  "or"
  "ord"
  "personality"
  "phi"
  "poison"
  "private"
  "protected"
  "ptrtoint"
  "readonly"
  "readnone"
  "release"
  "resume"
  "ret"
  "returns_twice"
  "sdiv"
  "section"
  "select"
  "seq_cst"
  "sext"
  "sge"
  "sgt"
  "shl"
  "shufflevector"
  "sideeffect"
  "sitofp"
  "sle"
  "slt"
  "source_filename"
  "speculatable"
  "spir_kernel"
  "srem"
  "sret"
  "store"
  "strictfp"
  "sub"
  "swiftasync"
  "swiftcc"
  "swifterror"
  "swiftself"
  "switch"
  "syncscope"
  "tail"
  "target"
  "thread_local"
  "to"
  "token"
  "triple"
  "true"
  "trunc"
  "type"
  "udiv"
  "ueq"
  "uge"
  "ugt"
  "uitofp"
  "ule"
  "ult"
  "umax"
  "umin"
  "undef"
  "une"
  "unnamed_addr"
  "uno"
  "unreachable"
  "unwind"
  "urem"
  "uselistorder"
  "uselistorder_bb"
  "uwtable"
  "va_arg"
  "void"
  "volatile"
  "weak"
  "weak_odr"
  "within"
  "writeonly"
  "x86_fp80"
  "x86_mmx"
  "xchg"
  "xor"
  "zeroext"
  "zeroinitializer"
  "zext"
] @keyword

; Types
(type_keyword) @type
(array_type) @type
(vector_type) @type
(struct_type) @type
(packed_struct_type) @type

; Labels
(label) @label

; Numbers
(number) @number
(float) @number

; Strings
(string) @string
(cstring) @string

; Comments
(comment) @comment

; Variables
(local_var) @variable
(global_var) @variable.special

; Attributes
(attribute_name) @attribute

; Function declarations and definitions
(function_header name: (global_var) @function)
(define name: (global_var) @function)
(declare name: (global_var) @function)

; Function calls
(_call_part callee: (value (var) @function))

; Operators
(bin_op_keyword) @operator
(fcmp_cond) @operator
(icmp_cond) @operator
(cast_inst) @operator
(fast_math) @operator

; Metadata
(metadata_name) @tag
(metadata_ref) @tag

; Delimiters
"(" @punctuation.bracket
")" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket
"<" @punctuation.bracket
">" @punctuation.bracket
"<{" @punctuation.bracket
"}>" @punctuation.bracket

; Separators
"," @punctuation.delimiter
":" @punctuation.delimiter
"=" @punctuation.delimiter
"..." @punctuation.special