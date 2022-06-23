# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.


# INPUTS - a year (integer)
# OUTPUTS - a century (string)
# RULES
#   - Return value must begin with century number and end in st, nd, rd, or th as appropriate
#   - New centuries begin in years that end with 01.
#
# ALGORITHM:
# Define method `century(year)`
#   Finding the century:
#     - Divide year by 100 and add 1 == `century` --> unless year ends in 00
#     - if year ends in 00, add 1 to `century` 
#   Finding the correct `ending`:
#     - st --> ends in 1
#     - nd --> ends in 2
#     - rd --> ends in 3
#     - th --> ends in 4 - 0
#          --> also 11th, 12th, 13th,
# Output century + ending 


def century(year)
  century = year/100 + 1
  century -= 1 if year.to_s.end_with?("00")
  century = century.to_s

  if century.end_with? == '11' || century.end_with? == '12' || century.end_with? == '13'
    ending = 'th'
  elsif century.end_with?('4')
    ending = 'th'
  elsif century.end_with?('5')
    ending = 'th'
  elsif century.end_with?('6')
    ending = 'th'
  elsif century.end_with?('7')
    ending = 'th'
  elsif century.end_with?('8')
    ending = 'th'
  elsif century.end_with?('9')
    ending = 'th'
  elsif century.end_with?('0')
    ending = 'th'
  elsif century.end_with?('1')
    ending = 'st'
  elsif century.end_with?('2')
    ending = 'nd'
  elsif century.end_with?('3')
    ending = 'rd'
  end
  century + ending
end


puts century(11201)

# # Examples:
# puts century(2000) == '20th'
# puts century(2001) == '21st'
# puts century(1965) == '20th'
# puts century(256) == '3rd'
# puts century(5) == '1st'
# puts century(10103) == '102nd'
# puts century(1052) == '11th'
# puts century(1127) == '12th'
# puts century(11201) == '113th'
