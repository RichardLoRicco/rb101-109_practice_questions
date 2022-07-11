# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, 
#   one the number of characters that are uppercase letters, and one the number of characters that are neither.

=begin

INPUTS: a string
OUTPUTS: a hash
RULES:
  - the output hash contains 3 entries:
      -> one represents the number of characters in the string that are lowercase letters
      -> one represents the number of characters that are uppercase letters; and 
      -> one represents the number of characters that are neither lowercase nor uppercase letters
QUESTIONS:
  - How do I treat spaces? Do I treat them as a character that is neither lowercase nor uppercase?

ALGORITHM:
Define method `letter_case_count` that accepts one argument `string`
  Create the following variables (each of which is set to zero):
    `lowercase_char`
    `uppercase_char`
    `neither_char`
  For each character in string:
    - if the character is lowercase, increment `lowercase_char`
    - if the character is uppercase, increment `uppercase_char`
    - if the character is neither, increment `neither_char`
  Create a new hash called `letter_case_count_hash`, using the above variables as the values

=end

def letter_case_count(string)
  lowercase_char = 0
  uppercase_char = 0
  neither_char = 0
  string.each_char do |char|
    if char.match?(/[a-z]/)
      lowercase_char += 1
    elsif char.match?(/[A-Z]/)
      uppercase_char += 1
    else
      neither_char += 1
    end
  end
  letter_case_count_hash = { lowercase: lowercase_char, uppercase: uppercase_char, neither: neither_char }
end






# Examples
p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
