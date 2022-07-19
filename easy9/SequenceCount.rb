=begin

PROMPT:
Create a method that takes two integers as arguments.
The first argument is a count, and the second is the first number of a sequence that your method will create.
The method should return an Array that contains the same number of elements as the count argument, while the values of 
  each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. 
If the count is 0, an empty list should be returned.

INPUTS: two integers
  - first is a count
  - cecond is the first number of a sequence that the method will create
OUTPUTS: an array
  - contains the same number of elements as the count argument
  - the values of each element will be multiples of the starting number
RULES:
- Assume that the count argument will always have value of 0 or greater
- Starting number can be any integer value
- If count is 0, return empty list

EXAMPLES:
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

ALGORITHM:
Define method `sequence` that accepts two arguments, `count` and `starting_number`
  Initalize an empty array `multiples`
  Initalize variable `running_tally` that points to `starting_number`
  `COUNT` TIMES: 
    Add `running_tally` to `multiples`
    Add `starting_number` to `running_tally`
  Return `multiples` array

=end

def sequence(count, starting_number)
  multiples = []
  running_tally = starting_number
  count.times do 
    multiples << running_tally
    running_tally += starting_number
  end
  multiples
end

# Test Cases
p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []