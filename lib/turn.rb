def input_to_index(move)
   position = move.to_i - 1
   position
end

def move(board, position, token = "X")
  board[position] = token
end

def display_board(board)
  puts " #{board[0]} " "|" " #{board[1]} " "|" " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " "|" " #{board[4]} " "|" " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " "|" " #{board[7]} " "|" " #{board[8]} "
end


def valid_move?(board,position)
  if position.between?(0,8) && !position_taken?(board,position)
    puts "this is a valid move"
    return true
  else
     return false
  end
end

def position_taken?(board,position)
  if board[position] == " "
    false
    elsif board[position] == ""
    false
    elsif  board[position] == nil
    false
    else   board[position] == "X" || "O"
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  position = input_to_index(user_input)
  if valid_move?(board,position)
    puts "valid move"
    move(board, position, token = "X")
    display_board(board)
  else
    puts "try again"
    turn(board)
end
end
