=begin

Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that 
  returns that string with all of the non-alphabetic characters replaced by spaces. 
If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

INPUTS: a string (consists of words and non-alphabetic characters)
OUTPUTS: a string (with the non-alphabetic characters replaced by spaces)
RULES:
- If one or more non-alphabetic characters occur in a row, you should only have one space in the result

ALGORITHM:
Remove all non-alphabetic characters and replace with a space
Check that there is not more than one space in a row.
  - If there are more than one space in a row, remove the spaces until there is only one

=end

def cleanup(string)
  string.gsub!(/[^a-z]/i, ' ')
  string = string.gsub("\n", ' ').squeeze(' ')
end

# Examples:
p cleanup("---what's my +*& line?") == ' what s my line '
