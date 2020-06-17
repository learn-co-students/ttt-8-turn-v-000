def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  idx = input_to_index(input)
  if valid_move?(board, idx)
    move(board, idx)
    display_board(board)
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

def valid_move?(board, idx)
  if idx > 8 || idx < 0 || position_taken?(board, idx)
    return false
  else
    return true
  end
end

def position_taken?(board, idx)
  i = board[idx]
  if i == " " || i == "" || !(!!i)
    return false
  else
    return true
  end
end

def move(array, idx, value="X")
  array[idx] = value
end

def input_to_index(idx)
  idx.to_i - 1
end