# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. 
# For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.


# INPUTS: a number (greater than 1) (integer)
# OUTPUTS: integer --> the sum of multiple of 3 and 5 between 1 and input
# RULES:
#   - Assume that input number is integer greater than 1
#
# ALGORITHM: 
# Define `multisum(integer)`
#   create `count` = 1
#   create `array` = []
#   create `sum` = 0
#   until count > integer:
#     - if `count` is divisible by 3:
#         add `count` to `array` 
#     - else if `count` is divisibly by 5:
#         add `count` to `array`
#     - add 1 to count 
#   Remove all duplicative values from `array`
#   For each value in `array`: 
#     - add to `sum`
#   return `sum`


def multisum(integer)
  count = 1
  array = []
  sum = 0
  until count > integer
    if count % 3 == 0
      array << count
    elsif count % 5 == 0
      array << count
    end
    count += 1
  end
  array.uniq!
  array.each do |element|
    sum += element
  end
  sum
end


# Examples
puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
