board = [" "," "," "," "," "," "," "," "," "]
def display_board(board)
  row1 = [" #{board[0]} | #{board[1]} | #{board[2]} "]
  row2 = ["-----------"]
  row3 = [" #{board[3]} | #{board[4]} | #{board[5]} "]
  row4 = ["-----------"]
  row5 = [" #{board[6]} | #{board[7]} | #{board[8]} "]
  puts row1
  puts row2
  puts row3
  puts row4
  puts row5
end

def valid_move? (board, index_number)
  if position_taken?(board, index_number) == false && index_number.between?(0, 8)
      true
  end
end

def position_taken? (board, index_number)
  board[index_number]!=" " && board[index_number]!="" && board[index_number]!=nil
end

def input_to_index(index_number)
  index_number.to_i
  (index_number.to_i - 1)
end
def move(board, index_number, token="X")
  board[index_number]= token
end

def turn (board)
  puts "Please enter 1-9:"
  index_number= gets.strip
  index_number= input_to_index(index_number)
  if !valid_move?(board, index_number)
    turn(board)
  else
    move(board, index_number, token="X")
  end

  display_board(board)
end
