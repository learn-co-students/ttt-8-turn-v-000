def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, index)
  if index.between?(0, 8) == true && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

# code your input_to_index and move method here!
def input_to_index(input)
  input = input.to_i
  input - 1
end

def update_array_at_with(array, index, value)
  array[index] = value
end

def move(board, index, character = "X")
  update_array_at_with(board, index, character)
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  while valid_move?(board, index) == false
    puts "That's an invalid move, please try again"
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end
  move(board, index)
end
