# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. 
# The ASCII string value is the sum of the ASCII values of every character in the string. 
# (You may use String#ord to determine the ASCII value of a character.)

# INPUTS: a string
# OUTPUTS: an integer (the sum of ASCII values of each character in input string)
# RULES:
#   - Permitted to use String#ord to determine ASCII value of each character
#
# ALGORITM:
# - Create method `ascii_value` that accepts one argument `string`
#   - Split `string` into an array, `array` with each character in the string being an element in `array` 
#   - Create `ascii_sum` variable and set it equal to zero
#   - Iterate over `array` and:
#     1. Derive ascii value for each character
#     2. Add value to `ascii_sum`
#   - Return `ascii_sum`

def ascii_value(string)
  array = string.split("")
  ascii_sum = 0
  array.each do |char|
    ascii_sum += char.ord
  end
  ascii_sum
end


# Test Cases
p ascii_value('Four score') == 984
# => true
p ascii_value('Launch School') == 1251
# => true
p ascii_value('a') == 97
# => true
p ascii_value('') == 0
# => true