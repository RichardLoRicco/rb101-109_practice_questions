# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and 
#   every lowercase letter by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

=begin

INPUTS: a string
OUTPUTS: a new string -> the cases must be swapped
RULES:
  - All other characters must remain unchanged

ALGORITHM:
Define method `swapcase` that accepts one argument, `string`
  Split `string` into an array of characters -> `arr`
  For each `char` in `arr` transform as follows:
    - if `char` is lowercase, uppercase `char`
    - if `char` is uppercase, lowercase `char`
    - if `char` is not a letter, leave it
  Join the newly mutated `arr`

=end

def swapcase(string)
  arr = string.split("")
  arr_swapped = arr.map do |char|
    if char.match?(/[a-z]/)
      char.upcase
    elsif char.match?(/[A-Z]/)
      char.downcase
    else
      char
    end
  end
  arr_swapped.join("")
end


# Example:
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'