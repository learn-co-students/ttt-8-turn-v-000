def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def turn(board)
  puts "Please enter 1-9:"
  puts "Where would you like to go?"
  input=gets.strip
  input=input_to_index(input)
  #valid_move?(board,input)
if !valid_move?(board,input)
  turn(board)
else
  move(board,input,"X")
  display_board(board)
end
end

def input_to_index(input)
  index=input.to_i-1
end

def move(array,index,value="X")
  array[index] = value
end

def valid_move?(board,index)
  (!position_taken?(board,index) && board[index]!=nil && index.between?(0,8))
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  !(board[index]==" " || board[index]=="")
end
