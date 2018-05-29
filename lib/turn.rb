# Define display_board that accepts a board and prints
# out the current state.


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i
  input = input - 1
end

def move(board, index, character = "X")
  board[index] = character
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  else
    puts "error"
  end
end

def valid_move?(board, index)
  if !index.between?(0,8)
    return false
  elsif index.between?(0,8) && !position_taken?(board,index)
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board,index,"X")
    display_board(board)
  else
    puts "Error. Please choose again."
    turn(board)
  end
end
