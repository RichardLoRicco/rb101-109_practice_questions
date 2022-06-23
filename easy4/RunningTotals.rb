# Write a method that takes an Array of numbers, and returns an Array with the same
# number of elements, and each element has the running total from the original Array.

# INPUTS: an array of numbers
# OUTPUTS: a new array with each element being a running total from the original array
# RULES:
#   - new array must have same number of elements as original
#
# ALGORITHM:
# Define method `running_total` that takes one argument, `array`
#   Create new array called `sum_array`
#   Create new variable called `sum_integer` and set it equal to 0
#   For each element in `array`
#     - add to `sum_integer`
#     - add `sum_integer` to `sum_array`
#    Return `sum_array`

def running_total(array)
  sum_array = []
  sum_integer = 0
  array.each do |element|
    sum_integer += element
    sum_array << sum_integer
  end
  sum_array
end


# Examples:
puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []