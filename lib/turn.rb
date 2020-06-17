board = []

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
  
  def valid_move?(array, index)
  if !position_taken?(array, index) && index.between?(0,8)
    true
  else 
    false
    end
end


def position_taken?(array, index)
  if
   array[index]== "" || array[index]== " " || array[index] == nil
   return false
  else
   true
  end
end


def input_to_index(index)
  
  index.to_i - 1 
 end 

def move(board,index, value = "X") 
  board[index]=value
end

def turn(board) 
  puts "Please enter 1-9:"
   index = gets.strip
   input=input_to_index(index)
  if valid_move?(board,input)
     move(board,input)
     display_board(board)
else
  turn(board)
  end
 end





















