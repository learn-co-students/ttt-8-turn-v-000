def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
  input.to_i - 1 
end

def move(board, index, player="X")
  board[index] = player
end

def valid_move? (board, index)
  if position_taken?(board, index)
    false
  elsif index < 0 || index > 8
    false
  else
    true
  end
end

def position_taken? (board, index)
  if board[index] == "X" || board[index] == "O" 
    true 
  elsif board[index] == " " || board[index] == ""
    false 
  else
    true
  end
end

def turn(board, turn = 1)
  while turn < 10 

  turn % 2 == 0 ? player = "X" : player = "O"
  
  # ask for input
  puts "Please enter 1-9:"
   
  #get input
  input = gets
  
  # convert input to index
  index = input_to_index(input)
  
  # if index is valid
  if valid_move?(board, index)
  #   make the move for index
    move(board, index, player)
  #   show the board
    display_board(board)
    turn += 1
  else
  #   ask for input again until you get a valid input
    turn(board, turn)
  end
  
  end
  puts "thank you for playing"
end 