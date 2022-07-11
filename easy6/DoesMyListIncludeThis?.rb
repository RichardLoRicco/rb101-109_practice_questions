# Write a method named include? that takes an Array and a search value as arguments. 
# This method should return true if the search value is in the array, false if it is not. 
# You may not use the Array#include? method in your solution.

=begin

INPUTS: an array and an integer(or float?)
OUTPUTS: a boolean -> true if integer is in array, false if not
RULES:
  - Can't use Array#include? method

ALGORITHM:
Define method `include?` that accepts two arguments, `array` and `search_value`
  Create new array called `test_array`
  Iterate through `array` and for each element:
    - if element == `search_value`
      next
    - else, add element to `test_array` 
  If test_array = array:
      false
  else:
      true

=end

def include?(array, search_value)
  test_array = []
  array.each do |num|
    if num == search_value
      next
    else
      test_array << num
    end
  end
  test_array != array
end


# Test Cases
p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
