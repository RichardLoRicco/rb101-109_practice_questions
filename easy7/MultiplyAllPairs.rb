=begin
PROMPT:
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the 
  product of every pair of numbers that can be formed between the elements of the two Arrays. 
The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.


INPUTS: two arrays -> each containing list of numbers
OUTPUTS: one array -> contains product of every pair of numbers that can be formed between elements of two arrays
RULES:
  - Output must be sorted by increasing value
  - Output must be a new array

EXAMPLES:
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

ALGORITHM:
Define new method `multiply_all_pairs` that accepts two arguments `arr1` and `arr2`
  Create a new empty array `multiplied_pairs_array`
  ITERATE over `arr1` and for each `num`:
    - Create a new index variable `index` and set it to 0
    - LOOP as follows:
      - multiply `num` by the value at index `index` and add it to `multiplied_pairs_array`
      - add 1 to `index`
      - BREAK out of the loop when index >= size of `arr2`
  Return `multiplied_pairs_array` sorted by increasing value

=end

def multiply_all_pairs(arr1, arr2)
  multiplied_pairs_array = []
  arr1.each do |num|
    index = 0
    loop do
      multiplied_pairs_array << num * arr2[index]
      index += 1
      break if index >= arr2.size
    end
  end
  multiplied_pairs_array.sort
end


# Test Cases:
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) # == [2, 4, 4, 6, 8, 8, 12, 16]