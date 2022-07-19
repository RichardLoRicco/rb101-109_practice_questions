=begin

PROMPT:
Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise.
Characters that are not alphabetic should be ignored.

INPUTS: a string
OUTPUTS: a boolean
  - True if all of the alphabetic characters inside the string are uppercase
  - False if not
RULES:
  - Characters that aren't alphabetic should be ignored.

EXAMPLES:
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

ALGORITHM:
Define method `uppercase?` that accepts one argument, `string`
  CONDITIONAL:
  String.upcase = string

=end


def uppercase?(string)
  string.upcase == string
end



# Test Cases:
p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true