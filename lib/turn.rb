# Define display_board method here
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Define input_to_index method here
def input_to_index(user_input)
  index = user_input.to_i - 1
end

# Define valid_move? method here (NEED TO GET TO PASS!!!)
def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8)
        true
  end
end

# Re-define your #position_taken? method here, so that you can use it in the #valid_move?
def position_taken?(board, index)
board[index] != " " && board[index] != "" && board[index] != nil
end

# Define move method here
def move(board, index, value = "X") # Defines move method accepting 3 arguments (1 default)
  board[index] = value
  end

# Define turn method here
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip # Gets user input
  index = input_to_index(user_input) # Passes user input to input_to_index method as argument
    if valid_move?(board, index) == true # Test Code not valid then turn(board) to run again
       move(board, index, value = "X")
       display_board(board)
    else
      turn(board)
    end
  end
