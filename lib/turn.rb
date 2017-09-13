
def display_board(board)
  row_one = " #{board[0]} | #{board[1]} | #{board[2]} "
  row_two = " #{board[3]} | #{board[4]} | #{board[5]} "
  row_three = " #{board[6]} | #{board[7]} | #{board[8]} "
  divider = "-----------"
  puts row_one
  puts divider
  puts row_two
  puts divider
  puts row_three
end

def input_to_index(input)
  index = input.to_i - 1
end

def valid_move?(board, index)
  if index.between?(0, 8) && board[index] == " "
    true
  else
    false
  end
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, value = "X")
    display_board(board)
  else
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end
end
