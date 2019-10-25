def display_board(board)
  puts [" #{board[0]} | #{board[1]} | #{board[2]} "]
  puts ["-----------"]
  puts [" #{board[3]} | #{board[4]} | #{board[5]} "]
  puts ["-----------"]
  puts [" #{board[6]} | #{board[7]} | #{board[8]} "]
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, char = "X")
  board[index] = char
end

def valid_move?(board, index)
  if position_taken?(board, index) == true
  return false

elsif position_taken?(board, index) == false && index.between?(0, 8)
  return true

  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)

  ! (board[index] == " " || board[index] == "" || board[index] == nil)

end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index, char = "X")
  else turn(board)
  end
  display_board(board)
end
