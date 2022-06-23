# Write a program that solicits 6 numbers from the user, then prints a message 
# that describes whether or not the 6th number appears amongst the first 5 numbers.

# INPUTS: - 6 numbers
# OUTPUTS: - String declaring whether or not 6th number appears amongst first 5 numbers
# NOTES:
# - I should add the inputed numbers into an array

# ALGORITHM:
# Create empty array called `user_numbers`
# Ask user for each of 5 numbers individually
#  - For each question, add each input `user_numbers`
# Ask user for the 6th number
#  - Add to variable `last_number`
# If `last_number` is located in the `user_numbers` array:
#   - Output that `last_number` appears in `user_numbers` array
# Otherwise:
# - Output that `last_number` does not appear in `user_numbers` array

user_numbers = []

puts "Enter the 1st number:"
user_numbers << gets.chomp 

puts "Enter the 2nd number:"
user_numbers << gets.chomp 

puts "Enter the 3rd number:"
user_numbers << gets.chomp 

puts "Enter the 4th number:"
user_numbers << gets.chomp 

puts "Enter the 5th number:"
user_numbers << gets.chomp 

puts "Enter the last number:"
last_number = gets.chomp

if user_numbers.include?(last_number)
  puts "The number #{last_number} appears in #{user_numbers}"
else
  puts "The number #{last_number} does not appear in #{user_numbers}"
end