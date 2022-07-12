=begin

PROMPT:
Write a method that returns the next to last word in the String passed to it as an argument.
Words are any sequence of non-blank characters.
You may assume that the input String will always contain at least two words.

INPUTS: a string
OUTPUTS: a string -> the second to last word in the string passed to the method
RULES:
  - Assume that the input String will always contain at least two words
  - WOrds are any sequence of non-blank characters

EXAMPLES:
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

ALGORITHM:
Define method `penultimate` that accepts one argument `string`
  Split `string` into an array `arr`
  Define `index` and set it to the size of `arr` - 2
  Return the word at index `index` in `arr`

=end

def penultimate(string)
  arr = string.split(" ")
  index = arr.size - 2
  arr[index]  
end



# Test Cases
p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'