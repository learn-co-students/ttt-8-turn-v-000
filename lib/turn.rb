def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  index.to_i.between?(0, 8) == true && board[index] == " " || board[index] == ""
end

def input_to_index(user_input = -1)
  index = user_input.to_i - 1
end

def move(board, index, char = "X")
  board[index] = char
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  input_to_index(user_input)
  index = user_input.to_i - 1
  if valid_move?(board, index) == true
    move(board, index, char = "X")
    display_board(board)
  else
    turn(board)
  end
end
