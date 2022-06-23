# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# INPUTS: a positive integer
# OUTPUTS: a positive integer (the sum of the digits of the input integer)
# RULES:
# - 

# ALGORITHM:
# Create method called 'sum' that takes one argument called 'positive_integer'
#   Create a counter variable called 'count' and set it to zero
#   Create a 'sum_of_integers' variable and set it to zero
#   Until 'count' is equal to the length of the integer:
#   - Add the values for each index of 'positive_integer' to the sum variable


# Create method called 'sum' that takes one argument called 'positive_integer'
# Split 'positive_integer' into an array, with each digit being an element
#   Sum the elements of the array and divide by the length of the array

# For a challenge, try writing this without any basic looping constructs (`while`, `until`, `loop`, and `each`).

def sum(positive_integer)
  integer_digits = positive_integer.digits
  integer_digits.sum
end


# Examples:
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
# The tests above should print `true`.

