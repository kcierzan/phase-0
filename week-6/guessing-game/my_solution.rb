# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

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






# Reflection