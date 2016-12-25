def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i
  index - 1
end

def valid_move?(board, index)
  valid = true
  if(board[index] != " " || (index > 8 || index < 0))
    valid = false
  end
  valid
end

def move(board, index, choice="X")
  board[index] = choice
  board
end



def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if (valid_move?(board, index))
    move(board, index)
  else
    turn(board)
  end
  display_board(board)
end
