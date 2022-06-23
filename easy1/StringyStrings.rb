# Write a method that takes one argument, a positive integer, and returns a string of 
# alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.

# INPUTS:
# - One positive integer
# OUTPUTS:
# - String of alternating 1s and 0s 
# RULES:
# - Size/length of output must match the input integer

# ALGORITHM
# Create method called 'stringy' that takes one argument (an integer) named 'length'
#   If the length is even:
#   - Output '10' multiplied by the length/2
#   If the length is odd:
#   - Output '10' multiplied by the length/2 + '1'

def stringy(length)
 if length.even?
  '10'*(length/2)
 elsif length.odd?
  '10'*(length/2) + '1'
 else
  puts "You did not input an integer. Try again."
 end  
end

# Examples:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
# The tests above should print true.