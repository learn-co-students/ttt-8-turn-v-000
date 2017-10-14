#  1) ./lib/turn.rb #display_board prints arbitrary arrangements of the board
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#  2) ./lib/turn.rb #input_to_index converts a user_input to an integer
#  3) ./lib/turn.rb #input_to_index subtracts 1 from the user_input
#  4) ./lib/turn.rb #input_to_index returns -1 for strings without integers
def input_to_index(user_input)
    index = user_input.to_i - 1
end

# 5) ./lib/turn.rb #valid_move? returns true/false based on index
def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] != " "
end

# 6) ./lib/turn.rb #move allows "X" player in the bottom right and "O" in the top left
def move(board, index, value = "X")
  board[index] = value
end

# 7) ./lib/turn.rb #turn asks the user for input by printing: "Please enter 1-9:"
# 8) ./lib/turn.rb #turn gets the user input
# 9) ./lib/turn.rb #turn calls the input_to_index method
# 10) ./lib/turn.rb #turn validates the input correctly
# 11) ./lib/turn.rb #turn asks for input again after a failed validation
# 12) ./lib/turn.rb #turn makes valid moves
# 13) ./lib/turn.rb #turn displays a correct board after a valid turn


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
    if valid_move?(board, index) == false
      puts "That position is not valid."
      turn(board) #user_input = gets.strip
    end
    move(board, index)
    display_board(board)
end
