def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_int = user_input.to_i
  user_index = user_int - 1
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    true
  else
    false
  end
end

def position_taken?(board, index)
    if board[index]  == " " || board[index] == "" || board[index] == nil
      false
    else
      true
  end
end

def move(board, index, player = "X")
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets.chomp)
  if valid_move?(board, input) == false
    turn(board)
  else
    move(board, input, player = "X")
    display_board(board)
  end
end
