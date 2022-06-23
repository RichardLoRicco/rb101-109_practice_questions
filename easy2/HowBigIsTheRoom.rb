# Build a program that asks a user for the length and width of a room in meters 
# and then displays the area of the room in both square meters and square feet.
# Note: 1 square meter == 10.7639 square feet
# Do not worry about validating the input at this time.

# INPUT:
# - two integers (length and width)
# OUTPUT:
# - two integers (area in sq meters and in sq ft)
# RULES:
# - don't worry about validating input

# ALGORITHM:
# Ask for length in meters
# - record length in variable called `length`
# Ask for width in meters
# - record width
# Multiply `length` times `width` and assign to varaible `sq_met_area`
# Convert to square feet --> assign to variable `sq_ft_area`
# Output the area in both measurements

puts "What is the length of the room in meters?"
length = gets.chomp.to_i

puts "What is the width of the room in meters?"
width = gets.chomp.to_i

sq_met_area = length * width
sq_ft_area = sq_met_area * 10.7639

puts "The area of the room is #{sq_met_area} square meters (#{sq_ft_area} square feet)."