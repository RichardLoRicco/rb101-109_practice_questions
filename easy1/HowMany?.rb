# Write a method that counts the number of occurrences of each element in a given array.

# ALGORITHM:
# Create an empty hash called 'occurences'
# Iterate through the unique elements in the 'vehicles' array
#   - For each unique element in the 'vehicles' array, count the number of occurrences in the 'vehicles' array
#     - Assign the unique elements to a key and the count for each to a value within the 'occurences' hash
# Iterate through the updated 'occurrences' hash
#   - Output the key value pairs


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(elements)
  occurences = {}
  elements.uniq.each do |element|
    occurences[element] = elements.count(element)
  end

  occurences.each do |element, count|
    puts "#{element} => #{count}"
  end
end


count_occurrences(vehicles)



