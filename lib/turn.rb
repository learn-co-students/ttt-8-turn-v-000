def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
    if index.between?(0,8) && position_taken?(board, index) == false
      true
    else
    end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " "|| board[index] == "" || board[index] == nil
    false
  elsif board[index]== "X" || "O"
    true
  end
end

def input_to_index(input)
  input = (input.to_i-1)
end

def move(board, input_to_index, value = "X")
  board[input_to_index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, value = "X")
    display_board(board)
  else
    turn(board)
  end
end
