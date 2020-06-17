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

def valid_move?(board, index)
  if index.between?(0,8)
    if position_taken?(board, index)
      return false
    else
      return true
    end
  end
end

def position_taken?(board, index)
  if board[index].upcase == "X" || board[index].upcase == "O"
    return true
  else
    return false
  end
end

def move(board, index, x_or_o)
  board[index] = x_or_o.upcase
end

def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets.strip)
  
  if valid_move?(board, input)
    x_or_o = "X"
    move(board, input, x_or_o)
    display_board(board)
  else
      turn(board)
  end
end
