def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  s = input.to_i
  s - 1
end

def move(board, index, char = "X")
  board[index] = char
end

def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  else board[index] == "X" || "O"
    true
  end
end

def valid_move?(board, index)
  if position_taken?(board, index)
    false
  elsif !index.between?(0,8)
    false
  else
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, char = "X")
    display_board(board)
  else
    turn(board)
  end
end
