=begin

PROMPT:
Write a method that takes a string, and returns a new string in which every consonant character is doubled. 
Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

INPUTS: a string
OUTPUTS: a new string -> in which every consonant character is doubled
RULES:
  - Vowels, digits, punctuation, and whitespace can't be doubled

EXAMPLES:
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

ALGORITHM:
Define method `double_consonants` that accepts one argument `string`
  Initialize new string `double_cons_string` that points to an object "" (i.e. it is an empty string)
  ITERATE through `string` and for each `char`:
    - if `char` is a consonant:
      -> add double `char` to `double_cons_string`
    - else
      -> add `char` to `double_cons_string`
  Return `double_cons_string`

=end

def double_consonants(string)
  double_cons_string = ""
  string.each_char do |char|
    if char.match?(/[bcdfghjklmnpqrstvwxyz]/i)
      double_cons_string << char << char
    else
      double_cons_string << char
    end
  end
  double_cons_string
end


# Test Cases
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""