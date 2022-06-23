# PROMPT
# Write a method that takes one argument, a string containing one 
# or more words, and returns the given string with words that contain five or 
# more characters reversed. Each string will consist of only letters and spaces. 
# Spaces should be included only when more than one word is present.

# INPUTS:
#   - A string
# OUTPUTS:
#   - A string
# RULES: 
#   - The returned string should reverse the words in the given string that contain >= 5 letters
#   - Input string can only contain letters and spaces
#
# ALGORITHM:
# Create method called 'reverse_words' that takes one argument called 'string'
#   Split string into an array and set it equal to 'reversed_words'
#   Iterate through each element (i.e., word) in the array
#     - If the element/word's size >= 5, reverse the element/word
#   Join the array

def reverse_words(string)
  reversed_words = string.split(' ')

  for word in reversed_words
    if word.size >= 5
      word.reverse!
    end
  end

  reversed_words = reversed_words.join(" ")
end



puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS