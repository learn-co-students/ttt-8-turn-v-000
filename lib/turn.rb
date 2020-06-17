require 'pry'

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# position is the string the user inputs between 1 and 9, spot is the int-ex between 0 and 8

def move(board, position, char_icon = "X")
  spot = position.to_i - 1
  board[spot] = char_icon
end

def valid_move?(board, position)
  spot = position.to_i - 1
  spot > -1 && spot < 9 && !position_taken?(board, spot)
end

def position_taken?(board, spot)
  board[spot] == "X" || board[spot] == "O"
end

def whos_turn?(turn_count)
  if turn_count % 2 == 0
   return "X"
 else
  return "O"
end
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.slice(0)
  if valid_move?(board, position) 
    move(board, position)
  else
    puts "Not a valid move!"
    turn(board)
  end
  display_board(board)
#
end









