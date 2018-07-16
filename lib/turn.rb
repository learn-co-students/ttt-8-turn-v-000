def display_board(board)
  print " #{board[0]} ","|"," #{board[1]} ","|"," #{board[2]} "
  puts ""
  print "------------"
  puts ""
  print " #{board[3]} ","|"," #{board[4]} ","|"," #{board[5]} "
  puts ""
  print "------------"
  puts ""
  print " #{board[6]} ","|"," #{board[7]} ","|"," #{board[8]} "
  puts ""
end

def valid_move?(board,index)
  if index.between?(0,8) && (position_taken?(board,index) == FALSE)
    return TRUE
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else board[index] != " " || board[index] != "" || board[index] != nil
    return FALSE
  end
end

def input_to_index(input)
  index = input.to_i - 1
  return index
end

def move(board,index,value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board,index,value = "X")
  else
    while !valid_move?(board,index)
      puts "Please enter 1-9:"
      input = gets
      index = input_to_index(input)
    end
    move(board,index,value = "X")
  end
  display_board(board)
end