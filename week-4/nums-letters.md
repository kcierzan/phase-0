#What does puts do?

Puts displays the output of the code and a new line to the console. This is in contrast to print which simply displays the output to the console without creating a new line. P is different that these two because P both displays the output and returns it.

#What is an integer? What is a float?

An integer is a whole number, either positive or negative. A float is a number with a decimal or a fraction. In ruby, integers have no decimal point. A float always contains a decimal point in ruby.

#What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

When using integers in Ruby, fractions of whole numbers are simply rounded down. This makes typical division problems where the numerator is not a factor of the denominator result in solutions we may see as "incorrect" from a typical algebra perspective. In contrast, floats (numbers with a decimal place) allow Ruby to complete mathematical operations "correctly" - that is, return values that are a fraction of a whole number. Integers are typically used for indivisible quantities and floats for quantities that are infinitely divisible.

```ruby
puts 24 * 365
puts 60 * 24 * 365 * 10
```

#How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby is able to perform addition, subtraction, multiplication, and division of numbers because these are all methods associated with both the fixnum and float classes. When Ruby is supplied integers as arguments for these methods, Ruby will return integers, when Ruby is supplied floats as arguments for these methods, Ruby will return floats.

#What is the difference between integers and floats?

Integers are best described as whole numbers. Any result of a method call on an integer will always result in an integer. When an integer is divided by a number that would create a fraction, the integer is always rounded down to the nearest whole number. Floats are similar to integers however they can be fractions of a whole number. Floats are signified by the presences of a decimal place in the number. Floats can be divided by each other or by integers and will result in a fraction of a whole number when divided by a non-multiple.


#What is the difference between integer and float division?

Integer division will return a rounded down whole number whereas float division will return a number with decimal places. Integer division can often return results that appear "incorrect" in the traditional alegbra sense while floats will give more precise mathematical resutls.

#What are strings? Why and when would you use them?

Strings are groups of letters, numbers, symbols, and spaces. Strings are delimited by single or double qutotation marks in Ruby. Strings are typically used to store text by assigning a variable to a string value.

#What are local variables? Why and when would you use them?

Local variable are used when storing information to the be used in subsequent steps of the program. One can assign strings, fixnums, floats, to local variables. Local variables point to the values that are assigned to them.

#How was this challenge? Did you get a good review of some of the basics?

Though I worked on reviewing Ruby concepts a good deal in the interest of interviewing well for DBC, I found myself somewhat anxious going in this week. I am realizing that programming is a "use it or lose it" skill that must be exercised in order for the concepts to remain fresh in your mind. I am feeling better knowing that we are not expected to retain 100% of the information we may have crammed in before our interviews. Encountering these concepts for a second time will surely cement them in my mind more effectively than the "cramming" I did pre-interview.




