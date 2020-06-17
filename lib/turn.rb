def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  result = index.to_i - 1
  return result
end

def valid_move?(board, index)
  if index.between?(0, 8) && (board[index] == " " || board[index] == "" || board[index] == nil)
    return true
  else
    return false
  end
end

def move(board, index, token = "X")
  if valid_move?(board, index)
    board[index] = token
  else 
    board[index] = token
  end
end

def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip
  index = input_to_index(number)
  if valid_move?(board, index)
    board[index] = "X"
    display_board(board)
  else
    turn(board)
  end
end

