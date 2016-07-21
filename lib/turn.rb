board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    true 
  else 
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else board[index] == "X" || "O"
    true
  end
end

def input_to_index(index)
  index = index .to_i
  index = index - 1 
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  new_index = input_to_index(index)
  if valid_move?(board, new_index)
    move(board, new_index, token = "X")
  else  
    turn(board)  
  end 
  display_board(board)     
end






