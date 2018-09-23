def display_board(board = ["   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} ", "-----------", " #{board[3]} | #{board[4]} | #{board[5]} ", "-----------", " #{board[6]} | #{board[7]} | #{board[8]} "

  board = ["0", "X", "X", "O", "O", "X", "X", "X", "X"]
end


def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board,index)
    return true 
  else
    return false 
  end
end

def position_taken?(board, index)
  if (board[index]==" ") || (board[index]=="") || (board[index]==nil)
    return true 
  else
    return false
  end
end

def input_to_index(user_input)
  user_input .to_i - 1 
end

def move(board, index, value = "X")
    board[index] = value
end
  
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    puts move(board, index, value = "X") && display_board(board)
  else
    turn(board)
  end
end
