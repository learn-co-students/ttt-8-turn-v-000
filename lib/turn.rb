

def display_board(board)
  first_row = " #{board[0]} | #{board[1]} | #{board[2]} "
  second_row = " #{board[3]} | #{board[4]} | #{board[5]} "
  third_row = " #{board[6]} | #{board[7]} | #{board[8]} "
  row_divider = "-----------"
  puts first_row
  puts row_divider
  puts second_row
  puts row_divider
  puts third_row
end  

def valid_move?(board,index)
  if (index >= 0) && (index <= board.length - 1) && (position_taken?(board,index) != FALSE)
      return TRUE
  else
      return FALSE
  end
end

def position_taken?(board,index)
  if (board[index] == "X") || (board[index]=="O")
    return FALSE
  end
end

def input_to_index(user_input)
  index = user_input.to_i - 1
  return index
end


def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board,index) == FALSE
    puts "invalid"
    turn(board)
  end
  move(board, index, character = "X")
  display_board(board)
end
