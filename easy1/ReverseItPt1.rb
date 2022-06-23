# PROMPT:
# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

# UNDERSTAND THE PROBLEM 
# Inputs: a string
# Outputs: a new string (in reverse order)
# Rules:
#   - The new string should preserve case-sensitivity

# ALGORITHM:
# Create a method called 'reverse_sentence' that takes one string, 'sentence', as an argument
# Split 'sentence' into an array of words and set that to a new variable called 'reversed_sentence'
#   - Reverse the order of the elements (i.e., the words) within the 'reversed_sentence' array
#   - Join the words within the 'reversed_sentence' array, separated by a space.

def reverse_sentence(sentence)
  reversed_sentence = sentence.split(" ").reverse!.join(" ")
end




# Examples
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''