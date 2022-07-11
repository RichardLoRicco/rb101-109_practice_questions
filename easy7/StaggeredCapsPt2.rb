# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter.
# The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

=begin

INPUTS: a string
OUTPUTS: a string -> contains original value but incorporate staggered capitalization scheme (caps, lowercase, caps, etc.) that ignores non-alphabetic characters
RULES:
  - Non-alphabetic characters should still be included in return value, they just don't count when toggling the case


Example:
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

ALGORITHM:
Define method `staggered_case` that accepts one argument string
  Create an empty string `result`
  Create a boolean variable `need_upper` and set it to true
  Iterate through the characters of `string` and:
    Check if `char` is alphabetic. If so:
      - If `need_upper` is true:
        -> Add upcased `char` to `result`
      - If `need_upper` is false:
        -> add downcased `char` to `result`
    Change `need_upper` to opposite boolean value
    If not alphabetic:
      - Add `char` to `result`
  Return newly modified `result`

=end

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-zA-z]/
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

# Test Cases
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
