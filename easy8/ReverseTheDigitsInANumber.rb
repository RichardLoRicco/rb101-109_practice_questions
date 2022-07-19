=begin

PROMPT:
Write a method that takes a positive integer as an argument and returns that number with its digits reversed. 

Don't worry about arguments with leading zeros - Ruby sees those as octal numbers, which will cause confusing results. 
For similar reasons, the return value for our fourth example doesn't have any leading zeros.

INPUTS: a positive integer
OUTPUTS: a positive integer -> the input integer with its digits reversed
RULES:
  - Don't worry about arguments with leading zeros

EXAMPLES:
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

ALGORITHM:
Define method `reversed_number` that accepts one argument `int`
  Initialize an empty array `digits_reversed`
  Convert `int` into a string array and reversely ITERATE through the array. For each `digit`:
    - add `digit` to `digits_reversed`
  Join `digits_reversed`  

=end

def reversed_number(int)
  digits = int.to_s.split("")
  digits_reversed = []
  digits.reverse_each { |digit| digits_reversed << digit } 
  digits_reversed.join("").to_i
end


# Test Cases:
p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1