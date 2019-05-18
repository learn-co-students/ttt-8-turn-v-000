def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board,index)
  else
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-" * 11
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-" * 11
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, character="X")
  board[index] = character
  display_board(board)
end
def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board,index)
end

