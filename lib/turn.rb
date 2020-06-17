def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  index.to_i - 1
end

def valid_move?(array, index)
  if position_taken?(array, index) == false && index.between?(0, 8) == true
    true
  else
    false
  end
end

def position_taken?(array, index)
  if array[index] == " " || array[index] == "" || array[index] == nil
    false
  else
    true
  end
end

def move(array, index, character = "X")
  array[index] = character
  return array
end

def turn(array)
  puts "Please enter 1-9:"

  input = gets.strip

  index = input_to_index(input)

  if valid_move?(array, index) == true
    move(array, index)

    display_board(array)
  else
    turn(array)
  end
end
