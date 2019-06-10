

def display_board(board)
 puts " #{board[0]} | #{board[1]} | #{board[2]} "
 puts "-----------"
 puts " #{board[3]} | #{board[4]} | #{board[5]} "
 puts "-----------"
 puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input.to_i-1
end

def move(board, index, player = "X")
  puts "#{board[index] = player}"
end

def position_taken?(board,index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  else board[index] == "X" || "O"
    return true
  end
end
 
def valid_move?(board,index)
  index.between?(0,8) && !position_taken?(board,index)
end



def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  player = "X" || "O"
  if valid_move?(board, index)
    move(board,index, player = "X")
    display_board(board)
  else !valid_move?(board, index)
   turn(board)
  end
  display_board(board)
end


  


