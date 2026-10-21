(identifier) @property

(symfony_variable) @variable

(constant) @constant

[
  (modifier_function)
  (symfony_function)
  (symfony_method)
] @function

[
  (modifier_predefined)
  (symfony_predefined_function)
] @function

(modifier_parameter) @variable.parameter

(symfony_function_parameter
  (symfony_variable) @variable.parameter)

(symfony_method_parameter
  (symfony_variable) @variable.parameter)

[
  (condition)
  (condition_end)
  (condition_else)
] @keyword

[
  "@import"
  "INCLUDE_TYPOSCRIPT"
] @preproc

(condition_attribute) @attribute

(cobject) @type

(symfony_built_in_variable) @variable.special

[
  (comment)
  (single_line_comment)
  (symfony_comment)
] @comment

[
  (string)
  (multiline_value_content)
  (symfony_string)
] @string

(deletion_line
  ">" @operator)

(copy_line
  "<" @operator)

[
  "="
  "=<"
  ":="
  "?."
  (symfony_condition_operator)
  (symfony_ternary_operator)
  (condition_bool_legacy)
  (constant_null_coalescing)
] @operator

((symfony_condition_operator) @keyword
  (#match? @keyword "^(and|or|xor|not|not in|in|contains|starts with|ends with|matches)$"))

[
  ","
  "."
] @punctuation.delimiter

[
  "("
  ")"
  "["
  "]"
  (block_punctuation)
] @punctuation.bracket

(condition
  "[" @punctuation.special)

(condition
  "]" @punctuation.special)

(symfony_number) @number

(symfony_boolean) @boolean

(symfony_null) @constant.builtin
