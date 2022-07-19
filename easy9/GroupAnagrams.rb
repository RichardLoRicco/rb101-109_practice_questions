=begin

PROMPT:
Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
Write a program that prints out groups of words that are anagrams. 
Anagrams are words that have the same exact letters in them but in a different order. 

Your output should look something like this:
["demo", "dome", "mode"]
["neon", "none"]
#(etc)


INPUTS: an array
  - consisting of a list of words
OUTPUTS: several arrays
  - consisting of groups of words that are anagrams
RULES:
  - it looks like we don't want duplicates

ALGORITHM:
For EACH `word` in `words`:
  check if word includes


=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']


# I WATCHED THE VIDEO TO GET THE BELOW

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"
  p v
end