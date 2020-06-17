def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
puts "Please enter 1-9:"

#index_1 is the unaltered user input index_2 is after its altered to reflect the correct index (between 0 and 8)

index_1 = gets.strip
index_2 =input_to_index(index_1)
  if valid_move?(board,index_2)==true
  move(board,index_2)
  display_board(board)
  else
  turn(board)
  end
end

def valid_move?(board,index)
x=nil
if index.between?(0,8) == true && !position_taken?(board,index)==true
  x = true
  else 
  x = false
  end
  x
end

def input_to_index(number)
int_input = number.to_i
int_input = int_input - 1
end


def move(array,index,char="X")
  array[index]=char
end

def position_taken?(board,index)
if board[index] == " " || board[index]== "" || board[index] == nil
  false
  else
  true
  end
end
