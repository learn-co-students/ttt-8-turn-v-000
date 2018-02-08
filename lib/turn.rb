#display board for user
def display_board(board)
 puts " #{board[0]} | #{board[1]} | #{board[2]} "
 puts "-----------"
 puts " #{board[3]} | #{board[4]} | #{board[5]} "
 puts "-----------"
 puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# code your input_to_index and move method here!
def input_to_index(user_input)
    (user_input.to_i) - 1
end

def move(board, index, token = "X")
   board[index] = token
end
# code your #valid_move? method here
def valid_move?(board, index)
 if index.between?(1,9)
     if !position_taken?(board, index)
       true
     end
   end

  index.between?(0,8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] != " "
end
#turn
def turn(board)
puts "Please enter 1-9:"
user_input = gets.strip
index = input_to_index(user_input)
#  input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
    else turn(board)
  end
end
