def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  user_input.to_i - 1

end

def move(board, index, current_player="X")
  board[index] = current_player

end

def position_taken?(board, index)
  return false if board[index] == " " || board[index] == "" || board[index] == nil
  else return true
end

def valid_move?(board, index)
  return true if position_taken?(board, index) == false && index.between?(0, 8)
  else return false if position_taken?(board, index) == true && index.between?(0,8)
end

def position_taken?(board, index)
  return false if board[index] == " " || board[index] == "" || board[index] == nil
  else return true
end

def turn(board)
  puts "Please enter 1-9:"
user_input = gets.strip
index = input_to_index(user_input)
if valid_move?(board, index)
  move(board, index)
  display_board(board)
else
  turn(board)

end
end
