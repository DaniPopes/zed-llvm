; LLVM IR syntax highlighting
; Comments
(comment) @comment

; Keywords
[
  "define"
  "declare"
  "global"
  "constant"
  "private"
  "internal"
  "weak"
  "weak_odr"
  "linkonce"
  "linkonce_odr"
  "available_externally"
  "appending"
  "common"
  "extern_weak"
  "external"
  "dso_local"
  "dso_local_equivalent"
  "dso_preemptable"
  "default"
  "hidden"
  "protected"
  "dllimport"
  "dllexport"
  "unnamed_addr"
  "local_unnamed_addr"
  "addrspace"
  "source_filename"
  "target"
  "triple"
  "datalayout"
  "volatile"
  "atomic"
  "unwind"
  "to"
  "inbounds"
  "inalloca"
  "inrange"
  "module"
  "asm"
  "sideeffect"
  "alignstack"
  "inteldialect"
  "comdat"
  "attributes"
  "align"
  "distinct"
  "thread_local"
  "externally_initialized"
  "personality"
  "partition"
  "no_cfi"
  "uselistorder"
  "uselistorder_bb"
] @keyword

; Control flow
[
  "ret"
  "br"
  "switch"
  "indirectbr"
  "invoke"
  "callbr"
  "resume"
  "catchswitch"
  "catchret"
  "cleanupret"
  "unreachable"
] @keyword.control

; Type keywords
[
  "void"
  "half"
  "bfloat"
  "float"
  "double"
  "x86_fp80"
  "fp128"
  "ppc_fp128"
  "label"
  "metadata"
  "x86_mmx"
  "x86_amx"
  "token"
  "opaque"
  "ptr"
] @type

; Integer types
(type_keyword) @type

; Operators & Instructions
[
  "icmp"
  "fcmp"
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
  "xchg"
  "nand"
  "max"
  "min"
  "umax"
  "umin"
  "extractelement"
  "insertelement"
  "shufflevector"
  "select"
  "phi"
  "freeze"
  "call"
  "va_arg"
  "landingpad"
  "catchpad"
  "cleanuppad"
  "alloca"
  "load"
  "store"
  "cmpxchg"
  "atomicrmw"
  "fence"
  "getelementptr"
  "trunc"
  "zext"
  "sext"
  "fptrunc"
  "fpext"
  "bitcast"
  "addrspacecast"
  "uitofp"
  "sitofp"
  "fptoui"
  "fptosi"
  "inttoptr"
  "ptrtoint"
  "extractvalue"
  "insertvalue"
  "fneg"
] @function.builtin

; Comparison operators
[
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
  "une"
  "uno"
] @operator

; Fast math flags
[
  "nnan"
  "ninf"
  "nsz"
  "arcp"
  "contract"
  "afn"
  "reassoc"
  "fast"
  "nsw"
  "nuw"
  "exact"
] @attribute

; Atomic orderings
[
  "unordered"
  "monotonic"
  "acquire"
  "release"
  "acq_rel"
  "seq_cst"
  "syncscope"
] @constant.builtin

; Constants
[
  "true"
  "false"
  "null"
  "none"
  "undef"
  "poison"
  "zeroinitializer"
] @constant.builtin

; Numbers
(number) @number
(float) @number.float

; Strings
(string) @string
(cstring) @string

; Variables
(local_var) @variable
(global_var) @variable.special

; Labels
(label) @label

; Attributes
(attribute_name) @attribute
(attr_ref) @attribute

; Metadata
(metadata_name) @meta
(metadata_ref) @meta
(metadata_tuple) @meta
(specialized_md) @meta
(metadata_tuple) @meta

; Punctuation
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

; Calling convention
[
  "ccc"
  "fastcc"
  "coldcc"
  "webkit_jscc"
  "anyregcc"
  "preserve_mostcc"
  "preserve_allcc"
  "cxx_fast_tlscc"
  "tailcc"
  "swiftcc"
  "swifttailcc"
  "cfguard_checkcc"
  "ghccc"
] @attribute