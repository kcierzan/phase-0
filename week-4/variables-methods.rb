puts "What is your first name?"
first_name = gets.chomp

puts "What is your middle name?"
middle_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

puts "You are #{first_name} #{middle_name} #{last_name}!"

puts "Please enter a number."
number = gets.chomp.to_i

puts "Why don't you go with #{number + 1} as this is undoubtedly a cooler number."

=begin

How do you define a local variable?

A local variable is defined by setting it equal to something. Local variables can be assigned to strings, arrays, fixnums, floats etc. For example, setting a local variable "num_1" to equal 1 look like: num_1 = 1

How do you define a method?

Defining a method begins with the syntax "def", followed by the method name, arguments the method takes, the actions the method is to perform, the ends with "end". For example, creating a method that takes two inputs x and y and converts the integers to floats and performs float division looks like:

def float_division(x, y)
  x.to_f / y.to_f
end

What is the difference between a local variable and a method?

A local variable is a way of storing a value. That value can be anything from strings to fixnums to arrays etc. A method is a way to store a collection of smaller operations as a single operation to be performed later. Methods often take input while variables are defined explicitly.

How do you run a ruby program from the command line?

Ruby programs are run in the command line by navigating to the directory containing the Ruby file and typing "ruby filename.rb" where filename.rb is the name of the program.

How do you run an RSpec file from the command line?

RSpec is run from the command line by typing "rspec ruby_spec_file.rb" where ruby_spec_file.rb is the name of the spec file that will be used to check the ruby file referenced in it.

What was confusing about this material? What made sense?

I found these exercises to be largely straightforward however I ran into an aggravating snag when testing one of my exercise files in rspec. RSpec seemed was throwing a message that there was a failure in returning a string that was equal to the one expected in the Rspec file. I was sure my code was good and drove myself crazy looking for a minor typo or error. It was only until after I meticulously re-read the insturctions to find that they instructions wanted me to RETURN a string - I was printing the string to the console. It was an eye-opening momement about the nature of what we think we are absolutely sure of versus our insecurities and where we expect problems to arise.

Define Method Exercise
https://github.com/kcierzan/phase-0/blob/master/week-4/define-method/my_solution.rb

Format Address Exercise
https://github.com/kcierzan/phase-0/blob/master/week-4/address/my_solution.rb

Math Exercise
https://github.com/kcierzan/phase-0/blob/master/week-4/math/my_solution.rb

=end