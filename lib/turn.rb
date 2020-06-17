def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index, player="X")
    display_board(board)
  else puts "Move is invalid"
    turn(board)
  end
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end



def valid_move?(board, index_number)
  if board [index_number] == " " && index_number.between?(0 , 8)
    return true
  end
end

def position_taken?(board, index_number)
  if board [index_number] == " " || board [index_number] == ""
    return false
  elsif board [index_number] == nil
    return false
  else board [index_number] == "X" || "O"
    return true
  end
end

def move(board, input_to_index, player="X")
 board[input_to_index] = player
end
