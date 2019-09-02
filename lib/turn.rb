board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]
def display_board
  rows = ["   |   |   ", "-----------", "   |   |   ", "-----------", "   |   |   "]
  puts rows[0]
  puts rows[1]
  puts rows[2]
  puts rows[3]
  puts rows[4]
end
def display_board(board)
  rows = ["   |   |   ", "-----------", "   |   |   ", "-----------", "   |   |   "]
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts rows[1]
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts rows[3]
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
end

def valid_move?(board, index)
  if position_taken?(board, index)  == false && index.between?(0, 8)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  elsif board[index] == " " || board[index] == "" || board[index] == nil
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
    if valid_move?(board, index)
      move(board, index, character = "X")
      display_board(board)
    else
      turn(board)
  end
end
