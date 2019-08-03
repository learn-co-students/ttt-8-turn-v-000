board = ["  ", "  ", "  ", "  ", "  ", "  ", "  ", "  ", "  "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] ==  nil
    false
  else
    true
  end
end

def valid_move?(board, index)
  index.between?(0, 8) && position_taken?(board, index) == false
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] ==  nil
    false
  elsif board[index] == "X" || bord[index] == "O"
    true
  else
    false
  end
end

def input_to_index(user_input)
  user_input = user_input.to_i - 1
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:" # ask for input 1-9
  user_input = gets.strip # receive user input
  index = input_to_index(user_input)  # convert input to an index

  if valid_move?(board, index) # index is valid
      move(board, index, token = "X")# make move for index and show board
      display_board(board)
  else
    turn(board)# ask for input again until you get a valid input
  end
end
