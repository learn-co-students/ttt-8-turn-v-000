def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

def display_board(board)
  divider = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts divider
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts divider
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_empty?(board, index)
    true
  end
end

def position_empty?(board,index)
  if " " == board[index] || "" == board[index] || nil == board[index]
    true
  end
end

def move(board, index, token = 'X')
  board[index] = token
end

def input_to_index(input)
  input.to_i - 1
end
