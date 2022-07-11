# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. 
# There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

=begin

INPUT: two arrays
OUTPUT: one array -> containing all of the values from the argument arrays
RULES:
  - No duplicate values in the returned arrays (even if there are duplicates in the original arrays)

ALGORITHM:
Define method `merge` that accepts two arguments, `arr1` and `arr2`
  Add `arr1` and `arr2` and remove any duplicates

=end

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end



# Example
p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]