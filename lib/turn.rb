def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def position_taken?(board, index)
  board[index] == "X" || board[index] == "Y"
end
def input_to_index(number)
  number = number.to_i - 1
end
def valid_move?(board, index)
  position_taken?(board, index) == false && index.between?(0, 8) == true
end
def move(board, index, token = "X")
  board[index] = token
end
def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip
  index = input_to_index(number)
  if valid_move?(board, index)
    move(board, index, token = "X")
    display_board(board)
  else
    turn(board)
  end
end
