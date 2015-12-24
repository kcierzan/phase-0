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

