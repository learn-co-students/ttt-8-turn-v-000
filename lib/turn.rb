#display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#input_to_index

def input_to_index(user_input)
  converted_input = user_input.to_i
  converted_input = converted_input - 1
end

#valid_move?

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

#position_taken?

def position_taken? (board, index)
  taken = nil
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    taken = false
  else
    taken = true
  end
  taken
end

#move

def move (board, index, token)
  board[index] = token
end

#stub turn

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if valid_move?(board, index)
    move(board, index, token = "X")
    display_board(board)
  else
    turn(board)
  end
end
