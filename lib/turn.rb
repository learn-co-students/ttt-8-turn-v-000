def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  board[index] != " " &&
  board[index] != "" &&
  board[index] != nil
end

def input_to_index(index)
  index.to_i-1
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  puts index
  if valid_move?(board, index)
    puts move(board, index, token = "X") && display_board(board)
  else
    puts "Your choice is invalid, please try again."
    turn(board)
  end
end
