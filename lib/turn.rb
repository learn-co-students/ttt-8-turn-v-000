
def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  until valid_move?(board, position) == true
    puts "Please enter 1-9:"
    position = gets.strip
  end
  move(board, position, value = "X")
  display_board(board)
end


board = ["   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   "]
def display_board(board)
  row_1 = " #{board[0]} | #{board[1]} | #{board[2]} "
  row_2 = "-----------"
  row_3 = " #{board[3]} | #{board[4]} | #{board[5]} "
  row_4 = "-----------"
  row_5 = " #{board[6]} | #{board[7]} | #{board[8]} "

  puts row_1
  puts row_2
  puts row_3
  puts row_4
  puts row_5

end

display_board(board)

def valid_move?(board, position)

  if position.to_i.between?(1, 9) && position_taken?(board, position) == false
    true
  else
    false
  end
end

def position_taken?(board, position)
  if board[position.to_i-1] == " " || board[position.to_i-1] == "" || board[position.to_i-1] == nil
    false
  else board[position.to_i-1] == "X" || board[position.to_i-1] == "O"
    true
  end
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, value = "X")
  board[position.to_i-1] = value
end

