# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain 
#   the first half and second half of the original Array, respectively. 
# If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

=begin

INPUTS: an array
OUTPUTS: an array containing two nested arrays
RULES:
  - the pair of nested arrays will consist of the first half and second half of the original array
  - if the original array contains and off number of elements, the middle element should be placed in the first half array

ALGORITHM:
Define a method `halvsies` that takes one argument `arr`
  Create a new array `halvsie_arr` that contains a pair of empty nested arrays
  Create a counter variable `counter` and set it equal to 1
  Iterate over `arr` and for each element:
    - if `counter` is less than or equal to (arr's size / 2) + 1
      -> add to the first nested array in `halvsie_arr`
    - if `counter` is greater than (arr's size / 2) + 1
      -> add to the second nested array in `halvsie_arr`
    - add 1 to counter
  Return `halvsie_arr`


=end

def halvsies(arr)
  halvsie_arr = [[],[]]
  counter = 1
  arr.each do |num|
    if counter <= (arr.size)/2.0 + 0.5
      halvsie_arr[0] << num
    else
      halvsie_arr[1] << num
    end
    counter += 1
  end
  halvsie_arr
end


# Examples:
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]