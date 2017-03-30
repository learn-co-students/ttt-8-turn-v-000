def display_board(board)
    puts" #{board[0]} | #{board[1]} | #{board[2]} "
    puts"-----------"
    puts" #{board[3]} | #{board[4]} | #{board[5]} "
    puts"-----------"
    puts" #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index =(input.to_i- 1)
  return index
end

def valid_move?(board,index)
  if (index >=0 and index< 9 and board[index]== " ")
    return true
  else
    return false
  end
end

def position_taken?(board, index=0)
  if (board[index] == " ")
    return false
  elsif (board[index] == "")
    return false
  elsif (board[index] == "X")
    return true
  elsif (board[index] == "O")
    return true
  else
    return false
  end
end

def move(board,index=0,character="X")
  board[index]= character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp


  if (valid_move?(board,input_to_index(input))== true)
    move(board,4,character="X")
    display_board(board)
  else
    turn(board)
  end
end
