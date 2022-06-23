# Write a program that will ask for user's name. 
# The program will then greet the user. 
# If the user writes "name!" then the computer yells back to the user.

# INPUTS:
#   - a name (potentially with an exclamation point)
# OUTPUTS:
#   - a string (potentially in all caps)
# RULES:
#   - if the user inputs an exclamation point, response must use ALL CAPS
# QUESTIONS:
#  - What happens if the user enters a non-string?

# ALGORITHM:
#   Ask the user for his/her name
#     - Save response to `name`
#   If `name` contains an exclamation point:
#     - Remove exclamation point from `name`
#     - Output name with phrase in all caps
#   Else (i.e., if no exclamation point is in `name`):
#     - Output name with phrase.

puts "What is your name?"
name = gets.chomp

if name.end_with?("!")
  name.chop!
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

