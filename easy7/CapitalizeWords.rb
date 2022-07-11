# Write a method that takes a single String argument and returns a new string that contains the original value of the argument with
#  the first character of every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

=begin

INPUTS: a string
OUTPUTS: a new string -> same as argument but with the first character of every word capitalized and all other letters lowercase
RULES: 
  - Words are any sequence of non-blank characters

ALGORITHM:
Define method `word_cap` that accepts one argument `string`
  Split `string` by spaces and for each `word`:
    lowercase the `word`
    `uppercase` the first letter of the word
  Join the above using spaces

=end

def word_cap(string)
  arr_word_cap = string.split(" ").each do |word|
    word.downcase! # looking back I know I don't need this --> String#capitalize! also downcases all other characters
    word.capitalize!
  end
  string_word_cap = arr_word_cap.join(" ")
end


# Examples
p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
