#turn method that will iterate the user to take a turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  to_index = input_to_index(input)
  while valid_move?(board, to_index) == false
    puts "Please enter 1-9:"
    input = gets.strip
    to_index = input_to_index(input)
  end
    move(board, to_index, value="X")
    display_board(board)
  end



# methods
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i - 1
end

def move(array, index, value="X")
  array[index] = value
end

def valid_move?(board, index)

  if position_taken?(board, index) && index.between?(0,8) == true
    true
  elsif position_taken?(board, index) && index.between?(0,8) == false
    false
  end
end


def position_taken?(board, index)
  position_checked = board[index]
  if (position_checked == " ") || (position_checked == "") || (position_checked == nil)
    true
  elsif (position_checked == "X") || (position_checked == "O")
    false
  end
end
