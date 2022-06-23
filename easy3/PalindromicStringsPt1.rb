# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. 
# A palindrome reads the same forward and backward. 
# For this exercise, case matters as does punctuation and spaces.

# INPUTS: a string
# OUTPUTS: a boolean
# RULES:
#   - Outputs `true` if the string passed as an argument is a palindrome (reads same forward and backward)
#   - Otherwise, outputs `false`
#   - Case, punctuation, and spaces matter

# ALGORITHM:
#   Create method `palindrome?(string)`
#     return `true` if `string` is equal to the reverse of `string`

def palindrome?(string)
  string == string.reverse
end



# Examples:
puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true