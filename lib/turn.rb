def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} " 
  puts"-----------" 
  puts" #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------" 
  puts" #{board[6]} | #{board[7]} | #{board[8]} " 
end


def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
  return true 
else
  return false
end
end


def position_taken?(board, index)
  if board[index] == " "
    return false
    elsif board[index] == ""
    return false
    elsif board[index] == nil 
    return false
    elsif board[index] == "X" || board[index] == "O"
    return true
end
end

def input_to_index(user_input)
converted_input = "#{user_input}".to_i
  return converted_input - 1
end


def move(board, index, token = "X") 
  board[index] = token
  return token
end

def turn(board) 
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  until valid_move?(board, index)
  return turn(board)
  end
  move(board, index, token = "X")
  display_board(board)
end
 
  