# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

# INPUT: Nothing
# OUTPUT: A string phrase containing a random integer between 20 and 200

# ALGORITHM:
# Create a method called `teddy_age` that takes no arguments
#   Create a variable called `age` that is equal to a random number between 20 and 200
#   Print a statement declaring the value of `age`.


def teddy_age
  age = rand(20..200)
  puts "Teddy is #{age} years old!"
end

teddy_age()
