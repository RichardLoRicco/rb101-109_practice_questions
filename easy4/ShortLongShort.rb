# Write a method that takes two strings as arguments, determines the longest of the two strings, and then 
# returns the result of concatenating the shorter string, the longer string, and the shorter string once again.
# You may assume that the strings are of different lengths.

# INPUTS: two strings
# OUTPUTS: returns result of concatenating shorter string, longer string, and shorter string once again
# RULES: 
#   - Assume string are different lengths --> Don't worry about any situation where they are the same

# ALGORITHM:
# Define method `short_long_short(string_1, string_2)`
#   - if size of `string_1` is greater than size of `string_2`:
#     - return `string_2` + `string_1` + `string_2`
#   - else if `string_2` is greater than size of `string_1`:
#     - return `string_1` + `string_2` + `string_1`

def short_long_short(string_1, string_2)
  if string_1.size > string_2.size
    string_2 + string_1 + string_2 
  elsif string_2.size > string_1.size
    string_1 + string_2 + string_1 
  end
end

# Examples:
puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"