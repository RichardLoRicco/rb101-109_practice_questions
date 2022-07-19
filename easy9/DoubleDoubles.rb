=begin

PROMPT:
A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. 
For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; 
double numbers should be returned as-is.

INPUTS: an integer
  - Either a double number or not a double number
OUTPUTS: an integer
  - If the input is not a double number: return 2 times the number provided
  - If the input is a double number, return the number provided as-is

EXAMPLES:
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10
Note: underscores are used for clarity above. Ruby lets you use underscores when writing long numbers; however, it does not print the underscores when printing long numbers. 
Don't be alarmed if you don't see the underscores when running your tests.

ALGORITHM:
Define method `twice` that accepts one argument `integer`
  CONDITIONAL:
  If `integer`[0, length/2] == `integer`[length/2, length/2]
    - Return `integer`
  Else
    - Return 2 * `integer`

=end

# NOT COMPLETE
def twice(integer)
  length = integer.to_s.length.to_i
  if length.odd?
    integer
  else
    if integer[0, length/2] == integer[length/2, length/2]
      integer
    else
      integer *= 2
    end  
    integer
  end
end
# Test Cases
p twice(37) # == 74
p twice(44) # == 44
p twice(334433) # == 668866
p twice(444) # == 888
p twice(107) # == 214
p twice(103103) # == 103103
p twice(3333) # == 3333
p twice(7676)# == 7676
p twice(123_456_789_123_456_789) #== 123_456_789_123_456_789
p twice(5) #== 10
