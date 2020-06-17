
board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts '-----------'
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts '-----------'
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, char = "X".to_i)
  board[index] = char
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O" # condition
    true #here we need it to do something "if above condition is true then it will say this"
  else board[index] == " " || board[index] == "" || board[index] == nil
    false
  end
end

def valid_move?(board, index)
  if position_taken?(board,index) || (index.between?(0, 8) == false) #true ||
    puts "Please make a valid selection between 1-9, that is not currently occupied."
  else
    true
  end
end


def turn(board)
  display_board(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, char  = "X")
    display_board(board)
  else
    puts "Please make a valid selection between 1-9, that is not currently occupied."
    input = gets.strip
  end
end
