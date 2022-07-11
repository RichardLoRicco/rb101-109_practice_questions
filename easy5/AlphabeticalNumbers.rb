=begin 

PROMPT:
Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted 
  based on the English words for each number:
zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

INPUTS: an array of integers (between 0 and 19)
OUTPUTS: an array of integers (sorted)
RULES:
- Sort the array of integers based on the English words for each number

ALGORITHM:
Create a hash of integer keys with english word values, `integers_and_words`
Sort the hash by value
Iterate over the resulting nested array and transform each subarray:
  - return only the first element of the subarrays -> creating an array of just the first elements

=end 

INTEGERS_AND_WORDS = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six',
                       7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen',
                       14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen' }

def alphabetic_number_sort(arr)
  sorted_integers_and_words = INTEGERS_AND_WORDS.sort_by { |k, v| v}
  p sorted_integers_and_words.map { |arr| arr[0] }
end


# Examples:
p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
