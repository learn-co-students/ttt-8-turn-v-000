def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, position)
  position.to_i.between?(0,8) && !position_taken?(board, position.to_i)
end


def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  else
    return true
  end
end


def input_to_index(input)
input = input.to_i-1
end


def move(board, input, value = "X")
board[input] = value
end


def turn(board)
  puts "Please enter 1-9:"
   input = gets.strip
   index = input_to_index(input)
   if valid_move?(board, index)
     move(board, index)
     display_board(board)
   else
     turn(board)
   end
end
