# Print all odd numbers from `1` to `99`, inclusive, to the console, with each number on a separate line.

# INPUTS: Nothing
# OUTPUTS: All odd numbers from `1` to `99 `, inclusive
# RULES: 
# - All numbers for output must be on separate lines
#
# ALGORITHM:
# Create new array `numbers` consisting of `1` to `99`
# Loop through `numbers`
#   - Check if number is odd
#   - If number is odd, add to `odd` array
# Output `odd` array


numbers = (1..99).to_a

odd = numbers.select do |number|
  number.odd?
end

puts odd
