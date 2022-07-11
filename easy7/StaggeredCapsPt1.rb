# Write a method that takes a String as an argument, and returns a new String that contains the original value using a 
#   staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. 
# Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

=begin

INPUTS: a string
OUTPUTS: a new string -> contains original value but incorporates a staggered capitalization scheme (caps, lowercase, caps, lowercase, etc.)
RULES: 
  - Character that are not letters should not be changed, but they count as characters when switching between upper and lowercase

EXAMPLES:
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

ALGORITHM:
Define method `staggered_case` that accepts one argument, `string`
  Create index variable `index` and set it to zero -> this will be used for iterating through the string's characters
  Define a loop that:
    -If index is cleanly divided by 2 (is even):
      -> Upcase! the `string` character at `index`
    -If index is not cleanly diveded by 2(is odd)
      -> Downcase! the `string` character at `index`
    -BREAK if `index` is (the size of `string` - 1)
    -Increment `index` by 1
  Return the newly mutated `string`

=end

def staggered_case(string)
  index = 0
  loop do
    if index % 2 == 0
      string[index] = string[index].upcase
    elsif index % 2 == 1
      string[index] = string[index].downcase
    end
    break if index == (string.size - 1)
    index += 1
  end
  string
end


# Test Cases
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'