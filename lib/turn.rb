def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(value)
  integer = value.to_i
  index = integer - 1
  return index
end

def position_taken?(board, index)
  if board[index] == "O" || board[index] == "X"
  return true
elsif board[index] == " " || board[index] == "" || board[index] == nil
  return false
end
end

def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  elsif index < 0 || index > 8 || index == nil
    return false
  else
    return true
  end
end

def move(board, index, character = "X")
  board[index] = character
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end
end
