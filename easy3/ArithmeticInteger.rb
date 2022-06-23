# Write a program that prompts the user for two positive integers, and 
# then prints the results of the following operations on 
# those two numbers: addition, subtraction, product, quotient, remainder, and power. 
# Do not worry about validating the input.

# INPUTS: 2 integers (inputted separately)
# OUTPUTS:
#   - Sum of 2 inputs
#   - Difference of 2 integers
#   - Product of 2 integers
#   - Quotient of 2 integers
#   - Remainder 
#   - Power 
# RULES:
#   - Don't worry about input validation

# ALGORITHM:
# Ask user for each positive integer separately
#   - After each input, save input to a different variable (`first_integer` and `second_integer`)
# Compute, assign, and output the following;
#   - Sum of 2 inputs
#   - Difference of 2 integers
#   - Product of 2 integers
#   - Quotient of 2 integers
#   - Remainder 
#   - Power 

puts "Enter the first positive integer:"
first_integer = gets.chomp.to_i

puts "Enter the second positive integer:"
second_integer = gets.chomp.to_i

sum = first_integer + second_integer
puts "#{first_integer} + #{second_integer} = #{sum}"

difference = first_integer - second_integer
puts "#{first_integer} - #{second_integer} = #{difference}"

product = first_integer * second_integer
puts "#{first_integer} * #{second_integer} = #{product}"

quotient = first_integer / second_integer
puts "#{first_integer} / #{second_integer} = #{quotient}"

remainder = first_integer % second_integer
puts "#{first_integer} % #{second_integer} = #{remainder}"

power = first_integer ** second_integer
puts "#{first_integer} ** #{second_integer} = #{power}"