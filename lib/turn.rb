def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, character = "X")
  else
    puts "Please enter 1-9:"
    input = gets.strip
    input_to_index(input)
  end
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i
  index -= 1
end

def position_taken?(board, index)
  if (board[index] == "" || board[index] == " " || board[index] == nil)
    return false
  elsif (board[index] == "X" || board[index] == "O")
    return true
  end
end

def valid_move?(board, index)

  if (index > 8 || index < 0)
    return false
  end

  if position_taken?(board, index)
    return false
  else
    return true
  end
end

def move(board, index, character = "X")
  board[index] = character
  display_board(board = character)
end
