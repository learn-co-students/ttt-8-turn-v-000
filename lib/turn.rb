def display_board(board)
  puts " #{board[0]} "+"|"+" #{board[1]} "+"|"+" #{board[2]} "
  puts "-----------"

  puts " #{board[3]} "+"|"+" #{board[4]} "+"|"+" #{board[5]} "

  puts "-----------"
  puts " #{board[6]} "+"|"+" #{board[7]} "+"|"+" #{board[8]} "

end
def position_taken? ( board , index )

if (board[index]==" ")||(board[index]=="")||(board[index]==nil)
  false
elsif (board[index]== "X")||(board[index]=="O")
   true
end
end
def valid_move?(board,index)
  if (index>=0) && (index<=8) && (index % 1==0) && !(position_taken?(board,index))
  true
else
  false
  end
end

def input_to_index(number)
number.to_i-1
end

def move(array,index,character="X")
array[index]=character
end

def turn(board)
  puts "Please enter 1-9:"
  index=input_to_index(gets.strip)
  until valid_move?(board, index)
  puts "Please enter 1-9:"
  index=input_to_index(gets.strip)
  end

move(board,index,"X")
display_board(board)

end
