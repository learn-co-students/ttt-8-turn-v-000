def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  number = input_to_index(index) 
  if valid_move?(board, number)
    move(board,number)
    display_board(board)
  else if !valid_move?(board, number)
      turn(board)
  end 
end 
end 

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} ", "-----------", " #{board[3]} | #{board[4]} | #{board[5]} ", "-----------", " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)  
  true
else 
  false
end
end


def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else if board[index] == " " || board[index] == ""
    false
  else
    false 
  end
  end
end

def input_to_index(string)
   (string.to_i) - 1
end

def move(board, index, value = "X")
  board[index] = value
end