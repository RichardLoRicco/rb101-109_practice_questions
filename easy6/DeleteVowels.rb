=begin

PROMPT:
Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

INPUTS: an array of strings
OUTPUTS: an array of strings -> same as input, but with vowels removed
ALGORITHM:
Define method `remove_vowels` that takes one argument, `arr`
  Iterate over each str in `arr` and:
    - remove vowels from each str
  output mutated `arr`

=end

def remove_vowels(arr)
  arr.each do |str|
    str.gsub!(/[aeiou]/i, '')
  end
  arr
end

# Example:
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']