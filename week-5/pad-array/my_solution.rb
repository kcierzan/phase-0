# Pad an Array

# I worked on this challenge [by myself with: Aaron Opsahl ]

# I spent [2.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# An array, a minimum size for the array (a non-negative integer), and an optional argument for what the array should be padded with
# What is the output? (i.e. What should the code return?)
# An array with the same number of elements as the minimum size. If no optional argument is provided, any elements added will be "nil". If an optional argument is provided the additional elements will be equal to the optional argument.
# What are the steps needed to solve the problem?
# Create a variable that is equal to the minimum size less the length of the array (DIFFERENCE)
# IF length of array is >= min_size
# return array
# ELSE
# WHILE DIFFERENCE > 0
# push argument to array
# decrement DIFFERENCE

# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#  difference_in_size = min_size - array.length
#  if difference_in_size <= 0
#    return array
#  else
#    while difference_in_size > 0
#      array.push(value)
#      difference_in_size -= 1
#    end
#    return array
#  end
# end

# def pad(array, min_size, value = nil) #non-destructive
#   new_array = []
#   array.each do |x|
#       new_array.push(x)
#   end
#   difference_in_size = min_size - array.length
#          if difference_in_size <= 0
#            return new_array
#          else
#           while difference_in_size > 0
#              new_array.push(value)
#              difference_in_size -= 1
#            end
#            return new_array
#          end
# end


# 3. Refactored Solution

def pad!(array, min_size, value = nil)
    if min_size <= array.length
        return array
    else
        while min_size - array.length > 0
            array << value
        end
        return array
    end
end

def pad(array, min_size, value = nil)
    new_array = Array.new(array)
    if min_size <= array.length
        return new_array
    else
        while min_size - new_array.length > 0
            new_array << value
        end
        return new_array
    end
end

# 4. Reflection
=begin
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

We were able to translate our pseudocode to code fairly easily as we used statments in our pseudocode that corresponded with Ruby methods. The difficulties arose when we had to establish the sequence of events in our code while the sequence is a bit more ambiguous in the english version

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

Our initial solutions was not successful at passing the tests because we had started down a rabbit hole where we were trying to do more than the challenge was going to require and we ended up over-coding our solution until we made too many guesses to manage successfully. We ended up starting again and working towards a very literal solution to the challenge that greatly helped simplify our efforts.

When you refactored, did you find any existing methods in Ruby to clean up your code?

We did not end up using any particularly sophisticated ruby methods in our solution. Much of our work centered around creating a functioning loops based on boolean expressions.

How readable is your solution? Did you and your pair choose descriptive variable names?

I believe our solution is very readable because our methods were fairly simply and we did not agonize about getting everything on one line. Our variables are descriptive and clearly describe the purpose they serve within the methods.

What is the difference between destructive and non-destructive methods in your own words?

The difference between destructive and non-destructive methods is that non-destructive methods create a copy of the input or variable that is modified as opposed to destructive methods which modify the input or variable without copying.

=end
