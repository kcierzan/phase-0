# Numbers to Commas Solo Challenge

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# A positive integer.
# What is the output? (i.e. What should the code return?)
# A number formatted as a string with correct comma placement
# What are the steps needed to solve the problem?
# CONVERT the input integer to an array where every digit is an element in the array
#IF the array has between four and six elements, add a comma at the index position (number of elements in the array less 3).
#CONVERT the array to a string.
#DISPLAY the string on the console.
#ELSIF the array has between seven and nine elements, add a comma at the index (number of elements in the array less 6) then add a comma at the index (number of elements in the array less 2).
#CONVERT the array to a string.
#DISPLAY the string on the console.
#ELSE
#CONVERT the array to a string.
#DISPLAY the string on the console.



# 1. Initial Solution
# def separate_comma(number)
#  if number >= 1000
#   number_arry = number.to_s.split(//)
#   if number_arry.length >= 4 && number_arry.length <= 6
#     comma_one_index = number_arry.length - 3
#     number_arry.insert(comma_one_index, ",")
#   else number_arry.length >= 7 && number_arry.length <= 9
#     comma_one_index = number_arry.length - 6
#     comma_two_index = number_arry.length - 2
#     number_arry.insert(comma_one_index, ",")
#     number_arry.insert(comma_two_index, ",")
#   end
#     p number_arry.join
#  else
#    p "#{number}"
#  end
# end





# 2. Refactored Solution
def separate_comma(number)
 if number >= 1000
  number_arry = number.to_s.split(//)
  if number_arry.length <= 6
    comma_index = number_arry.length - 3
    number_arry.insert(comma_index, ",")
  else number_arry.length >= 7 && number_arry.length <= 9
    comma_index = number_arry.length - 6
    number_arry.insert(comma_index, ",")
    comma_index = number_arry.length - 3
    number_arry.insert(comma_index, ",")
  end
    p number_arry.join
 else
   p "#{number}"
 end
end




# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?

My first thought process in breaking down the problem was to attempt to create the desired string by adding together individual sections with "static" commas separating them. ie "digits" + "," + "more_digits" etc. I soon realized the math to creat these sections would have to be very complex and individualized based on the input. Then I attempted a solution that involved converting the integer input to an array then adding the commas into the array and reconverting to a string.

Was your pseudocode effective in helping you build a successful initial solution?

My pseudocode was extremely helpful in establishing the logic and conditions I would need to process the input integer effectively under a variety of conditions. I supplemented my pseudocode by using a pencil and paper to work out the index positions I would need when inserting the commas.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

A few new methods I used in this challenge were the insert and join methods associated with the array class. The syntax for these was fairly
straightforward however I knew much of my solution hinged on being able to pass a variable with an integer value as an arguement to the insert method. Without this, I knew I would not be able to dynamically adjust where my commas were being inserted based on the size of the input integer.

How did you initially iterate through the data structure?

I inititally iterated over the integer by converting it into a string and subsequently converting that string to an array where every character in the string became an element in the array. This allowed me to insert commas using an index.

Do you feel your refactored solution is more readable than your initial solution? Why?

I feel my refactored solution is slightly more readable than my initial solution as it minimizes the number of variables by reassinging values to a variable that was not going to be used again and that was to serve the same purpose albeit with different values.

=end