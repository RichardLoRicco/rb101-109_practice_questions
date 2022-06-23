# Create a method that takes two arguments, multiplies them together, and returns the result.

# INPUTS: Two arguments (doesn't specify the type)
# OUTPUTS: The product of the two arguments inputted
# RULES:
#   - Doesn't specify whether the arguments need to be integers/floats
# NOTES:
#   - --> if you input 2 strings there will likely be an error

# ALGORITHM:
#   Define method `multiply` that takes two arguments (`first` and `second`)
#    - Multiply `first` and `second

def multiply(first, second)
  first * second
end

# Example:
p multiply(5, 3) == 15