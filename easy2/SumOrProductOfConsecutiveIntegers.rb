# Write a program that asks the user to enter an integer greater than 0, then 
# asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# INPUTS:
#   - Integer greater than 0
#   - Sum or product designation (string)
# OUTPUTS:
#   - Product or sum of all numbers between 1 and entered integer (integer)
# RULES: 
# QUESTIONS:
#   - What happens if a non-integer is entered first?
#   - What happens if a non-string is entered second?
#
# ALGORITHM:
# Ask user to enter integer greater than 0
#   - Convert to integer and store response in `int`
# Ask user to enter either s for sum or p for product
#   - store response in `action`
# If action == s:
#   - Compute sum all integers between 0 and `int`
#   - Output sum
# If action == p:
#   - Compute product of all integers between 0 and `int`
#   - Output product


puts "Please enter an integer greater than zero"
int = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
action = gets.chomp

if action == 's'
  sum = (1..int).to_a
  sum = sum.reduce(:+)
  puts "The sum of the integers between 1 and #{int} is #{sum}."
elsif action == 'p'
  product = (1..int).to_a
  product = product.reduce(:*)
  puts "The product of the integers between 1 and #{int} is #{product}."
else
  puts "Incorrect entry. Please try again."
end