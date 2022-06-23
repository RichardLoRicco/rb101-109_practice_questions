name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
# What does this print out? Can you explain these results?

# The above will print out the following:
#   BOB
#   BOB
# 
# It will do so because the  `String#upcase!` method mutated the caller.
# Therefore, the string present in the location in memory that both `name` and `save_name` point to
# will be mutated, and both will output the mutated string.