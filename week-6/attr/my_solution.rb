#Attr Methods

# I worked on this challenge [by myself:]

# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: Instance of NameData class within instance of Greeting class
# Output: My name as read from the NameData instane
# Steps:
# DEFINE NameData class
# DEFINE initialize instance method for NameData class
# SET instance variable my_name equal to string "Kyle Cierzan"
# DEFINE reader method for instance variable my_name
# DEFINE Greetings class
# DEFINE initialize instance method for Greetings class
# within that method, instantiate NameDate class
# call my_name method on NameData instance and return the output

class NameData

  attr_reader :my_name

 def initialize
   @my_name = "Kyle Cierzan"
 end
end


class Greetings
  def initialize
    greeting = NameData.new
    p greeting.my_name
  end
end

hi = Greetings.new


# Reflection:
=begin
RELEASE 1

What are these methods doing?

These methods are alternately returning and changing the values assigned to the instance variables within the instance of the Profile class.

How are they modifying or returning the value of instance variables?

Within the Profile class, there are methods defined that return instance variables and other methods that change instance variables that take an argument. When we instantiate the profile class, we call these methods on the instance and provide arguments if necessary. This is how we are able to return and update these instance variables.

RELEASE 2

What changed between the last release and this release?

In this release, we have replaced the "what_is_age" method with attr_reader :age. Also, rather than calling what_is_age on the instance, we need only call age.

What was replaced?

The what_is_age methods was replaced with attr_reader :age.

Is this code simpler than the last?

This code is simpler than the last because we have eliminated the need for a method to simply print an instance variable and replaced it with a reader method that serves the purpose more elegantly.

RELEASE 3

What changed between the last release and this release?

We deleted the instance method that changes the instance variable @age.

What was replaced?

We replaced the instance method change_my_age with attr_writer :age

Is this code simpler than the last?

This code is simpler than the last because, again, we were able to eliminate a method that was being used to change the value of an instance variable with single line of code.

RELEASE 6

What is a reader method?

A reader method is a method that allows access to instance variables between classes. Reader does not allow those variables to be changed from outside the instance of the class.

What is a writer method?

A writer method is similar to the reader method in that it allows instance variables to be accessed outside the instance of the class itself, however writer methods allow that variable to be changed outside the class.

What do the attr methods do for you?

Attr methods remove the need the define methods for updating and returning instance variables.

Should you always use an accessor to cover your bases? Why or why not?

You should not always use an accessor to "cover your bases" as it is often unnecessary to allow another class or method the ability to change data in a class. This can lead to issues in data security and difficulties in debugging code.

What is confusing to you about these methods?

I find it somewhat confusing that the attr methods refer to symbols which appear to be linked to instance variables. This kind of association seems to be more "behind the scenes" than other associations I have seen thus far.


=end