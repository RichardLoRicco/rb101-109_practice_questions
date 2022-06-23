# The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. 
# String#to_i and the Integer constructor (Integer()) behave similarly. 
# In this exercise, you will create a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. 
# You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby to convert a string to a number, such as String#to_i, Integer(), etc. 
# Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.


# INPUTS: a string of digits
# OUTPUTS: returns the input as an integer
# RULES:
# - Can't use String#to_i method, Integer(), or any other of the standard conversion methods
# - Don't worry about leading + or - signs
# - Don't worry about invalid characters --> assume all characters will be numeric
# - Method must calculate result by analyzing the characters in the string 
#
# ALGORITHM:
# Define `string_to_integer` method that accepts one argument, `string_digits`
#   Create a hash `digits_conversion`
#     - Each digit will have its string value as a key and its integer value as a hash
#   Iterate through each digit and transform it using each as the key for `digits_conversion` hash

# THIS IS WHAT I TRIED AND COULDN'T FINISH:
# def string_to_integer(string_digits)
#   hash = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}
#   integer_digit = 1
#   count = 0
#   string_digits.each_char do |digit|
#     integer_digit[count] = hash[digit]
#     count + 1
#   end
#   integer_digit
# end

# THIS IS MY TRYING TO REPLICATE THE LAUNCH SCHOOL SOLUTION AFTER SEEING IT:
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end






# Examples:
puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570