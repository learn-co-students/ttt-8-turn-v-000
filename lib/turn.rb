def display_board
  puts "   |   | "
  puts "-----------"
  puts "   |   | "
  puts "-----------"
  puts "   |   | "
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  if board[position] == " "
      return false

 elsif board[position] == ""
    return false

  elsif board[position] == "X" || board[position] == "O"
      return true

 else
    return false
end
end

 def valid_move?(board, position)
   if position.to_i.between?(0, 8) && position_taken?(board, position) == false
return true

  else
return false
end
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, character = "X")
board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input =gets.strip
  position = input_to_index(user_input)
  if valid_move?(board, position)
     move(board, position)
     display_board(board)
else
turn(board)
   end
end
