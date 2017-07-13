board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  m = valid_move?(board, index)
  if m == true
    move(board, index)
  else m == false
    until m == true
      puts "Please enter 1-9:"
      user_input = gets.strip
      index = input_to_index(user_input)
      m = valid_move?(board, index)
    end
  end
  puts display_board(board) 
end


def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board, index)
    true
  end
end

def position_taken?(board, index)
if board[index] == " " || board[index] == "" || board[index] == nil
  true
else board[index] == "X" || board[index] == "O"
  false
end
end

def input_to_index(user_input)
   a = user_input.to_i
   a - 1
end

def move(board, index, char = "X")
   board[index] = char
end
