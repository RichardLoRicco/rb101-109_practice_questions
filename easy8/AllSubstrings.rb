=begin

PROMPT:
Write a method that returns a list of all substrings of a string. 
The returned list should be ordered by where in the string the substring begins. 
This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on.
Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.
You may (and should) use the leading_substrings method you wrote in the previous exercise:

INPUTS: a string
OUTPUTS: an array

EXAMPLES:
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
ALGORITHM:
Define method `leading_substrings` that accepts one argument `string`
  Initialize variable `length` and set it equal to 0
  Initialize an empty array `arr_substrings`
  ITERATE through `string` with index and:
    Add 1 to length
    Add a slice of `string` to `arr_substrings` array, starting at index `index` and with length of the slice being `length` - `index`
  Output `arr_substrings`
=end



# THIS IS NOT COMPLETE
def substrings(string)
  length = 0
  arr_substrings = []
  string.each_char.with_index do |char, index|
    length += 1
    arr_substrings << string.slice(index, length - index)
  end
  arr_substrings
end

# Test Cases
p substrings('abcde') # == [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]