def display_board(board)


    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def input_to_index(input)#problem here
  user_input=input.to_i
  user_input - 1

end


def position_taken? (board, index)

  if board [index]==" "
    return true
  elsif board[index]==""
    return false
  elsif board[index]==nil
    return false
  elsif board[index]=="X"||board[index]=="O"
    return false
  end
end

def valid_move?(board,index)

  if board[index]=="X"
  return false
  elsif index>=0&&index<=8
  return true
  elsif board[index]=="O"
  return false
  elsif index= -1
  return false
  elsif position_taken?(board, index)==true
  return true
  elsif position_taken?(board, index)==false
  return false
  end
end

def move(board, index, input)

if board[index]==" "
  board[index]=input
end
end

def turn(board)

puts "Please enter 1-9:"
user_input=gets
user_input=input_to_index(user_input)
if valid_move?(board, index=user_input)==true
  board[index]=user_input
else
end

end
