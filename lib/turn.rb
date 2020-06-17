# #display_board method
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# #input_to_index method
def input_to_index(user_input)
  user_input.to_i
  new = user_input.to_i - 1
  return new
end

# #valid_move? method
def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

# #position_taken? method
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else board[index] == " " || "" || nil
    return false
  end
end

# #move method
def move(display_board, input_to_index, char = "X")
  display_board[input_to_index] = char
end

# #turn method
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, char = "X")
  else valid_move?(board, index) == false
    turn(board)
  end
  display_board(board)
end
