# Introduction to Inheritance

# I worked on this challenge [by myself].


# Pseudocode




# Initial Solution

# require 'date'

# class GlobalCohort

#   attr_reader :students, :immersive_start, :graduation, :email_list, :p0_start, :name

#   def initialize(name)
#     @name = name
#     puts "Global cohort #{@name} has been created!"
#   end

#   def set_students(students)
#     @students = students
#     puts "LIST OF STUDENTS ADDED:"
#     @students.each do |student|
#       puts student.name
#     end
#   end

#   def p0_start_date(year, month, day)
#     @p0_start = Date.new(year,month,day)
#     @immersive_start = @p0_start + 63
#     @graduation = p0_start + 133
#   end


#   def create_email_list
#     @email_list = []
#     if defined?(@students)
#       @students.each do |student|
#         @email_list << student.email
#       end
#       puts "EMAILS LIST:"
#       puts @email_list
#     else
#       puts "You must add students before you can make the email list!"
#     end
#   end

#   def num_of_students
#     puts "There are #{@students.length} students in this cohort"
#   end

#   def add_student(student_to_add)
#     @students << student_to_add
#     puts "#{student_to_add.name} has been added!"
#   end

#   def remove_student(student_to_delete)
#     @students.delete_if {|student| student == student_to_delete}
#     puts "#{student_to_delete.name} has been deleted!"
#   end

#   def currently_in_phase
#     todays_date = Date.today
#     if (todays_date - p0_start).to_f < 0
#       puts "This cohort hasn't started!"
#     elsif (todays_date - @p0_start).to_f <= 63
#       puts "This cohort is in Phase 0"
#     elsif (todays_date - @p0_start).to_f <= 84
#       puts "This cohort is in Phase 1"
#     elsif (todays_date - @p0_start).to_f <= 105
#       puts "This cohort is in Phase 2"
#     elsif (todays_date - @p0_start).to_f <= 126
#       puts "This cohort is in Phase 3"
#     else
#       puts "This cohort has graduated"
#     end
#   end

#   def graduated?
#     todays_date = Date.today
#     if (todays_date - p0_start).to_f > 126
#       p true
#     else
#       p false
#     end
#   end

# end

# class LocalCohort < GlobalCohort

#   def initialize(name, location)
#     @name = name
#     @location = location
#     puts "Local cohort #{@name} - #{@location} has been created!"
#   end

#   def set_students(students)
#     super
#     @students.delete_if {|student| student.attending_location != @location }
#   end

#   def add_student(student_to_add)
#     if student_to_add.attending_location == @location
#       super
#     else
#       puts "This student is not attending this location"
#     end
#   end

#    def remove_student(student_to_delete)
#     if student_to_delete.attending_location == @location
#       super
#     else
#       puts "This student is not attending this location"
#     end
#   end


# end

# class Student

#   attr_accessor :name, :email, :attending_location

#   def initialize(name, email, attending_location)
#     @name = name
#     @email = email
#     @attending_location = attending_location
#   end
# end


# Refactored Solution
require 'date'

class GlobalCohort

  attr_reader :students, :immersive_start, :graduation, :email_list, :p0_start, :name

  def initialize(name)
    @name = name
    puts "Global cohort #{@name} has been created!"
  end

  def set_students(students)
    @students = students
    puts "LIST OF STUDENTS ADDED:"
    @students.each do |student|
      puts student.name
    end
  end

  def p0_start_date(year, month, day)
    @p0_start = Date.new(year,month,day)
    @immersive_start = @p0_start + 63
    @graduation = p0_start + 133
  end


  def create_email_list
    @email_list = []
    if defined?(@students)
      @students.each do |student|
        @email_list << student.email
      end
      puts "EMAILS LIST:"
      puts @email_list
    else
      puts "You must add students before you can make the email list!"
    end
  end

  def num_of_students
    puts "There are #{@students.length} students in this cohort"
  end

  def add_student(student_to_add)
    @students << student_to_add
    puts "#{student_to_add.name} has been added!"
  end

  def remove_student(student_to_delete)
    @students.delete_if {|student| student == student_to_delete}
    puts "#{student_to_delete.name} has been deleted!"
  end

  def currently_in_phase
    days_in_program = (Date.today - p0_start).to_i
    section_days = 63
    phase_number = 0
    if days_in_program < 0
      puts "The #{name} haven't started yet!"
    elsif days_in_program > 126
      puts "The #{name} already graduated!"
    else
      while days_in_program > section_days do
        section_days += 21
        phase_number += 1
      end
      puts "The #{@name} are currently in Phase #{phase_number}"
    end
  end

  def graduated?
    todays_date = Date.today
    if (todays_date - p0_start).to_f > 126
      p true
    else
      p false
    end
  end

end

class LocalCohort < GlobalCohort

  def initialize(name, location)
    @name = name
    @location = location
    puts "Local cohort #{@name} - #{@location} has been created!"
  end

  def set_students(students)
    @students = []
    puts "LIST OF LOCAL STUDENTS ADDED:"
    students.each do |student|
      if student.attending_location == @location
        @students << student
        puts student.name
      end
    end
  end

  def add_student(student_to_add)
    if student_to_add.attending_location == @location
      super
    else
      puts "This student is not attending this location"
    end
  end

   def remove_student(student_to_delete)
    if student_to_delete.attending_location == @location
      super
    else
      puts "This student is not attending this location"
    end
  end


end

class Student

  attr_accessor :name, :email, :attending_location

  def initialize(name, email, attending_location)
    @name = name
    @email = email
    @attending_location = attending_location
  end
end

#DRIVER CODE

# kyle = Student.new("Kyle Cierzan", "kcierzan@gmail.com", "San Francisco")
# jim = Student.new("Jim Smith", "slimjim@hotmail.com", "Chicago")
# sally = Student.new("Sally Jones", "salgal@gmail.com", "New York")
# beth = Student.new("Beth White", "betty12@gmail.com", "San Francisco")
# vlad = Student.new("Vladimir Dmitriovitch", "vlad1@hotmail.com", "San Francisco")
# jessica = Student.new("Jessica Chastain", "famousstar@gmail.com", "San Francisco")

# students = [kyle, jim, sally, beth, vlad]

# global_crabs = GlobalCohort.new("Fiddler Crabs")
# global_crabs.set_students(students)
# global_crabs.p0_start_date(2015, 10, 12)
# global_crabs.create_email_list
# global_crabs.num_of_students
# global_crabs.add_student(jessica)
# global_crabs.num_of_students
# global_crabs.remove_student(vlad)
# global_crabs.num_of_students
# global_crabs.currently_in_phase
# global_crabs.graduated?
# global_crabs.graduation
# global_crabs.immersive_start

# sf_crabs = LocalCohort.new("wombats", "San Francisco")

# sf_crabs.set_students(students)
# sf_crabs.students
# sf_crabs.p0_start_date(2015, 1, 14)
# sf_crabs.remove_student(sally)
# #sf_crabs.remove_student(beth)
# sf_crabs.students
# sf_crabs.num_of_students
# sf_crabs.currently_in_phase


# Reflection
=begin
What concepts did you review in this challenge?

In this challenge I was able to review inheritance, scope, instance variables, while loops, and objects.

What is still confusing to you about Ruby?

I struggled a bit in implementing super but I eventually realized that I was not able to "extend" the method from the superclass in the way I was hoping to. In some situations I ended up having to simply redefine the method in the subclass. I cleared up most of my confusion about inheritance during the course of this challenge.

What are you going to study to get more prepared for Phase 1?

I am going to study classes and inheritance a bit more because I can sometimes get confused regarding how instance variables/methods are inherited. Although I believe I understand the basic concept, complex implementations of inheritance are still somewhat confusing.

=end