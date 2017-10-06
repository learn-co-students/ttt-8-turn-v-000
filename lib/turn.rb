



def display_board(board)
  horizontal_lines = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts horizontal_lines
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts horizontal_lines
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  # is the move between index 0 and 8, 1 - 9 on the player side (i.e. on the game board)
  # silent "is" before your range expression
  (0..8).include?(index) && !position_taken?(board,index)
  # is the move in a space that has an X or O? if true print false
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end

def input_to_index(user_input)
  new_user_input = user_input.to_i
  new_user_input - 1
end

def move(board, position, char = "X")
  #place character at index 0 of board array
  board[position] = char
end

def turn()
puts "Please enter 1-9:"
user_input = gets.strip
input_to_index(user_input)
valid_move?(board, index)
end
