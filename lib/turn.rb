def valid_move?(board, index)
  if index < 9 && index >= 0 && (board[index] == " " || board[index] == nil)
    true
  else
    false
  end
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

def move(board, input, value = "X")
  board[input] = value
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  index = input_to_index(input)

  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    puts "That is not a valid move"
    turn(board)
  end
end
