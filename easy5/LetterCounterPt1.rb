=begin 

Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

INPUTS: a string --> with one or more space separated words
OUTPUTS: a hash --> shows number of words of different sizes
RULES:
- Words consist of any string of characters that don't include a space.

ALGORITHM:
Split the string into an array by spaces called `words_arr`
Create an empty hash, `words_size_count`
Iterate over the word elements of `arr` and:
  - Check the length of each word
  - If the length is a key located in `words_size_count`, add 1 to the associated value
  - If the length is not a key ... create a key-value pair with a value 1
Output `word_size_count`

=end

def word_sizes(str)
  words_arr = str.split(" ")
  words_size_count = {}
  words_arr.each do |word|
    if words_size_count.has_key?(word.length)
      words_size_count[word.length] += 1
    else
      words_size_count[word.length] = 1
    end
  end
  words_size_count
end

# Examples
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}