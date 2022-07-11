# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, 
#   with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

=begin

INPUTS: two arrays
OUTPUTS: one array -> contains all elements from two array arguments, with elements taken in alternation
RULES:
  - Output array is a new array
ALGORITHM:
Define method `interleave` that accepts two array arguments, `arr1` and `arr2`
  Create a counter variable `count` and set it equal to zero
  Create a new empty array `combined_arr`
  Loop as follows:
    Add the element in index position `count` for `arr1` to `combined_arr`
    Add the element in index position `count` for `arr2` to `combined_arr`
    Break out of the loop when `count` is equal to (the size of `arr1` - 1)
    Increment count + 1
  Output `combined_arr`


=end

def interleave(arr1, arr2)
  count = 0
  combined_arr = []
  loop do 
    combined_arr << arr1[count]
    combined_arr << arr2[count]
    break if count == (arr1.size - 1)
    count += 1
  end
  combined_arr
end


# Example:
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']