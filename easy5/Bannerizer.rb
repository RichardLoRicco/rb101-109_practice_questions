=begin

PROMPT:
Write a method that will take a short line of text, and print it within a box.
You may assume that the input will always fit in your terminal window.

INPUTS: a string 
OUTPUTS: a string (consisting of the input string surrounded by a box)
RULES:
- Assume that the input will always fit in terminal window

ALGORITHM:
Define `print_in_box` that accepts one argument (`str`)
  size_of_string --> take the length of `str` --> total length of the box will be `str` length + 2

  print the beginning of the box --> "+-" + "-"*(`size_of_string`) + "-+"
  print "| " + " " * (`size_of_string`) + " |"
  print the middle of the box -->  "| " + `str` + " |" 
  print "| " + " " * (`size_of_string`) + " |"
  print the end of the box --> "+-" + "-"*(`size_of_string`) + "-+"


=end

def print_in_box(str)
  size_of_string = str.length
  puts "+-" + "-"*size_of_string + "-+"
  puts "| " + " " * (size_of_string) + " |"
  puts "| " + str + " |" 
  puts "| " + " " * (size_of_string) + " |"
  puts "+-" + "-"*(size_of_string) + "-+"
end


# Example:
print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
