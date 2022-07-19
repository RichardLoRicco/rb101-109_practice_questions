=begin

PROMPT:
Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. 
You may assume that the Array always contains at least one number.

INPUTS: an array of integers (no floats, right?)
OUTPUTS: an integer -> the sum of the sums of each leading subsequence for that Array
RULES:
  - Assume that the Array always contains at least one number

EXAMPLES:
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

ALGORITHM:
Define method `sum_of_sums` that accepts one argument `array`
  Create a new variable `total` and set it to 0
  Create a new empty array `running_sub_sums` 
  Iterate through `array` and for each `num`, do as follows:
    - Add `num` to `running_sub_sums`
    - Add the total of `running_sub_sums` to `total`
  Output the final value of `total` 

=end

def sum_of_sums(array)
  total = 0
  running_sub_sums = []
  array.each do |num|
    running_sub_sums << num
    total += running_sub_sums.sum
  end
  total
end


# Test Cases
p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35