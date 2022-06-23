# Create a simple tip calculator. 
# The program should prompt for a bill amount and a tip rate. 
# The program must compute the tip and then display both the tip and the total amount of the bill.

# INPUTS:
#   - Bill amount (float)
#   - Tip rate (float)
# OUTPUTS: 
#   - Tip (float)
#   - Total amount of bill (float)
# RULES:

# ALGORITHM:
# Ask for bill amount
#   - store as `bill`
# Ask for tip rate
#   - Store as `tip_rate`
# Multiply `bill` and `tip_rate` --> store as `tip`
#   - Add `tip` to `bill` --> store as `bill_with_tip` 
# Output `tip` and `bill_with_tip`

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage."
tip_rate = gets.chomp.to_f * 0.01

tip = bill * tip_rate  
bill_with_tip = tip + bill

puts "The tip is $#{tip}."
puts "The total is $#{bill_with_tip}."