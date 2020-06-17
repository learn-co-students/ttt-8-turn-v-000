def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
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

def valid_move?(array, ind)
  if position_taken?(array, ind) == false && ind.between?(0, 8)
    return true
  else
    return false
  end
end

def position_taken?(array, ind)
  if array[ind] == nil
    return false
  elsif array[ind] == "X" || array[ind] == "O"
    return true
  else
    return false
  end
end

def input_to_index(input)
  if input.to_i == nil
    return -1
  else
    return input.to_i - 1
  end
end

def move(array, ind, value = "X")
  array[ind] = value
end
