def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  number = gets.chomp
  index = input_to_index(number)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

def input_to_index(number)
  number = number.to_i
  number - 1
end

def valid_move?(board, index)
  if index.between?(0,8) == true && position_taken?(board, index) == false
      true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end

def move(board, index, character = "X")
  board[index] = character
end
