

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end
# board = [" "," "," "," "," "," "," "," "," "]
def move(board, index, char = "X")
  board[index] = char
 return board
end

def valid_move? (board, index)
  def position_taken?(board, index)
   if board[index] == "X" || board[index] == "O"
    return false
  end

  if board[index] == " " || board[index] == ""
    return true
  end

  if board[index] = "nil"
    return false
  end
  end

if position_taken?(board,index) && index.between?(0, 8)  #|| position_taken?(board, index)
  return "true"
end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index(input)
 # valid_move?(board, index)
  #   move(board, index, char = "X")
  #   end
  display_board(board)
end
