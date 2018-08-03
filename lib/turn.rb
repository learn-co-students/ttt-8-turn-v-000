
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if  position_taken?(board, index)
    FALSE
    elsif index.between?(0, 8)
    TRUE
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    TRUE
    elsif board[index] == " " || board[index] == "" || board[index] == NIL
    FALSE
  end
end

def input_to_index(number)
  number.to_i - 1
end

def move(array, index, character = "X")
  array[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
    
end

  
