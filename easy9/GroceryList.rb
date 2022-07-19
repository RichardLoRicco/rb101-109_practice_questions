=begin

PROMPT:
Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

INPUTS: a nested array
  - consists of a list of fruits with quantities
OUTPUTS: an array
  - consists of a list of the correct number of each fruit

EXAMPLES:
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas","bananas"]

ALGORITHM:
Define method `buy_fruit` that accepts one argument `grocery_list`
  Initialize an empty array `modified_grocery_list`
  ITERATE over each subarray `item` and:
    As many TIMES as index 1 of each subarray:
      - add index 0 of that subarray to `modified_grocery_list`
  Output `modified_grocery_list`

=end


  def buy_fruit(grocery_list)
    modified_grocery_list = []
    grocery_list.each do |item|
      item[1].times { modified_grocery_list << item[0]}
    end
    modified_grocery_list
  end

# Test Cases:
p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) == ["apples", "apples", "apples", "orange", "bananas","bananas"]