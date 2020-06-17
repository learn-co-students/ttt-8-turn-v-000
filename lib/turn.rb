
def display_board(board)
  row1 = " #{board[0]} "+'|'+" #{board[1]} "+'|'+" #{board[2]} "
  row2 = " #{board[3]} "+'|'+" #{board[4]} "+'|'+" #{board[5]} "
  row3 = " #{board[6]} "+'|'+" #{board[7]} "+'|'+" #{board[8]} "
  divider = "-----------"

  puts row1
  puts divider
  puts row2
  puts divider
  puts row3
end

def move(board, index, token="X")
  board[index] = token
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) == true
    return false
  elsif board.empty? == true && index.between?(0, 8)
    return true
  elsif board.empty? == false && index.between?(0, 8)
    return true
  else
    return false
  end
end

def input_to_index(input)
  index = input.to_i - 1
  return index
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  index = input_to_index(input)

  if valid_move?(board, index) == false
    turn(board)
  else
    move(board, index)

    display_board(board)
  end
end
