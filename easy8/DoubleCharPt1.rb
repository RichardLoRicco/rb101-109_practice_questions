=begin

PROMPT:
Write a method that takes a string, and returns a new string in which every character is doubled.

INPUTS: a string
OUTPUTS: a new string -> every character from input string is doubled
RULES:

EXAMPLES:
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

ALGORITHM:
Define method `repeater` that accepts one argument, `string`
  Initialize a new string `double_string` pointing to object "" (i.e. an empty string)
  ITERATE through `string` and for each `char`:
    Add 2 * `char` to `double_string`
  Return `double_string`


=end

def repeater(string)
  double_string = ""
  string.each_char { |char| double_string << (char + char) }
  double_string
end




# Test Cases
p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''