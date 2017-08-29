def display_board
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

input = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
def input_to_index(input)
  input.to_i - 1
end

board = [" "," "," "," "," "," "," "," "," "]

def move(board, index, value = "X")
    board[index] = value

  def update_array_at_with(board, index, value)
    board[index] = value
  end
end


def position_taken?(board,index)
  if board[index] == "X" || board[index] == "O"
    true
  else board[index] == "  " || ""
    false
  end
end

def valid_move?(board, index)
  if index>=0 && position_taken?(board,index) == false
    true
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, value = "X")
    display_board(board)
  else
    turn(board)
  end
end
