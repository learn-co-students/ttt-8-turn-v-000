#--Displays Current Board--
def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#--Converts user input to index--
def input_to_index (index)
  return index.to_i - 1
end

#--Checks if a position is taken--
def position_taken? (board, index)
  board[index] == " " || board[index] == "" || board [index]== nil
end

#--Checks if a move is valid--
def valid_move?(board, index)
  position_taken?(board, index) && index.between?(0,8)
end

#--Allows player to move--
def move (board , plyr_index , value = "X")
  board[plyr_index] = value
  return board
end

#--Handles player turns--
#--Asks player for input & makes move on baord--
def turn(board)
  puts "Please enter 1-9:"
  player_input = gets.strip
  index = input_to_index(player_input)
  if valid_move?(board, index)
    move(board, index)   # Will always enter "X"
    display_board(board)
  else
    turn(board)
  end
end