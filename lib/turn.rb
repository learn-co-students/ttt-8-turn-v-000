def input_to_index(user_input)
  return user_input.to_i - 1
end

def display_board(board)
  separator = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts separator
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts separator
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if(index.between?(0,9) && position_taken?(board, index) == FALSE)
    return TRUE
  end
end

def position_taken?(board, index)
  if(board[index] != " " && board[index] != "" && board[index] != nil)
    return TRUE
  else
    return FALSE
  end
end

def move(board, index, token="X")
  board[index] = token
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if(valid_move?(board, index) == TRUE)
    move(board, index, token="X")
    display_board(board)
  else
    turn(board)
  end
end