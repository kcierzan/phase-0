# Factorial

# I worked on this challenge [ with: ].
# input an integer that produces a factorial number
# count down to one using while loop
# sum multiplied by number equals new sum
# decrement sum by one
# repeat loop until number is 0
#
# Your Solution Below
def factorial(number)
  sum = 1
  until number == 0
    sum *= number
    number -= 1
  return sum
end

