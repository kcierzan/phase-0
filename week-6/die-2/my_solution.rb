# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array comprised of individual strings each containing one letter
# Output: A randomly selected letter from the input array
# Steps:
=begin
  IF the input list contains nothing, return an error
  ASSIGN the number of things in the list to the number of sides of the die
  CREATE a method that outputs the number of sides of the die based on the length of the input list
  For the roll function, CREATE a random number between 0 and the length of the input list
  output the list item at the randomly generated position in the list
=end


# Initial Solution

# class Die
#   def initialize(labels)
#     @list = labels
#     if labels.empty? == true
#       raise ArgumentError.new("Please input a full list")
#     end
#     @sides = @list.length
#   end

#   def sides
#     p @sides
#   end

#   def roll
#     if @sides == 1
#       p @list[0]
#     else
#     rand_index = Random.new.rand(@sides)
#     p @list[rand_index]
#     end
#   end
# end




# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    if labels.empty? == true
      raise ArgumentError.new("Please input a full list")
    end
    @sides = @labels.length
  end

  def sides
    p @sides
  end

  def roll
    if @sides == 1
      p @labels[0]
    else
    p @labels[Random.new.rand(@sides)]
    end
  end
end


# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

The main differences between this die class and the die class from last week are the additional class variables that I used to access information between methods and the way I output values from the input hash using a randomized index number. Other than those differences, the two classes are conceptually very similar. The logic involved remained largely the same.

What does this exercise teach you about making code that is easily changeable or modifiable?

This exercise taught me to try to create the most generalized, DRY code as possible in the interest of being able to handle a change of inputs or a different desire in outputs. If your methods and code set up to very specifically drive at one data or one hacky circumstance you feel you can exploit, modifying the code later will prove to be a massive pain.

What new methods did you learn when working on this challenge, if any?

I was familiar with all the methods I used in this exercise.

What concepts about classes were you able to solidify in this challenge?

I feel I was better able practice storing information in instance variables that could be used between methods. I struggled at first with not being able to access the input array until I had made it an instance variable.

=end