=begin

PROMPT:
Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.


INPUTS: an array
OUTPUTS: a new array -> consisting of elements of original list in reverse order
RULES:
  - Do not modify the original list
  - Can't use Array#reverse or Array#reverse!
  - Can't use the method written in the previous exercise


ALGORITHM:
Define method `reverse` that accepts one argument `arr`
  Create new array `reversed_arr` -> set it equal to []
  Reverse iterate through `arr` and:
    Add each num `reversed_arr`
  Return `reversed_arr`


=end

def reverse(arr)
  reversed_arr = []
  arr.reverse_each { |num| reversed_arr << num }
  reversed_arr
end






# Examples:
p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
