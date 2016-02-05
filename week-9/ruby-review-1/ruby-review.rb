# OO Basics: Student


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
=begin
//RELEASE 1
CREATE 5 instances of a student class where the name variable is the student's name and the scores variable is a list of their test scores

CREATE an array of students where every element in the array is a different instance of a student class

//RELEASE 2
ACCESS every element in each student's grades array and sum the elements and divide by the length of the array.
IF that average is within the following ranges, assign the corresponding letter to the student object as an instance variable
A for >=90%, B for >=80%, C for >= 70%, D for >= 60% and F for < 60%

//RELEASE 3
ITERATE over the array of students.
IF the student's first name as provided in the search matches a student's name in the array
  RETURN the position of the student's name in the array.
ELSE
  RETURN -1

//RELEASE 4
SORT the array of students names by name
CREATE a variable that stores the midpoint of the array
CREATE a variable that stores the minimum searchable index of the array
CREATE a variable that stores the maximum searchable index of the array
WHILE the minimum index is LESS THAN OR EQUAL to the maximum index
  IF the value of the search name is EQUAL TO the name at the midpoint of the array
    RETURN the index of the name at the midpoint
  ELSIF the value of the search name is LESS THAN the name at the midpoint of the array
    SET the minimum searchable index to the midpoint incremented by 1
  ELSE
  SET the maximum searchable index to the midpoint decremented by 1
RETURN student name not found


=end
# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(scores, name)
    @scores = scores
    @first_name = name
    @grade_average = @scores.inject { |sum, n| (sum + n) } /@scores.length
  end

  def average
    return @grade_average
  end

  def letter_grade
   if @grade_average >= 90
     return "A"
   elsif @grade_average >= 80
     return "B"
   elsif @grade_average >= 70
     return "C"
   elsif @grade_average >= 60
     return "D"
   else
     return "F"
   end
  end


end

def linear_search(students, name)
  students.each_with_index do |student, index|
    if student.first_name == name
      return index
    end
  end
  return -1
end

def binary_search(students, name)
  sorted_students = students.sort_by { |a| a.first_name}
  min_search_index = 0
  max_search_index = students.length-1


  while min_search_index <= max_search_index
    students_midpoint = (min_search_index + max_search_index) / 2
    if name == sorted_students[students_midpoint].first_name
      return students_midpoint
    elsif sorted_students[students_midpoint].first_name < name
      min_search_index = students_midpoint + 1
      puts min_search_index
    else
      max_search_index = students_midpoint - 1
      puts max_search_index
    end
  end
  p "Student name not found!"
end

def rec_binary_search(students, name, min_search_index, max_search_index)
     students_midpoint = (min_search_index + max_search_index) / 2
      if students[students_midpoint].first_name > name
        return rec_binary_search(students, name, min_search_index, students_midpoint - 1);
      elsif (students[students_midpoint].first_name < name)
        return rec_binary_search(students, name, students_midpoint + 1, max_search_index);
      else
        return students_midpoint;
      end
end


alex = Student.new([100,100,100,0,100],"Alex")
sam = Student.new([90,100,87,66,100],"Sam")
ruby = Student.new([70,100,97,99,80],"Ruby")
chuck = Student.new([99,40,60,79,70],"Chuck")
mike = Student.new([70,100,97,99,80],"Mike")

students = [alex, sam, ruby, chuck, mike]

# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

# p students[0].first_name == "Alex"
# p students[0].scores.length == 5
# p students[0].scores[0] == students[0].scores[4]
# p students[0].scores[3] == 0


# # Additional Tests 1:

# p students[0].average == 80
# p students[0].letter_grade == 'B'

# # Additional Tests 2:

# p linear_search(students, "Alex") == 0
# p linear_search(students, "NOT A STUDENT") == -1
  sorted_students = students.sort_by { |a| a.first_name}
p rec_binary_search(sorted_students, "Alex", 0, 4) == 0

=begin
REFLECTION

What concepts did you review in this challenge?

We reviewed a number of concepts in this challenge. We were able to take another look at classes, instance variables, iterating over arrays, and mosty interestingly, recursive methods.

What is still confusing to you about Ruby?

Nothing in this challenge was conceptually a struggle but it was a bit tricky determining the logic and recusive elements of our recusive binary search. This was likely more to do with keeping our variable names straight as we worked through the logic.

What are you going to study to get more prepared for Phase 1?

I need to study the differenes in scope and namespacing between Ruby and Javascript so I don't keep confusing the two. I feel like I understand the underlying concepts but I can get turned around when working through a challenge.

=end