=begin

PROMPT:
Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. 
If the argument has an odd length, you should return exactly one character. 
If the argument has an even length, you should return exactly two characters.

EXAMPLES:
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

INPUTS: a string -> non-empty
OUTPUTS: one or two characters -> string
RULES:
  - Returns middle character or characters of the argument
  - If argument has odd length, return one character
  - If argument has even length, return two characters

ALGORITHM:
Define method `center_of` that accepts one argument `string`
  Initialize variable `length` that points to length of `string`
  CONDITIONAL:
  If length of `string` is odd:
    - Return `string` character at index [length/2 -0.5]
  If legnth of `string` is even:
    - Return `string` characters at indexs [length/2] and [length/2 -1]

=end

def center_of(string)
  length = string.length
  if length.odd?
    string[length/2.floor]
  else
    string[length/2 - 1] + string[length/2] 
  end
end


# Test Cases:
p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
