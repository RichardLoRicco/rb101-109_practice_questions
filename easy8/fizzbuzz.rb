=begin

PROMPT:
Write a method that takes two arguments: the first is the starting number, and the second is the ending number. 
Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", 
  if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

INPUTS: two integers -> a starting and ending number
OUTPUTS: a string?
RULES:
    - Print out all numbers between the two numbers, UNLESS:
      -> if a number is divisible by 3, print "Fizz";
      -> if a number is divisible by 5, print "Buzz"; and 
      -> if a number a divisble by 3 and 5, print "FizzBuzz"

EXAMPLES:
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz,

ALGORITHM:
Define a method `fizzbuzz` that accepts two arguments, `start_num` and `end_num`
  Initialize an array `arr` that ranges from `start_num` to `end_num`
  Initialize an empty array called `fizzbuzz_arr`
  ITERATE through `arr` and for each `num`:
    - if `num` is divisible by 3 and 5:
      -> add "FizzBuzz" to `fizzbuzz_arr`
    - if `num` is divisible by 3:
      -> add "Fizz" to `fizzbuzz_arr`
    - if `num` is divisible by 5:
      -> add "Buzz" to `fizzbuzz_arr`
    - else:
      -> add `num` to `fizzbuzz_arr`
  Join `fizzbuzz_arr` with commas

=end

def fizzbuzz(start_num, end_num)
  arr = (start_num..end_num).to_a
  fizzbuzz_arr = []
  arr.each do |num|
    if num % 3 == 0 && num % 5 == 0
      fizzbuzz_arr << "FizzBuzz"
    elsif num % 3 == 0
      fizzbuzz_arr << "Fizz"
    elsif num % 5 == 0
      fizzbuzz_arr << "Buzz"
    else
      fizzbuzz_arr << num
    end
  end
  fizzbuzz_arr.join(", ")
end

# Test Cases
p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz,