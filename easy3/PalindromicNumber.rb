# Write a method that returns true if its integer argument is palindromic, false otherwise. 
# A palindromic number reads the same forwards and backwards.

# INPUTS: an integer
# OUTPUTS: a boolean
# RULES: 
#   - Output is `true` if integer input is palindromic
#   - Output is `false` if integer is not palindromic

# ALGORITHM: 
# Create method `palindromic_number(integer)'
#    Convert `integer` to a string called `string_digits`
#    Return `true` if `string_digits` is the same as the reverse of `string_digits`
#    Otherwise, return `false`

def palindromic_number?(integer)
  string_digits = integer.to_s
  string_digits == string_digits.reverse
end


# Examples:
puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true