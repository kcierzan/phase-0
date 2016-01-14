# Your Names
# 1)Ian Kinner
# 2)Kyle Cierzan

# We spent [1.5] hours on this challenge.
def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7} #Defines a hash with items, ingredient sizes
  error_counter = 3 #Creates a variable and assigns it the integer value of 3

  library.each do |food| #Iterates over the hash and if the argument passed when calling the method is not equal to a key in the existing hash, increment the error counter by negative one.
    if library[food] != library[item_to_make]
      error_counter += -1
    end
  end

  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input") #Raises an error if the the variable error counter is greater than 0
  end

  serving_size = library.values_at(item_to_make)[0] #creates a variable and assigns it to the value of key (item to make)
  remaining_ingredients = num_of_ingredients % serving_size #calculates the remainder of variable num_of_ingredients divided by the serving size

  case remaining_ingredients #A conditional state where if there are no remaining ingredients, it outputs one string, else it outputs an alternate string.
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end


#SOLUTION

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  if !(library.key?(item_to_make))
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size

  if remaining_ingredients == 0
    "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    suggestions = []
    starting_remaining_ingredients = remaining_ingredients
    while (remaining_ingredients > 0)
      library.each do |food_item, ingredients|
        if remaining_ingredients >= ingredients
          suggestions << food_item
          remaining_ingredients -= ingredients
        end
      end
    end
    suggestion_hash = Hash.new(0)
    suggestions.each { |item| suggestion_hash[item] += 1 }

    string=suggestion_hash.map { |k, v| "#{v} of #{k}" }.join('; ')

    "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{starting_remaining_ingredients} leftover ingredients. Suggested baking items:" + string

  end
end

p serving_size_calc("pie", 9)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)
=begin

Reflection

What did you learn about making code readable by working on this challenge?

I learned that making code readable is not necessarily the same as making everything as short as possible. Sometimes, breaking code into multiple steps allows a more logical flow of ideas and consequently a more legible result. Using syntax that is similar to how one would describe the steps greats helping in creating legible code.

Did you learn any new methods? What did you learn about them?

I did not learn any new methods necessarily but I did learn how to refactor code into different syntaxes than I had been using previously. I got some practice using the map enumerable method which is proving to be very useful for passing code to every key/value pair in a hash. Also, the join method again proved to be useful in creating delimited strings.

What did you learn about accessing data in hashes?

I learned that accessing data in hashes and manipulating it effectively often requires converting some or all of the hash to a different data structure. We often had to convert key/value pairs in the hash to elements in an array or to interpolate keys/values into a string. Accessing data in hashes is relatively easy but manipulating that data can often prove challenging.

What concepts were solidified when working through this challenge?

I felt this challenge was a great exercise in control flow and converting between data structures in an effort to manipulate data. Establishing the logical statements in this challenge relied on the assignment of a number of local variables and the creation of a number of empty data structures that were filled up later as a result of iteration and conditional statements. Individually, no step in this challenge was particularly difficult, it was the combination of a number of data structures that had to be manipulated that made for a complex challenge.
