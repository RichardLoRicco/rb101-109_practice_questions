# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. 
# The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

=begin

INPUTS: a positive integer (n)
OUTPUTS: a right triangle -> whose sides each have n stars
RULES: 
  - The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right

ALGORITHM:
Define method `triangle` that accepts one argument `n`
  Create a counter variable `counter` and set it equal to 0
  Loop as follows:
    Increment `counter` by 1
    Output the following -> (" " * (n - counter)) + ("*"" * `counter`)
    Break when `counter` = `n`

=end

def triangle(n)
  counter = 0
  loop do
    counter += 1
    puts (" " * (n - counter)) + ("*" * counter)
    break if counter == n
  end  
end






# Examples:
triangle(5)
=begin
    *
   **
  ***
 ****
*****
=end

triangle(9)
=begin
        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********
=end