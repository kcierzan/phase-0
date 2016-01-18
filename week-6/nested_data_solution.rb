# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
p array[1][1][2][0]
# ============================================================



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# def add_five(array)
#   array.map! do |element|
#     if element.is_a? Integer
#       element + 5
#     else
#       element.map! {|subelement| subelement + 5 }
#     end
#   end
#   p array
# end

# def add_five(array)
#   array.map! {|element| element.is_a?(Integer) ? element + 5 : element.map! {|subelement| subelement + 5} }
#   p array
# end

def add_five(array)
  array.map! do |element|
    if element.is_a? Integer
      element += 5
    else
      add_five(element)
    end
  end
end


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# def namer(array)
#   array.map! do |item|
#     if item.is_a? String
#       item = item + "ly"
#     else
#       item.map! do |subitem|
#         if subitem.is_a? String
#           subitem = subitem + "ly"
#         else
#           subitem.map! { |subsubitem| subsubitem + "ly" }
#         end
#       end
#     end
#   end
# end

def namer(array)
  array.map! do |item|
    if item.is_a? String
      item = item + "ly"
    else
      namer(item)
    end
  end
end


#REFLECTION
=begin

What are some general rules you can apply to nested arrays?

Some rules that can be applied to nested arrays:

1. Iterating over nested arrays often requires nested iterators
2. Accessing elements in nested arrays requires one index per "level"
3. Recursion can be used to iterate over infintely many nested arrays

What are some ways you can iterate over nested arrays?

Iterating over nested arrays can be accomplshed with nested iteration or with recursive iteration. This allows one to call the correct method using logic - often there is a difference between the enumerable method one would call on an array and methods one would call on array elements. Conditional statements allow one to differentiate between array and their elements.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

We used the map! method as I understood that it was able to replace array elements with elements after they had been passed the code block. I thought this kind of destructive method was appropriate for modifying the original array as the instructions requested.
=end