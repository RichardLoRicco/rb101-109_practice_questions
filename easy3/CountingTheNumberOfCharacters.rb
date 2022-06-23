# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. 
# Spaces should not be counted as a character.

# INPUTS: a word or words (string)
# OUTPUTS: the number of characters
# RULES:
#   - Spaces should not be counted as a character

# ALGORITHM:
#   Ask for an input of a word or words
#     - Save input as `user_input`
#   Remove whitespace from `user_input`
#   Convert `user_input` to an array consisting of its characters called `array_user_input`
#   Count the number of elements in `array_user_input` 
#   Output the result

p "Please write word or multiple words: "
user_input = gets.chomp

user_input_no_spaces = user_input.delete(" ")
array_user_input = user_input_no_spaces.split("")

count = array_user_input.count.to_s
puts "There are #{count} characters in #{user_input}."