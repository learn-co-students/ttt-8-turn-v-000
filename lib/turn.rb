def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index(input)
  position_taken?(board, index)
#  valid_move?(board, index)
  turn(board)
#  if valid_move?(board, index) == true
#    puts "yep"
#    move(board, index, value = X)
#  else
#    puts "nope"
#    turn(input)
#  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#def ask_input
#    puts "Please enter 1-9:"
#end

def input_to_index(input)
  index = input.to_i - 1
end

def position_taken?(board, index)
#def position_taken?(board)
  input_to_index(input)
  puts index
  if board[index] == "X" || board[index] == "O"
    true
    puts "true"
  elsif board[index] == " " || board[index] == "" || board[index] == nil
  else
    false
    puts "false"
  end
end

def valid_move?(board, index)
  if index.between?(0, 8) == true && position_taken?(board, index) == false
    true
  else
    false
  end
end

def move(board, index, value = "X")
 board[index]=value
end
