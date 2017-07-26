def display_board#{} Define a method display_board that prints a 3x3 Tic Tac Toe Board
puts "   |   |   "
puts "-----------"
puts "   |   |   "
puts "-----------"
puts "   |   |   "

end
display_board

def display_board(board)#{} Define a method display_board that prints a 3x3 Tic Tac Toe Board
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(user_input)
  integer = user_input.to_i
  index = integer - 1
end

def move(board, input_to_index, value="X")
  puts board
  update_array_at_with(board, input_to_index, value)
end

def update_array_at_with(board, index, value="X")
  board[index] = value
  return board
end

def position_taken?(board, index)
  (board[index] == " " || "")? false:true
  (board[index] == "X" || board[index] =="O")
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0,8)
    return true
  else position_taken?(board, index) == true
      return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
user_input = gets.strip
index = input_to_index(user_input)
# input_to_index(user_input)
  if valid_move?(board, index) == true
    display_board(board)
    update_array_at_with(board, index, value="X")
  else turn(board)
  end
end
