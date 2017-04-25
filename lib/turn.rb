

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  (!position_taken?(board,index) && index.between?(0,8)) ? true : false #as in, it's not a valid move
end

def position_taken?(board,index)
  (board[index] == '' || board[index] == " " || board[index] == nil) ? false : true
end

def input_to_index(index)
  index = index.to_i - 1
  index
end

def move(board, index, xOrO = "X")
  if (valid_move?(board, index))
    board[index] = xOrO
    true
  end

end

def turn(board)
  puts "Please enter 1-9:"
  theMove = gets.chomp
  theMove = input_to_index(theMove)
  if (move(board, theMove))
    display_board(board)
  else
  puts "Please enter a valid move!"
  turn(board)
  end
end
