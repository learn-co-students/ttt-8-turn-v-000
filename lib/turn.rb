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
  if  board[index] == " " || board[index] == "" || board[index] == nil
   board[index] = !true
 else
   board[index] = true
 end
end

def valid_move?(board, index)
  index.to_i.between?(0, 8) && position_taken?(board, index) == false
end

def move(board, index, players_character = "X")
  board[index] = players_character
  board
end

def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip.to_i-1
    if valid_move?(board, user_input)
      input_to_index(user_input)
      move(board, user_input, players_character = "X")
   else
      turn(board)
   end
   display_board(board)
end
