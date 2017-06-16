def input_to_index(input)
  input = input.to_i
  input - 1
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def move(board, index_to_play, char = "X")
  board[index_to_play] = char
end

def display_board(gameState)
  puts " #{gameState[0]} | #{gameState[1]} | #{gameState[2]} "
  puts "-----------"
  puts " #{gameState[3]} | #{gameState[4]} | #{gameState[5]} "
  puts "-----------"
  puts " #{gameState[6]} | #{gameState[7]} | #{gameState[8]} "
end


def turn(board)
  puts "Please enter 1-9:"
  move = gets.strip
  index = input_to_index(move)
  valid = valid_move?(board,index)
  if valid
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end
