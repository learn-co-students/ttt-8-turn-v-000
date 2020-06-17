def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if !valid_move?(board, index)
    turn(board)
  end
  if position_taken?(board, index)
    turn(board)
  else
    move(board, index, char="X")
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

def valid_move?(board, index)
  if index >= 0 && index <= 8
    !position_taken?(board, index)
  else
    false
  end

end

def input_to_index(input)
  selection = input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  end
end

def move(board, selection, char="X")
  board = board[selection] = char
end
