# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
  #while true
    #puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => line 170
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => Unexpected end-of-input, keyword 'end'
# 5. Where is the error in the code?
# => The error lies within the method however the arrow appears at the end of the file
# 6. Why did the interpreter give you this error?
# => The interpreter was expecting an 'end' for the end of the method as the 'end' in place actually served to end the while loop. As a result, Ruby throws an error at the end of the file as it went through the whole file looking for an end.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# => 35
# 2. What is the type of error message?
# => Undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# =>  This is a name error
# 4. Where is the error in the code?
# => The error lies in the 'south_park' on line 35.
# 5. Why did the interpreter give you this error?
# => We failed to properly define south_park as a method or as a variable. Ruby does not recognize it as being associated with anything.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# => 50
# 2. What is the type of error message?
# => Undefined Method
# 3. What additional information does the interpreter provide about this type of error?
# => NoMethod Error
# 4. Where is the error in the code?
# => line 50 where a method is not properly defined
# 5. Why did the interpreter give you this error?
# => Methods must begin with def and end with end.

# --- error -------------------------------------------------------

#def cartmans_phrase
  #puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 65
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => There is 1 argument supplied for a method that should take 0.
# 4. Where is the error in the code?
# => line 69 where an argument is passed to the cartmans_phrase method.
# 5. Why did the interpreter give you this error?
# => Ruby was not expecting the method cartmans_phrase to take an argument.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
  #puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# => 84
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => 0 aruments are passed where Ruby was expecting 1.
# 4. Where is the error in the code?
# => line 88 where no argument was passed to the method cartman_says
# 5. Why did the interpreter give you this error?
# => Ruby was expecting an argument to be passed with the method call cartman_says. There was no argument passed.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
  #puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 105
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => 1 argument was passed while Ruby was expecting 2.
# 4. Where is the error in the code?
# => 109 where only one argument was passed with the method call on cartmans_lie
# 5. Why did the interpreter give you this error?
# => Ruby was expecting 2 arguments to be passed with cartmans_lie but only 1 was supplied.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# => 124
# 2. What is the type of error message?
# => Type Error
# 3. What additional information does the interpreter provide about this type of error?
# => String cannot be coerced into fixnum
# 4. Where is the error in the code?
# => line 124 where 5 is multiplied by a string
# 5. Why did the interpreter give you this error?
# => The interpreter cannot convert the string into a fixnum to carry out the operation

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# => 139
# 2. What is the type of error message?
# => ZeroDivision Error
# 3. What additional information does the interpreter provide about this type of error?
# => Divided by zero.
# 4. Where is the error in the code?
# => line 139 where 20 is divided by zero
# 5. Why did the interpreter give you this error?
# => The interpreter cannot divide by zero.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 155
# 2. What is the type of error message?
# => Load Error
# 3. What additional information does the interpreter provide about this type of error?
# => Cannot load the file cartmans_essay.md
# 4. Where is the error in the code?
# => line 155 where the interpreter cannot load/find the file cartmans_essay.md
# 5. Why did the interpreter give you this error?
# => There is no file cartmans_essay.md in the same directory as this file.


# --- REFLECTION -------------------------------------------------------
=begin

Which error was the most difficult to read?

I thought the second error involving the "unexpected end of input" error was the most difficult to read because it was an error by omission. Although the syntax appears correct initially, we can see that the method needs an end as well

How did you figure out what the issue with the error was?

When Ruby claimed that the error occurred on the file line of the file, I was able to deduce that Ruby was looking for something which it had not found earlier in the file. This points to an error by ommission rather than a typical typo-related syntax error.

Were you able to determine why each error message happened based on the code?

I was able to determine why these error messages occurred because the interpreter was able to point to the line where the error actually occurred in most cases and was even able to point out the exact location of some error with the arrow. From there it was simply taking a step back and remembering Ruby syntax.

When you encounter errors in your future code, what process will you follow to help you debug?

When I encounter errors in the future, I will be able to make an assessment about what to look for based on the error type the intepreter throws along with the location of the area. I will then be able to look for contextual clues to where the error may be. I also will use the commenting-out idea to isolate errors and work by process of elimination.

=end
