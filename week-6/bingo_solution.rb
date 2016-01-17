# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


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
  #fill in the outline here

# Initial Solution

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
      row.collect! { |number| (number == @called_number[1]) ? 'X' : number }
    end
  end

  def print_column
    column = [@called_number[0]]
    @bingo_board.each do |row|
      column << row[@random_column]
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

# Refactored Solution



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

