=begin
PSEUDOCODE

Input: An array comprised of the students names as strings
Output: An array of arrays with each sub array being an accountability group
Steps to get there:

Shuffle the students names in the list
IF the total number of names in the list is divisible by 4 with a remainder greater than 2
CREATE a number of lists equal to the size of the total list divided by 4
CREATE an additional list if the remainder of the total size of the list is not 0
FOR each item in the list, populate the lists created in the previous step until until the size of each list is 4, then move on to the subsequent list until the original list is empty
ELSIF the total number of names in the list is divisible by 5 with a remainder greater than 2
CREATE a number of lists equal to the size of the total list divided by 5
CREATE an additional list if the remainder of the total size of the list is not 0
FOR each item in the list, populate the lists created in the previous step until until the size of each list is 4, then move on to the subsequent list until the original list is empty
CREATE a list from the lists we created
RETURN that list



=end

#INITIAL SOLUTION

# def make_groups(list)
#   mixed_list = list.shuffle
#   if mixed_list.length % 4 == 0 || mixed_list.length % 4 > 2
#     groups = mixed_list.each_slice(4) { |group| p group }
#   else mixed_list.length % 5 == 0 || mixed_list.length % 5 > 2
#     groups = mixed_list.each_slice(5) { |group| p group }
#   end
# end
students = ["Dong Wook Seo",
"Aaron Hu",
"Adam Pinsky",
"Akeem Street",
"Alex Forger",
"Andrew Kim",
"Baron Kwan",
"Brian Bier",
"Byron Gage",
"Carl Conroy",
"Charlie Bliss",
"Christopher Bunkers",
"Cody Kendall",
"Coline Forde",
"David Valencia",
"Emily Bosakowski",
"Everett Golden",
"Hagai Zwick",
"Heather Conklin",
"Ian Wudarski",
"Ieronim Oltean",
"Jake Hamilton",
"James Boyd",
"Jasmeet Chatrath",
"Jenna El-Amin",
"Jerrie Evans",
"Joe Case",
"Jonathan Case",
"Jonathan Schwartz",
"Jonathan Silvestri",
"Kathryn Garbacz",
"Ian Kinner",
"Kyle Cierzan",
"Kyle Zelman",
"Linda Oanh Ho",
"Yiorgos Makridakis",
"Matt Harris",
"Matthew Baquerizo",
"Menuka Samaranayake",
"Michael Pintar",
"Mollie Stein",
"Lydia Nash",
"Aaron Opsahl",
"Peter Leong",
"Peter Stratoudakis",
"Prince Sadie",
"Ryan F. Salerno",
"Sanderfer Chau",
"Sarah Finken",
"EMMET SUSSLIN",
"Sydney Rossman-Reich",
"Eric Tenza",
"Thomas Yancey",
"Tim Kelly",
"Timothy Beck",
"Tyler Doerschuk"]
#REFACTORED SOLUTION
def make_groups(list)
  mixed_list = list.shuffle
  groups = []
  if mixed_list.length % 4 == 0 || mixed_list.length % 4 > 2
    mixed_list.each_slice(4) { |group| groups << group }
  else mixed_list.length % 5 == 0 || mixed_list.length % 5 > 2
    mixed_list.each_slice(5) { |group| groups << group }
  end
  p groups
end

make_groups(students)

# REFLECTION
=begin

What was the most interesting and most difficult part of this challenge?

The most interesting and difficult part of this challenge was attempting to approximate the functionality of a built-in ruby method like .each_slice using complex logic. I spent a great deal of time attempting to create a logical flow that would allow me to fill up multiple arrays from a single array.

Do you feel you are improving in your ability to write pseudocode and break the problem down?

I feel I am able to more accurately predict potential concerns that may arise in the coding process during the pseudocode process. Sometimes I think I could do a better job of breaking down every individual step instead of "jumping ahead" to a state that I know might be acheivable through built-in Ruby methods I am familiar with.

Was your approach for automating this task a good solution? What could have made it even better?

My solution to this problem is functional for the case of the 2016 Fiddler Crab however it is possible to imagine a situation where the total number of students in a cohort is not evenly divisible by 4 or 5 and where the remainder when divided by 4 or 5 would be less than 2. For these cases my method would likely do nothing. It could be improved by addressing these circumstances.

What data structure did you decide to store the accountability groups in and why?

I decided to store the accountability groups in a two-dimensional array because it would be very easy to access the data based on the index of the group and the individual's position within that group. Also, it would be easy to add/delete members from groups after the fact, if that kind of functionality was necessary.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

In refactoring my initial solution, I learned that I needed to push the output of my .each_slice method to an array or I would not be storing the data, simply outputting it to the console. Despite having to add a few lines of code, I felt this change was a necessary one as it would make further manipulation of the data far easier. Also I learned proper use of the each_slice method as well as the shuffle method.

=end