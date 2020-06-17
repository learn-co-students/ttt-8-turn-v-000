
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(user_input)
  adjusted_input = user_input.to_i - 1
  return adjusted_input
end


def valid_move?(board, index)
    if (index > 8 || index < 0 || index % 1 != 0 || position_taken?(board, index) == true)
      false
    else true
  end
end


def position_taken?(board, index)
    if (board[index] == "" || board[index] == " " || board[index] == nil)
      false
    else true
  end
end


def update_array_at_with(board, adjusted_input, user = "X")
  board[adjusted_input] = user
  return board
end

def move(board, adjusted_input, user = "X")
  board = update_array_at_with(board, adjusted_input, user)
  display_board(board)
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input) 
  if valid_move?(board, index) == false
    puts "Invalid"
    puts "Please enter 1-9:"
    user_input = gets.strip
    return user_input
    index = input_to_index(user_input) 
    puts index
  end
  move(board, index, user = "X")
end