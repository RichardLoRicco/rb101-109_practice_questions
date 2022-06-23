# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. 
# If the boolean is `true`, the bonus should be half of the salary. 
# If the boolean is `false`, the bonus should be `0`.

# INPUTS:
# - a positive integer
# - a boolean
# OUTPUTS: a bonus (`0`, or a positive integer)
# RULES:
# - If boolean is true, bonus is half the positive integer input
# - If boolean is fale, bonus is `0`
#
# ALGORITHM:
# Create method called `calculate_bonus` that takes two arguments, a positive integer (`salary``) and a boolean (`earned_bonus`)
# Create a conditional whereby:
#   - If `earned_bonus` is `true`, a variable `bonus` is equal to half of `salary`
#   - If `earned_bonus` is `false`, a variable `bonus` is equal to `0`

def calculate_bonus(salary, earned_bonus)
  if earned_bonus
    bonus = salary/2
  else
    bonus = 0
  end
  bonus
end

# Examples:
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
# The tests above should print true.