# Given a string of words separated by spaces, write a method that takes this string of words 
#   and returns a string in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter, and that the string 
#   will always contain at least one word. 
# You may also assume that each string contains nothing but words and spaces

# INPUTS: a string of words separated by spaces
# OUTPUTS: a string (with first and last letters of every word swapped)
# RULES:
#   - Assume each string contains nothing but words and spaces (no numbers, symbols, etc.)
#
# ALGORITHM:
# Create method `swap` that accepts one argument, `string`
#   Split the string into an array of words, `arr` using spaces as the splitting point
#   Create new variable `swapped_arr` --> Iterate over each `word` within `arr`, transforming each `word` as follows:
#     - creates `new_word` and sets it equal to `word`
#     - sets the first letter of `new_word` equal to the last letter of `word`
#     - sets the last letter of `new_word` equal to the first letter of `word`
#     - returns `new_word`
#   `swapped_string` --> Join `swapped_arr`, inserting spaces between each word
#   return `swapped_string`

def swap(string)
  arr = string.split(" ")
  swapped_arr = arr.map do |word|
    new_word = word
    last_letter = word[-1]
    first_letter = word[0]
    new_word[0] = last_letter
    new_word[-1] = first_letter
    new_word
  end
  swapped_string = swapped_arr.join(" ")
  swapped_string
end


# Examples:
p swap('Oh what a wonderful day it is')  == 'hO thaw a londerfuw yad ti si'
p swap('Abcde')  == 'ebcdA'
p swap('a')  == 'a'