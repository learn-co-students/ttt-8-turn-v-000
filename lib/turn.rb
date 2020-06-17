def display_board(array)
  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts "-----------"
  puts " #{array[3]} | #{array[4]} | #{array[5]} "
  puts "-----------"
  puts " #{array[6]} | #{array[7]} | #{array[8]} "
end


def input_to_index(input)
input = input.to_i
input -1
end

def valid_move?(board, index)
   if index.between?(1,9) && !position_taken?(board, index)
   end

  index.between?(0,8) && !position_taken?(board, index)
end


def position_taken? (board, index)# code your #position_taken? method here!
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
     true
  end
end


def move(board, index, char = "X")
board[index] = char
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index, char = "X")
  else
    turn(board)
  end
 return display_board(board)
end
