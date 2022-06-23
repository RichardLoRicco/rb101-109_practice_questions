# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. 
# This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. 
# If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

# INPUTS: a string
# OUTPUTS: a boolean
# RULES:
#   - Outputs `true` if the string passed as an argument is a palindrome (reads same forward and backward)
#   - Otherwise, outputs `false`
#   - This method is case-insensitive
#   - This method ignores all non-alphanumeric characters

# ALGORITHM:
#   Create method `palindrome?(string)`
#     Mutate `string` to remove all non-alphanumeric characters --> HOW?
#     downcase `string` to make case-insensitive
#     return `true` if `string` is equal to the reverse of `string`

def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end





# Examples:
puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false