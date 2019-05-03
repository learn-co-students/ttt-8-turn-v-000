def display_board(board)
  print " #{board[0]} " "|" " #{board[1]} " "|" " #{board[2]} \n"
  print "-----------\n"
  print " #{board[3]} " "|" " #{board[4]} " "|" " #{board[5]} \n"
  print "-----------\n"
  print " #{board[6]} " "|" " #{board[7]} " "|" " #{board[8]} \n"
end

def valid_move?(board, index)
  val = index.to_i
  if val < 0 || val > 8
    false
  elsif position_taken?(board, index) == true
    false
  else
    true
  end
end

def position_taken?(board, index)
  if board[index] == nil
    false
  elsif board[index].strip == ""
    false
  else
    true
  end
end

def input_to_index(input)
  name_one = input.to_i
  name_two = name_one - 1
  return name_two
end

def move(array, index, value="X")
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
