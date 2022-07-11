=begin

PROMPT:
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array 
that contains the product of each pair of numbers from the arguments that have the same index. 
You may assume that the arguments contain the same number of elements.

INPUTS: two arrays
OUTPUTS: one array -> contains product of each pair of numbers from the arguments that have the same index
RULES:
  - Assume that arguments contain same number of elements

Examples:
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

ALGORITHM:
Define method `multiply_list` that accepts two arguments `arr1` and `arr2`
  Create a new empty array `multiplied_arr`
  Iterate through `arr1` with index and for each `num`:
    -> multiply `num` with the element at the same index in `arr2` --> add this to `multiplied_arr`
  Return `multiplied_arr`

=end

def multiply_list(arr1, arr2)
  multiplied_arr = []
  arr1.each_with_index { |num, index| multiplied_arr << (num * arr2[index])}
  multiplied_arr
end


# Test Cases
p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]