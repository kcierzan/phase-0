# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
end

def my_hash_finding_method(source, thing_to_find)

end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.map! { |word| word.is_a?(Integer) ? word + thing_to_modify : word }
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each { |key, value| source[key] = value + thing_to_modify }
end

# Identify and describe the Ruby method(s) you implemented.
#
# The first solution here was the tricky one for me. I struggled a lot with this method as I feel I am somewhat weak on the iteration front, especially when it comes to "selectively iterating". I knew there was some kind of logical statement I had to include to target only integer values in the array but I was unsure how to modify them destructively. I ended up using a destructive method map! combined with a "ternary operator" which was a very new concept for me. This method iterates through the array and for every element in the array, it checks to see if the element is an integer. If the element is an integer, is adds the user input to the "word" (integer element in the array). If the "word" is not an integer, is simply leaves it alone (makes it the "original" word itself.) I found ternary operators very useful in combining a kind of boolean "if" statment with a destructive iteration process.

# My next statment was more straightforward for me. The key (so to speak) here was getting the syntax right for the "add key/value pair to a hash" part of this method. This method iterates over the hash and for every key/value pair, it adds the user input "thing_to_modify" to the existing hash value for every key. It does this by updating every key value pair in the hash and in the process adds the user input to the value of every key/value pair.
#
#


# Person 3
def my_array_sorting_method(array, number)

end

def my_hash_sorting_method(source)
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
end

def my_hash_deletion_method!(source, thing_to_delete)
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
end

def my_hash_splitting_method(source, age)
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#