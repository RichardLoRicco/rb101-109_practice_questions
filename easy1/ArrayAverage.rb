# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array.
# The array will never be empty and the numbers will always be positive integers. 
# Your result should also be an integer.

# INPUTS: An array of integers
# OUTPUTS: An integer
# RULES:
# - Output integer = average of numbers in input array
# - Input array can't be empty
# ALGORITHM:
# Create method called 'average' -> takes one argument, an array called 'integers'
# Sum the elements in the 'integers' array
# Divide by the size of the 'integers'array

def average(integers)
  integers.sum / integers.size
end

# Examples
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
# The tests above should print `true`.