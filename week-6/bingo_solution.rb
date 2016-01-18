# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [2.5] hours on this challenge.


# Release 0: Pseudocode
# Outline: Create an instance of BingoBoard that

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Create a list with b, i, n, g, and o.
  #Create a random number between 0 and 4 and store it.
  #Create a random number between 1 and 100.
  #Output a list in the format: ["bing_list[random_1]", random_2] and store it as called_number.


# Check the called column for the number called.
  #Define a method where
  #FOR EVERY element in the board with an index equal to random_1
  #CHECK to see if that number is equal to random_2

# If the number is in the column, replace with an 'x'
  #IF the number is equal to random_2, set that number equal to 'x'

# Display a column to the console
# Create a new list with the letter called in it
# For every a list within the bingo board, put the item in the list with the index equal to random_2 into the new list

# Display the board to the console (prettily)
# Add a list of the letters in BINGO to the bingo board
# Display that list to the console
# FOR every list int the bingo board, display the list on a new line

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call
#     @random_column = Random.new.rand(0..4)
#     random_number = Random.new.rand(1..100)
#     @bingo_arry = ["B", "I", "N", "G", "O"]

#     @called_number = [@bingo_arry[@random_column], random_number]
#   end

#   def check
#     @bingo_board.each do |row|
#       row.collect! { |number| (number == @called_number[1]) ? 'X' : number }
#     end
#   end

#   def print_column
#     column = [@called_number[0]]
#     @bingo_board.each do |row|
#       column << row[@random_column]
#     end
#     column.each { |number| puts number}
#   end

#   def display_board
#     @bingo_board.insert(0, @bingo_arry)
#     #p @bingo_board
#     @bingo_board.each do |row|
#       row << "\n"
#       print row.join(" ")
#     end
#   end

# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @random_column = Random.new.rand(0..4)
    random_number = Random.new.rand(1..100)
    @bingo_arry = ["B", "I", "N", "G", "O"]

    @called_number = [@bingo_arry[@random_column], random_number]
  end

  def check
    @bingo_board.each do |row|
      row.map! { |number| (number == @called_number[1]) ? 'X' : number }
    end
  end

  def print_column
    column = [@called_number[0]]
    @bingo_board.each { |row| column << row[@random_column] }
    end
    column.each { |number| puts number}
  end

  def display_board
    @bingo_board.insert(0, @bingo_arry)
    #p @bingo_board
    @bingo_board.each do |row|
      row << "\n"
      print row.join(" ")
    end
  end

end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

my_game = BingoBoard.new(board)

my_game.call

my_game.check

my_game.call

my_game.check

my_game.call

my_game.check

my_game.call

my_game.check

my_game.print_column

my_game.display_board


# new_game = BingoBoard.new(board)


#Reflection
=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

Pseudocoding for this challenge was difficult as describing the nested data structures and their associated indexes was difficult without using Ruby-specific terminology. The methods-to-be were easier to describe as they were largely of the "check" or "update" variety. I think my pseudocode attempt to conceptually lay the groundwork without using too much Ruby specific words however I need to work on standardizing it and making it more readable.

What are the benefits of using a class for this challenge?

The use of a class in this challenge allows one to store a number of data structures and methods without having to constantly re-define them. For example, in the "call" method, I was able to generate two random numbers that I used to 1) randomly select a column in the board, and 2) randomly select a number between 1 and 100 that would be called. With the class, I was able to store these values and instance variables and make them available to other methods within the class.

How can you access coordinates in a nested array?

Accessing coordinates in a nested array is accomplished by referring to the index of the "row" followed by the "column". For example, assuming we are displaying these nested arrays in a grid-like format, array[0][1] refers to the first row, second column.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

I learned the .insert method while working on this challenge. According to the ruby docs, insert is used to insert an element into an array at a given index. In this challenge, I am using it to insert the BINGO "header" into the beingo board for display purposes. I call it on the @bingo_board instance variable and I supplied it with arguments for index and array.

How did you determine what should be an instance variable versus a local variable?

If multiple methods needed to access a variable, I would use an instance variable. For example, I set the random column variable and the bingo array to instance variables as I had to access information about the random column variable in my print column method. I also used the bingo array instance variable for both calling the numbers and for display purposes.

What do you feel is most improved in your refactored solution?

I do not believe my refactored solution differes greatly from my initial solution. I was able to shorten some iteration to one-line however I felt I struck a good balance between efficiency and readability with my initial solution that I could not improve upon it dramatically without compromising one of those aspects.

=end