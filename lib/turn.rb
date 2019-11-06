def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(move)
  index=(move.to_i)-1
end

def move(board,index,value="X")
   board[index]=value
end

def valid_move?(board,index)
  if index.between?(0,8) && !position_taken?(board,index)
    true
  else
    false
  end
end

def position_taken?(board,index)
if board[index] == " " || board[index] == "" || board[index] == nil
  false
elsif board[index] == "X"|| board[index] == "O"
  true
end
end

def turn(board)
  puts "Please enter 1-9:"
  move = gets.strip
  index = input_to_index(move)
  move = valid_move?(board,index)
  if move == true
    move(board,index,value="X")
  else move == false
    until move == true
      puts "Please enter 1-9:"
      move = gets.strip
      index = input_to_index(move)
      move = valid_move?(board,index)
      move(board,index,value="X")
    end
  end
    display_board(board)
end
