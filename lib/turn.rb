def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, value = "X")
  else
    puts "Please enter another move."
    input = gets.strip
    index = input_to_index(input)
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

# code your input_to_index and move method here!
def input_to_index(input)
  input.to_i - 1
end

def move(array, input_to_index, value = "X")
  array[input_to_index] = value
  board = array
  return board
end

def valid_move?(board, index)
  if position_taken?(board, index) && index.between?(0, 8)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " "
    true
  elsif board[index] == ""
    true
  elsif board[index] == nil
    true
  else
    false
  end
end
