def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0,10)
end

def position_taken?(board, index)
  return false if board[index] == " " || board[index] == "" || board[index] == nil
  return true if board[index] == 'X' || board[index] == 'O'
end

def input_to_index(input)
  input = input.to_i
  input.is_a?(Integer) ? input - 1 : -1
end

def move(board, index, player = "X")
  board[index] = player
  board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index) && index != -1
    move(board, index)
  else
    turn(board)
  end
  display_board(board)
end
