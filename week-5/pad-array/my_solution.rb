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