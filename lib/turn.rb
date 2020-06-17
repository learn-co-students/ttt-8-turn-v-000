def display_board(board)
  separator = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts separator
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts separator
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board,index)
  if index.between?(0,8) && position_taken?(board,index) != true # can use !position_taken?(board,index)
    true
  end
end

def position_taken?(board,index)
  if board[index] != " "
    true
  end
end

def move(board,index,player = "X") 
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board,index) == true # don't need == true
    move(board,index)
    display_board(board)
  else
    turn(board)
  end
end
