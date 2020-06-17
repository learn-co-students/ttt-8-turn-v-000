#display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#move
def input_to_index(user_input)
  user_input.to_i - 1
end

def move (board, user_input, char = "X")
  board[user_input] = char
end

#position_taken
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  elsif board[index] == " " || "" || nil
    false
  end
end

#valid_move
def valid_move?(board, index)
  if !(position_taken?(board, index)) && index.between?(0,8)
    true
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)

  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else
      turn(board)
  end
end
