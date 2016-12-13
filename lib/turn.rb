def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n"
  puts "-----------\n"
  puts " #{board[3]} | #{board[4]} | #{board[5]} \n"
  puts "-----------\n"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index=input.to_i-1
end

def valid_move?(board,index)
  if !position_taken?(board,index) && index.between?(0,8)
    true
  else
    false
  end
end

def position_taken?(board,index)
  if board[index]==" "
    false
  elsif board[index]==""
    false
  elsif board[index]==nil
    false
  elsif board[index]=="X" || board[index]=="O"
    true
  end
end

def move (board,index,token="X")
  board[index]=token
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if valid_move?(board,index)
    move(board,index)
    display_board(board)
  else
    turn(board)
    until valid_move?(board,index)
      break
    end
  end
end
