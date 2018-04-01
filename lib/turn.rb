def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 10) && position_taken?(board,index) == false
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  elsif board[index] == ""
    return false
  end
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, value)
  def update_array_at_with(array, index, value)
    array[index] = value
  end
  update_array_at_with(board, index, value)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  if valid_move?(board, index) == true && position_taken?(board, index) == false
    move(board, index, value = "X")
    display_board(board)
  else
    turn(board)
  end
end
