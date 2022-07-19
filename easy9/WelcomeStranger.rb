=begin

PROMPT:
Create a method that takes 2 arguments, an array and a hash. 
The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name. 
The hash will contain two keys, :title and :occupation, and the appropriate values. 
Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.

INPUTS: an array and a hash
  - Array will contain two or more elements that will produce a person's name
  - Hash will contain two keys, :title and :occupation, and their associated values
OUTPUTS: a string
  - The output will be a greeting that uses the person's full name and mentions his/her title and occupation

EXAMPLES:
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.

ALGORITHM:
Define method `greetings` that accepts two arguments `arr_name` and `hsh_info`
  Initialize string `name` which points to `arr_name` converted to a string
  Output greeting using string interpolation
=end

def greetings(arr_name, hsh_info)
  name = arr_name.join(" ")
  "Hello, #{name}! Nice to have a #{hsh_info[:title]} #{hsh_info[:occupation]} around."
end


# Test Cases
p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
