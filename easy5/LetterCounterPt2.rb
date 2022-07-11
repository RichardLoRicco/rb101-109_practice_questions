=begin

PROMPT:
Modify the `word_sizes` method from the previous exercise to exclude non-letters when determining word size. 
For instance, the length of `"it's"` is 3, not 4.


=end

def word_sizes(str)
  words_arr = str.split(" ")
  words_size_count = {}
  words_arr.each do |word|
    word.gsub!(/\W+/, '')
    if words_size_count.has_key?(word.length)
      words_size_count[word.length] += 1
    else
      words_size_count[word.length] = 1
    end
  end
  words_size_count
end

# Examples
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}