=begin

PROMPT:

Mad libs are a simple game where you create a story template with blanks for words. 
You, or another player, then construct a list of words and place them into the story, creating an often silly or funny story as a result.
Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

INPUTS: a series of strings
OUTPUTS: a string -> outputs the input strings inside a template using string interpolation
RULES:
  - Must ask the user for inputs
  - Must ask for a noun, a verb, an adverb, and an adjective

EXAMPLES: 
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

ALGORITHM:
Ask the user for a noun
  - save response as `noun`
Ask the user for a verb
  - save response as `verb`
Ask the user for an adjective
  - save response as `adjective`
Ask the user for an adverb
  - save response as `adverb`
Output phrase with saved variables inserted

=end

p "Enter a noun:"
noun = gets.chomp

puts "Enter a verb:"
verb = gets.chomp

puts "Enter an adjective:"
adjective = gets.chomp

puts "Enter an adverb:"
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"

