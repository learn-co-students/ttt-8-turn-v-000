def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  num = user_input.to_i
  index = num-1
end

def move(array, index, value = "X")
  array[index] = value
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
      return true
    else
      return false
  end
end

def move(array, index, value = "X")
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index_input = input_to_index(input)
  until valid_move?(board, index_input) === true
    puts "Please enter 1-9:"
    input = gets
    index_input = input_to_index(input)
  end
  move(board, index_input, value = "X")
  display_board(board)
end
