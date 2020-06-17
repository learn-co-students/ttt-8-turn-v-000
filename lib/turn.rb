def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, idx)
  if idx < 0 || idx > 8
    return false
  end
  
  return !position_taken?(board, idx)
end

def position_taken?(board, idx)
  chr = board[idx].strip
  
  if chr == "X" || chr == "O"
    return true
  end
  false
end

def move(board, idx, token = "X")
  
  if valid_move?(board, idx)
    board[idx] = token
  else 
    return false
  end
  
  display_board(board)
  true
end

def input_to_index(input)
  #if input.class != Fixnum
  #  return -1
  #end
  
  return (input.to_i - 1)
end

def turn(board)
  
    puts "Please enter 1-9:"
    rtn = gets
    idx = input_to_index(rtn)
  
    if !move(board, idx)
      turn(board)  
    end
    
end