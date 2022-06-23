# Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes
# the square of its argument (the square is the result of multiplying a number by itself).

# INPUTS: One argument (doesn't specify the type)
# OUTPUTS: The square of the argument inputted
# RULES:
#   - Doesn't specify whether the argument needs to be an integer/float
#      -> BUT the method wouldn't work otherwise

# ALGORITHM:
#   Define method `square` that takes one arguments (`number`)
#    - Calls the multuply method that takes two arguments, both of which are `number`

def multiply(first, second)
  first * second
end


def square(number)
  multiply(number, number)
end


# Example:
puts square(5) == 25
puts square(-8) == 64
