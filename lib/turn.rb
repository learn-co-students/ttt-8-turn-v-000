def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  rows = ["   |   |   ", "-----------", "   |   |   ", "-----------", "   |   |   "]
  rows[0] = " #{board[0]} | #{board[1]} | #{board[2]} "
  rows[2] = " #{board[3]} | #{board[4]} | #{board[5]} "
  rows[4] = " #{board[6]} | #{board[7]} | #{board[8]} "
  puts rows
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8) == true
     return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
