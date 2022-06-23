# Build a program that displays when the user will retire and how many years she has to work till retirement.

# INPUTS:
#   - Current age
#   - Age of retirement
# OUTPUTS: 
#   - Years until retirement

# ALGORITHM:
# Document current year in `current_year`
# Ask user for current age
#   - Store current age in `current_age`
# Ask user for retirement age
#   - Store retirement age in `retirement_age`
# Subtract `current_age` from  `retirement_age`
#   - Store in `years_until_retirement`
# Add `years_until_retirement` to `current_year`
#   - Store in `retirement_year`
# Output `current_year`, `retirement_year`, and `years_until_retirement`

current_year = Time.new.year

puts "What is your current age in years?"
current_age = gets.chomp.to_i

puts "At what age do you plan to retire (in years)?"
retirement_age = gets.chomp.to_i

years_until_retirement = retirement_age - current_age
retirement_year = years_until_retirement + current_year

puts "It is #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_until_retirement} years of work to go!"
