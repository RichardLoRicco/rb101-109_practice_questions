=begin

Write a method that returns a list of all substrings of a string that start at the beginning of the original string. 
The return value should be arranged in order from shortest to longest substring.

INPUTS: a string
OUTPUTS: an array of strings -> list of all substrings of input string that start at beginning of original string
RULES:
  - Return value should be arrange in order form shortest to longest substring

EXAMPLES:
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

ALGORITHM:
Define method `leading_substrings` that accepts one argument `string`
  Initialize variable `length` and set it equal to 0
  Initialize an empty array `arr_substrings`
  LOOP as follows:
    Add 1 to `length`
    Add a slice of `string` to `arr_substrings` array, starting at index 0 and with length of the slice being `length`
    BREAK out of the loop when `length` = the size of `string`
  Output `arr_substrings`

=end

def leading_substrings(string)
  length = 0
  arr_substrings = []
  loop do 
    length += 1
    arr_substrings << string.slice(0, length)
    break if length >= string.length
  end
  arr_substrings
end


# Test Cases
p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']