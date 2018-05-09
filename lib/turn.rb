

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(move)
  move.to_i - 1
end  
  

def position_taken?(array, ind)
  if array[ind] == " " || array[ind] == "" || array[ind] == nil
    return false
  else
    return true
  end
end



def valid_move?(board, index)

  if ! position_taken?(board,index) == true
    puts "position not taken"
  else
    puts "position taken"
    return false
  end

  if index.between?(0, 9) == true
    puts "true between"
    return true
  else
    puts "false between"
    return false
  end
end


  
def move(board, ix, player="X")
  board[ix] = player
  return board
end


def turn(board)
  puts "Please enter 1-9:"
  move = gets.strip
  
  ix = input_to_index(move)
  puts ix
  
  if valid_move?(board,ix) == true
    board = move(board,ix)
    display_board(board)
  else
    turn(board)
    
  end
end
  



