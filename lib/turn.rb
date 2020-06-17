def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts'-----------'
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts'-----------'
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, i)
  if board[i]=='' or board[i]==' ' or board[i]==NIL
    return FALSE
  else
    return TRUE
  end
end

def valid_move?(board,i)
  if 0<=i and i<9 and !(position_taken?(board,i))
    return TRUE
  else
    return FALSE
  end
end

def move(board, i,val='X')
    board[i]=val
end

def input_to_index(x)
  index=(x.to_i)-1
end

def turn(board)
  puts'Please enter 1-9:'
  x=gets.strip
  index=input_to_index(x)
  if valid_move?(board,index)
    move(board,index)
    display_board(board)
  else
    turn(board)
  end
end




    