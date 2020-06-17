def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)

if position_taken?(board, index)
  false
elsif index.between?(0, 8)
  true
elsif index < 0
    false
  elsif index > 8
    false

end
end

def position_taken?(board, index)

if board[index] == "X"
  true
elsif board[index] == "O"
  true
elsif board[index] == " " || "" || nil
  false
 end

end

def input_to_index(user_input)
user_input.to_i-1
end

def move(display_board, input_to_index, board = "X")
display_board[input_to_index] = board
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)

  if valid_move?(board, index)
    true
  move(board, index)
  display_board(board)
else
  turn(board)
end
end
