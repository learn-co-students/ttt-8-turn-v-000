def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if position_taken(board,index) == true
    false
  elsif index.between? 0,8
    true
  else
    false
  end
end

def position_taken(board,index)
  if board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end

def input_to_index(input)
input.to_i-1
end

def move (board,index,token="X")
  board[index.to_i]= token
  display_board(board)
end

def turn (board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
    while valid_move?(board,index) == false
      print "That Move is invalid please enter 1-9"
      input = gets.strip
      index = input_to_index(input)
    end
  move(board,index,token="X")
end
