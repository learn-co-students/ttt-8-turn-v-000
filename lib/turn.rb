

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
  return index
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

    if board[index] == nil
      return false
    end
  end

if index.between?(0, 8)
  if position_taken?(board,index)
    return true
  end
end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index, char = "X")
      display_board(board)
    else
      turn(board)
    end

  end
