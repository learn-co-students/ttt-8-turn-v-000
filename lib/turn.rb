# display_board displays the Tic Tac Toe board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# input_to_index converts user input to array index value
def input_to_index(input)
  input.to_i - 1
end

# #move method
def move(board, index, token = "X")
  board[index] = token
end


# #valid_move? method determins if the user input is:
#   1) a valid position on the board
#   2) not taken

def valid_move?(board, index)
  if index.between?(0,8)
    !position_taken?(board, index)
  else
    false
  end
end

# #position_taken? determines if the current index is occupied with an X or O
def position_taken? (board, index)
  if board[index].nil? || board[index] == "" || board[index] == " "
    false
  else
    true
  end
end


def turn(board)
  puts "Please enter 1-9:"
  index = gets.to_s
  index = input_to_index(index)

  if valid_move?(board,index)
    move(board,index)
    display_board(board)
  else
    turn(board)
  end
end
