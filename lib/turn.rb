def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board,index) == false
    true
  elsif position_taken?(board,index) == true
    false
  elsif index<0 && index>9
    false
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end

def input_to_index(index)
  input = index.to_i - 1
  return input
end

def move(board, index, value="X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  turnnum = gets.strip
  index = input_to_index(turnnum)
  if valid_move?(board, index) == true
    move(board, index, "X")
  else
    puts "Invalid move, please pick again"
    turn(board)
  end
display_board(board)
end
