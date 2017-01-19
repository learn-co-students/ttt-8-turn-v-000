def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    true
  elsif board[index] == "X" || "O"
    false
  end
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

def input_to_index(index)
    index.to_i - 1
end

def move(board, index, input = "X")
  board[index] = input
end

def turn(board)
  puts "Please enter 1-9:"
  board = gets.strip
  input_to_index(board)
    if valid_move?(board, 0)
      true
      move(board)
      display_board(board)
    else
      puts "invalid"
      turn(board)
  end
end
