# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [ with: Tyler Doerschuck ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: use array of integers in a method/floats
# Output: sum of inputted array
# Steps to solve the problem.
# assign array of intergers or floats
# define total(array)
# use array built in methods
# execute code
# run and get correct output

# 1. total initial solution

def total(array)
 total = 0
  array.each do |x| total += x
  end
  return total
end



# 3. total refactored solution
def total(array)
 array.inject {|sum,n| sum + n}
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: create one string (sentence)
# Steps to solve the problem.
# create array of strings
# define sentence_maker(array)
# method to take array to empty string
# string created by the method = ""
# built methods to add person and capitalization


# 5. sentence_maker initial solution

 def sentence_maker(array)
  array[0].capitalize!
  sentence_string = array.join(" ")
  sentence_string + "."
 end


# 6. sentence_maker refactored solution
def sentence_maker(array)
 array[0].capitalize!
 sentence_string = party_array.join(" ")
 return "#{sentence_string}."
end