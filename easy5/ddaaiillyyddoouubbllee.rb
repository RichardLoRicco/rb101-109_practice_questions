=begin

Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character.
You may not use String#squeeze or String#squeeze!.

INPUTS: a string
OUTPUTS: a string -> contains value of original sring with all consecutive duplicate characters collapsed into a single character
RULES:
- Can't use String#squeeze or String#squeeze!
- Leave spaces

ALGORITHM:
Define method `crunch` that accepts one argument, a string `str`
  Create index variable `index` and set it to 0
  Create empty string `crunched_string`
  While `index` <= the length of `str`
    add each character of `str` to `crunched_string` unless it is equal to the next indexed character of `str`
    add 1 to `index`
  Output `crunched_string` 

=end

def crunch(str)
  index = 0
  crunched_string = ""
  while index <= str.length - 1
    crunched_string << str[index] unless str[index] == str[index + 1]
    index += 1
  end
  crunched_string
end

# Examples:
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''