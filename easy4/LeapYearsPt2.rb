# A continuation of the previous exercise.

# The British Empire adopted the Gregorian Calendar in 1752, which was a leap year.
# Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.

# Using this information, update the method from the previous exercise to determine leap years both before and after 1752.

# INPUTS: year
# OUTPUTS: boolean (`true` if leap year and `false` if not leap year)
# RULES:
#   - Same rules as last problem, but if years is less than 1752 then leap year if evenly divisible by 4

# ALGORITHM: 
# Create `leap_year(year)`
#   if year < 1752 --> true if divisble by 4
#   else
#     if year divisible by 400 --> true
#     elsif year divisible by 100 --> false
#     elsif year divisible by 4 --> true

def leap_year?(year)
  if year < 1752
    year % 4 == 0
  else
    if year % 400 == 0
      true
    elsif year % 100 == 0
      false
    else
      year % 4 == 0
    end
  end
end

# Examples
puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == true
puts leap_year?(1) == false
puts leap_year?(100) == true
puts leap_year?(400) == true