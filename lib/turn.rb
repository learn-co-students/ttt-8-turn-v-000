# display_board (creates playing board)
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#user_input // input_to_index (converts a user_input into an integer)
user_input = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
def input_to_index(user_input)
  user_input.to_i - 1
end

#move (allows player to make a move)
def move (board, index, character = "X")
  board[index] = character
end

#valid_move? (helper - position_taken?) (returns true/false based on index)
def valid_move? (board, index)
  if (index).between?(0,8) == true && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

#position_taken?
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

#turn
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  until valid_move?(board, index) == true
    puts "Please enter a valid move."
    puts "Please enter 1-9:"
      user_input = gets.strip
    index = input_to_index(user_input)
  end
move(board, index, character = "X")
display_board(board)
end
