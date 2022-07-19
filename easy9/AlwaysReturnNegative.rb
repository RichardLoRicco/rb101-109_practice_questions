=begin

Write a method that takes a number as an argument. 
If the argument is a positive number, return the negative of that number. 
If the number is 0 or negative, return the original number.

INPUTS: an integer
  - Can be positive or negative
OUTPUTS: an integer
  - If argument is positive, output is negative of number
  - If argument is negative, output is the original number

EXAMPLES:
negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

ALGORITHM:
Define method `negative` that accepts one argument `integer`
  CONDITIONAL
  If `integer` is positive
    - Return negative of `integer`
  Else
    - Return `integer`

=end

def negative(integer)
  if integer > 0
    integer*(-1)
  else
    integer
  end
end

# Test Cases:
p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby