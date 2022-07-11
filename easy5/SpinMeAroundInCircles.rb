=begin

You are given a method named spin_me that takes a string as an argument and returns a string 
  that contains the same words, but with each word's characters reversed. 
Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?

=end

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

=begin

The returned string will be a different object. The Array#each method returns the object upon which it is called.
This would suggest that the same object would be returned. However, the prompt asks whether the string returned will be the same.
When we used the String#split method, we changed the object. Furthermore, when we used Array#join to return a string, the object 
will not have reverted back to the original object, instead being a different string object. 


=end