#GPS 2.2
#Your grocery list has the following minimum requirements. You will need to have separate methods for each of the following use cases:

#Create a new list
#Add an item with a quantity to the list
#Remove an item from the list
#Update quantities for items in your list
#Print the list (Consider how to make it look nice!)

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # CREATE empty hash = 1
  # Split input string into an array split by ' ' (space).
  # Use resulting array to populate keys in a hash
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method Add an item with a quantity to the list
  # input: hash create_list method, user-input string (item), user-input string (quantity)
  # steps:
  # convert quantity to integer (.to_i)
  # Set key equal to item
  # Set quantity to value
  # print new hash containing item
  # output: new hash

# Remove an item from the list
  # input: hash create_list method, user-input string (item), user-input string (quantity)
  # steps:
  # convert quanity to integer
  # DELETE key/value pair when user-input string EQUALS key
  # print new hash without specified key/value pair
  # output: new hash without specified key/value pair

# Method to update the quantity of an item
  # input: hash create_list method, user-input string (item), user-input string (new quantity)
  # steps: convert user-input string (new quantity) to an integer
  # REPLACE value in key/value pair with user-input string (new quantity) where key EQUALS user-input string (item)
  # print new hash with updated value for specified key
  # output: new hash with updated value for specified key

# Method to print a list and make it look pretty
  # input: hash create_list method
  # steps: On its own line print "Grocery List" to the console
  # ITERATE over hash and for every key/value pair UPCASE the key and interpolate into string in the format "[key] - [value]" and print this string on a new line.
  # output: A properly formatted list


# -- GROCERY LIST --
# MILK - 1
# BUTTER - 1
# EGGS - 1
# CARROTS - 10



def create_list(items)
  list = Hash.new(1)
  list_items = items.split(' ')
  list_items.each do |shopping_item|
    list[shopping_item] = 1
  end
  print_list(list)
end


def add_item(list, item, quantity)
  list[item] = quantity.to_i
  print_list(list)
end

def remove_item(list, item)
  list.delete(item)
  print_list(list)
end

def update_quantity(list, item, quantity)
  list.each { |existing_item, existing_quantity| existing_item == item ? list[existing_item] = quantity : list[existing_item] = existing_quantity }
print_list(list)
end

def print_list(list)
  puts "Shopping List"
  list.each do |item, quantity|
    puts "#{item.upcase} - #{quantity}"
  end
end

puts "Give me a list of groceries: "
items = gets.chomp

list = create_list(items)

puts "Give me an item to add: "
item = gets.chomp

puts "Give me a quantity for that item: "
quantity = gets.chomp

add_item(list, item, quantity)

puts "Give me a second item to add: "
item = gets.chomp

puts "Give me a quantity for that item: "
quantity = gets.chomp

add_item(list, item, quantity)

puts "Give me a third item to add: "
item = gets.chomp

puts "Give me a quantity for that item: "
quantity = gets.chomp

add_item(list, item, quantity)

puts "Give me a fourth item to add: "
item = gets.chomp

puts "Give me a quantity for that item: "
quantity = gets.chomp

add_item(list, item, quantity)


puts "Give me an item to remove: "
item = gets.chomp

remove_item(list, item)

puts "Give me the name of the item you wish to update: "
item = gets.chomp

puts "Give me the updated the quantity for that item: "
quantity = gets.chomp

update_quantity(list, item, quantity)

=begin

Reflection

What did you learn about pseudocode from working on this challenge?

During our pseudocoding, our guide was extremely helpful when she provided us with a pseudocoding style guideline. This allowed us to write useful pseudocode without focusing on Ruby methods. This added to our focus on keywords and key concepts that would prove to be extremely useful while coding, without pigeonholing us to particular ruby methods that may have proven confusing or misleading when it came to actual code. I learned it was more useful to stick to a certain convention while working with another person than to attempt to get every aspect of our pseudocode "right".

What are the tradeoffs of using Arrays and Hashes for this challenge?

During this challenge I found that it was a bit more natural to change and manipulate the values of arrays than it was to iterate through or modify the values/keys of hashes. I believe it was the kind of "one dimensionality" of arrays that made this feel a bit more immediate. By the end of the challenge I felt more comfortable modifying the data within hashes.

What does a method return?

A method, by default, returns the value of the last evaluated expression. This can prove to be confusing as one may think one has created a method that will modify a desired data structure, but in our case, it was necessary to explicitly return that data structure to ensure it was being modified correctly.

What kind of things can you pass into methods as arguments?

This challenge illustrated that we can pass a variety of objects as inputs to an argument. We were able to successfully pass strings, hashes, and integers to a method.

How can you pass information between methods?

It is possible to call a method within another method. This allows one to pass information from one method to another as the nested method will return information that the main method may not otherwise have access to. We accomplished this mainly with out "puts" formatting method which provided human-readable formatting to the hash we were working with.

What concepts were solidified in this challenge, and what concepts are still confusing?

This challenge solidified the nature of destrucitve methods as well as the nature of local variables. It was a bit of a challenge to determine which variables would be accessible to ever method and how those variables may change based on user input in our command line appplication. I feel fairly comfortable with the concepts addressed in this challenge but I feel the nagging sense that I may be circumventing some "best practices" in my methods or solutions as I sometimes find difficulty in refactoring my solutions.

=end

# TEST CODE - CREATE LIST
#puts "give me a list of groceries:"
#items = gets.chomp

# items = "apple orange milk eggs"

# list = create_list(items)
#   p list == {"apple" => 1, "orange"=> 1, "milk" => 1, "eggs" => 1}

# # TEST CODE - ADD ITEM TO LIST
# add_item(list, "lemonade", 2)
# add_item(list, "tomatoes", 3)
# add_item(list, "onion", 1)
# add_item(list, "ice cream", 4)

# p list == {"apple" => 1, "orange"=> 1, "milk" => 1, "eggs" => 1, "butter" => 4}

# # TEST CODE - REMOVE ITEM FROM LIST
# remove_item(list, "orange")

# p list == {"apple" => 1, "milk" => 1, "eggs" => 1, "butter" => 4}

# # TEST CODE - UPDATE LIST
# update_quantity(list, "apple", 3)

# p list == {"apple" => 3, "milk" => 1, "eggs" => 1, "butter" => 4}