# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input:An Answer, A guess in the form of an integer
# Output: High, Low, or Correct and Solved?
# Steps:
=begin
Using the answer, CREATE a number that can be used over multiple operations
Using the guess, CREATE a number that can be used over multiple operations.
CREATE a function where IF our guess is lower than the answer, output :low
IF our guess is higher than the answer, output :high
IF our guess is the answer, output correct
CREATE a function where IF our guess is our answer, output TRUE, OTHERWISE output FALSE


=end


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess_num)
    @guess_num = guess_num
    if @guess_num > @answer
      p :high
    elsif @guess_num < @answer
      p :low
    else
      p :correct
    end
  end

  def solved?
    if @guess_num == @answer
      p TRUE
    else
      p FALSE
    end
  end
end




# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess_num)
    @guess_num = guess_num
    if @guess_num > @answer
      p :high
    elsif @guess_num < @answer
      p :low
    else
      p :correct
    end
  end

  def solved?
    if @guess_num == @answer
      p TRUE
    else
      p FALSE
    end
  end
end


# Reflection
=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Instance variables and methods accurately represent the characteristics of real world object because they describe actions or data sets that are closely associated with a memeber of a class or category. For example, we could use the example of a car as an instance of a class "Car". Some "instance methods" we might associate with this car might be "drive" "stop" "park" "start engine" etc. While these "methods" make sense for use on a car, it is not necessary to be able to approach every other object and attempt to "park" it or "drive" it. This is similar to the way Ruby handles instance methods and variables. Any string we define is an instance of the "String" class and methods like upcase and reverse only make sense when associated with strings.

When should you use instance variables? What do they do for you?

Instance variables should be used when multiple instance methods have to access the same information. Instance variables allow information to be passed between instance methods without having to continually create new local variables for use inside every individual method.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Flow control is the concept of using logical and conditional statements to control the "flow" of methods in Ruby. Using If/Else statements, unless statements, cases etc, one can create a branch-like network of paths that an application can follow based on a set of inputs or circumstances. I did not struggle with the control flow of this challenge but I enjoyed the practice of translating "english" logic to ruby conditionals.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

This code probably uses symbols because of how symbols consume memory versus their relative strings. Symbols are immutable and cannot be changed at runtime and they lack the many instance methods associated with the string class. Instead, they consumer much less memory than strings as they refer to only one object as opposed to strings which consume more memory every time they are used. Using symbols often means being able to access objects associated with symbols faster than one would be able were they associated with strings.
