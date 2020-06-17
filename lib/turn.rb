# Define display_board method
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Define input_to_index method
def input_to_index(user_input)
  if user_input == "1" || user_input == "2" || user_input == "3" || user_input == "4" || user_input == "5" || user_input == "6" || user_input == "7" || user_input == "8" || user_input == "9"
    user_input.to_i - 1
  else
    -1
  end
end

# Define valid_move method
def valid_move?(board, index)
  (index >= 0 && index <=8) && !position_taken?(board, index)
end

# Define position_taken method
def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end

# Define move method
def move(board, index, token = "X")
  board[index] = token
end

# Describe turn method
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  index = input_to_index(input)

  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end

end
