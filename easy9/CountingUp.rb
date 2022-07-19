=begin

PROMPT:
Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

INPUTS: an integer
OUTPUTS: an array
  - Array contains all integers, in sequence, between 1 and the argument
RULES:
  - Assume that the argument will always be a valid integer that is greater than 0

EXAMPLES:
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

ALGORITHM:
Define method `sequence` that accepts one argument `integer`
  Initalize an empty array `range`
  Initialize counter variable `count` and set it to 0
  LOOP as follows:
    Add 1 to `count`
    Add `count` to `range`
    BREAK when `count` = `integer`
  RETURN `range`

=end

def sequence(integer)
  range = []
  count = 0
  loop do
    count += 1
    range << count
    break if count >= integer
  end
  range
end

# Test Cases
p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]