# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: number of sides for the die
# Output: a random number between 1 and the number of sides on the die.
# Steps:
# WHEN the instance of Die is CREATED, IF the number of sides is less than one, OUTPUT and error
#IF the number of sides is greater than 1, set that number to a number accessible by other functions.
# CREATE a method that output the number of sides entered initially to the screen
# CREATE a method that outputs a random number between 1 and the number of sides to the screen.


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     unless sides > 1
#       raise ArgumentError.new("Enter a number greater than 1.")
#     end
#     @sides = sides
#   end

#   def sides
#     p @sides
#   end

#   def roll
#     roll = Random.new
#     current_roll = roll.rand(1..@sides)
#     p current_roll
#   end
# end



# 3. Refactored Solution
class Die
  def initialize(sides)
    unless sides > 1
      raise ArgumentError.new("Enter a number greater than 1.")
    end
    @sides = sides
  end

  def sides
    p @sides
  end

  def roll
    current_roll = Random.new.rand(1..@sides)
    p current_roll
  end
end

# 4. Reflection
=begin
What is an ArgumentError and why would you use one?

An argument error is an error that occurs when the input for a method was not the kind of input that method was expecting. In this case, we want to create a die with more than one side, as a die with one side is effectively useless in accomplishing our task of creating a random number. We can output an error message along with our error to explain the expected input.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

The only new ruby method I implemented here was the rand method that I called on the instance of the Random class. I was successful in implementing this method but I was a bit surprised that I would have to instantiate a class in order to generate a random number. After thinking about it, it stands to reason that Random numbers would have their own methods associated with them etc.

What is a Ruby class?

A class can be defined as the set of attributes, methods, and variables from which objects in Ruby are created. When we instantiate an object in Ruby, often by calling the new method on it, we are creating and instance of the class. Ruby has a number of built-in classes with their own class variables and methods associated with them, but we are also capable of creating our own classes and writing methods that are associated only with that class.

Why would you use a Ruby class?

Using a Ruby class is a great way to store a set of methods and create a kind of "behavior" for an object you wish to create. By using classes, we are able to save ourselves from having to define variables and methods every time we wish to call them on an object. Classes allow you to compartmentalize methods and information so that they are accessible only within a certain object type.

What is the difference between a local variable and an instance variable?

A local variables is accessible only within the method in which it exists. An instance variable is a variable that is accessible across multiple methods within an instance of a class.

Where can an instance variable be used?

An instance variable can be used within a class. The instance variable is unique to particular instance of that class, but can be used across all the methods within that class.
