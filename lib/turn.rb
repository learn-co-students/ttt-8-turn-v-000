def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  user_input=input_to_index(gets.strip)
  if valid_move?(board, user_input)
    move(board, user_input, player = "X")
    display_board(board)
  else
    turn(board)
  end
end

def input_to_index(input)
  input.to_i
  input.to_i - 1
end



def move (board, index, player = "X")
  board[index] = player
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "O"
    true
  elsif board[index] == "X"
    true
  else  board[index] == " " || "" || nil
    false
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    true
  else
    false
	end
end
