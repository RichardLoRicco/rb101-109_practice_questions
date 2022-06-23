# Write a method that returns an Array that contains every other element of an `Array` that is passed in as an argument. 
# The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# INPUTS: an array
# OUPUTS: a new array --> containing the alternating elements of the input array
# RULES:
#   - The values in the new array must be the values that are the the 1st, 3rd, 5th, and so elements of the argument array
#
# ALGORITHM:
#   Create method called `oddities([array])`
#     Create `count` variable and set it to 1
#     Create new array `odd_array` and set it to []
#     Iterate through `array`
#       - For each element in array, if count is odd, add the element to the `odd_array`
#       - Add 1 to count
#     Output `odd_array`

def oddities(array)
  count = 1
  odd_array = []
  array.each do |element|
    odd_array << element if count.odd?
    count += 1
  end
  odd_array
end





# Examples:
puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []