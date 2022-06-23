# Print all even numbers from `1` to `99`, inclusive, to the console, with each number on a separate line.

# INPUTS: Nothing
# OUTPUTS: All even numbers from `1` to `99 `, inclusive
# RULES: 
# - All numbers for output must be on separate lines
#
# ALGORITHM:
# Create new array `numbers` consisting of `1` to `99`
# Loop through `numbers`
#   - Check if number is even
#   - If number is even, add to `even` array
# Output `even` array


numbers = (1..99).to_a

even = numbers.select do |number|
  number.even?
end

puts even
