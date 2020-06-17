def turn(board)
  puts "Please enter 1-9:"
  array_index = input_to_index(gets.strip)
  if valid_move?(board, array_index)
    board_after_move = move(board, array_index)
    display_board(board_after_move)
  else
    turn(board) 
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input.to_i - 1
end

def move(board, index, character="X")
  board[index] = character
  return board
end

def valid_move?(board, i)
  return i.between?(0, 8) && !position_taken?(board, i)
end

def position_taken?(board, index)
  pos = board[index]
  return ["X", "O"].include? pos
end
