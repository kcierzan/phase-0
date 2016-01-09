# Calculate the mode Pairing Challenge

# I worked on this challenge [by with: Cody Kendall ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? a
# => An Array of integers.
# What is the output? (i.e. What should the code return?)
# => An array with the most frequently occurring integers.
# What are the steps needed to solve the problem?
# => Create a hash where the keys are the integers from the input array
# => Iterate over the array and for every instance of an integer in teh array, add one to its hash value
# => place all keys from the hash with the highest value into an array
# => return the array
# 1. Initial Solution
# def mode(array)
#   frequencies = []
#   final = []
#   h = Hash.new(0)
#   array.each {|object| h[object] += 1}
#   h.each do |key, value|
#     frequencies << value
#   end
#   highest_freq = frequencies.max
#   h.each do |key, value|
#     if value == highest_freq
#       final << key
#     end
#   end
#     p final
# end



# 3. Refactored Solution
def mode(array)
 frequencies = []
 final = []
 h = Hash.new(0)
 array.each {|object| h[object] += 1}
 h.each {|key, value| frequencies << value}
 h.each do |key, value|
   if value == frequencies.max
     final << key
   end
 end
   final
end



# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?

My pair and I decided to use a hash as a hash is very well suited to attaching numerical values for a list of items. In this case, we were attaching a number (frequency) to a list of numbers we provided as input.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

My pair and I devoted quite a bit of time to working on the pseudocode for this challenge and it definitely paid off. Although sometimes our pseudocode might have been too "broad strokes", it still greatly helped us to form our plan of attack.

What issues/successes did you run into when translating your pseudocode to code?

We struggled somtimes with writing pseudocode that would correspond to invidual built-in Ruby methods. At times, writing the english version of what might be relatively simple logic can be very confusing and verbose.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

The most sophisticated iteration we performed was iterating through the input array and creating a hash using the arrays as keys and the frequencies as values. I thought this would be extremely difficult to implement but my pair and I were able to come up with a way to accomplish this one one line. I was amazed!


=end