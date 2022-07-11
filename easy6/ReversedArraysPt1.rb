=begin

PROMPT:
Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. 
The return value should be the same Array object.

You may not use Array#reverse or Array#reverse!.

INPUTS: an array
OUTPUTS: an array -> consisting of the reverse of the array argument
RULES:
  - Can't use Array#reverse or Array#reverse!

ALGORITHM:
Define method `reverse!` that accepts one argument, `arr`
  Create variable `left_index` and set it equal to 0
  Create variable `right_index` and set it equal to -1
  Until `left_index` <= half the length of `arr`:
    swap `left_index` value of `arr` with `right_index` value of `arr`
    add one to `left_index`
    subtract one from `right_index` 
  Return `arr

=end

def reverse!(arr)
  left_index = 0
  right_index = -1
  until left_index >= arr.size/2
    arr[left_index], arr[right_index] = arr[right_index], arr[left_index]
    left_index += 1
    right_index -= 1
  end
  arr
end


# Examples:
list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true
# Note: for the test case list = ['abc'], we want to reverse the elements in the array. 
# The array only has one element, a String, but we're not reversing the String itself, so the reverse! method call should return ['abc'].

