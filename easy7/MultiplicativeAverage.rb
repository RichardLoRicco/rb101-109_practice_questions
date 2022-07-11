# Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, 
#   and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

=begin

INPUT: an array of integers
OUTPUT: a float
RULES:
  - Method must multiply the integers in the array together and divide the result by the number of entries in the array
  - Print the results rounded to 3 decimal places
  - Assume the array is non-empty

Examples:
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667


ALGORITHM:
Define method `show_multiplicative_average` which accepts one argument `arr`
  Define a variable `multiplicative_average` and set it to 1.0
  Iterate over `arr` and for each `num`:
    Multiply `num` by `multiplicative_average`
  Divide `multiplicative_average` by the size of `arr`
  Format to 3 decimal places

=end

def show_multiplicative_average(arr)
  multiplicative_average = 1.0
  arr.each { |num| multiplicative_average *= num }
  format("%.3f", multiplicative_average/(arr.size))
end


# Test Cases
p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667