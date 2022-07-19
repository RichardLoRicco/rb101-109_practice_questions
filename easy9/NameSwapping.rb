=begin

PROMPT:
Write a method that takes a first name, a space, and a last name passed as a single String argument, and 
returns a string that contains the last name, a comma, a space, and the first name.

INPUTS: a string
  - Consists of a first name, a space, and a last name passed as a single String argument
OUTPUTS: a string
  - Consists of the last name, a comma, a space, and the first name
RULES:

EXAMPLES:
swap_name('Joe Roberts') == 'Roberts, Joe'

ALGORITHMS:
Define method `swap_name` that accepts one argument `name`
  Inialize a variable `first_name` that points to index 0 of name.split(" ")
  Inialize a variable `last_name` that points to index 1 of name.split(" ")
  Output using string interpolation the following: "`last_name`, `first_name`

=end

def swap_name(name)
  first_name = name.split(" ")[0]
  last_name = name.split(" ")[1]
  "#{last_name}, #{first_name}"
end


# Test Case:
p swap_name('Joe Roberts') == 'Roberts, Joe'
