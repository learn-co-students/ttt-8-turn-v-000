def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(i)
  i=i.to_i - 1
end

def move(board, i, char="X")
  board[i]=char
end

# code your #valid_move? method here
def valid_move?(board, i)
  if ((i>=0) && i<=8)
    if !(position_taken?(board,i))
      return true
    end
  end
  false
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, i)
  if board[i] == "O" || board[i] == "X"
    return true
  end
  false
end

def turn(board)
  puts "Please enter 1-9:"
  i=gets.strip
  i=input_to_index(i)
  while !valid_move?(board,i)
    puts "Please enter 1-9:"
    i=gets.strip
    i=input_to_index(i)
  end
  move(board,i)
  display_board(board)
  return board
end