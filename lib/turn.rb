# Before defining turn, define the following methods:
# display_board
# valid_move?
# move 

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

def position_taken?(board, index)
  board[index] != " "
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end  

def move(board, index, token = "X")
  board[index] = token
end  

def turn(board)
  puts "Please enter 1-9:"
  player_input = gets.strip 
  player_index = input_to_index(player_input)
  if valid_move?(board, player_index)
    move(board, player_index)
    display_board(board)
  else 
    turn(board)
  end
end
