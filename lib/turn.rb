def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, char="X")
  board[index] = char
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == "X"
    true
  elsif board[index] == "O"
    true
  elsif board[index] == " "
    false
  elsif board[index] == ""
    false
  end
  end

def valid_move?(board, index)
  if (position_taken?(board, index) == false) && (index.between?(0, 8) == true)
    true
  elsif board[index] == "X"
    false
  elsif board[index] == "O"
    false
  elsif index.between?(0, 8) == false
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
if valid_move?(board, index) == true
  move(board, index, char="X")
  display_board(board)
else until valid_move?(board, index) == true
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
end
end

end
