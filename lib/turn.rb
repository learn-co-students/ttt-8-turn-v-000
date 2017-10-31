
def turn(board)
  until index == true
    print "Please enter a 1-9:"
    #ask_for_input(board,index)
    input = gets.strip
    index = input_to_index(index)
    position_taken?(board,index)
    valid_move?(board,index)
  end
  move(board,index,value = "X")
  display_board(board)
end
#def ask_for_input(board,index)
  #  print "Please enter a 1-9:"
#end
def input_to_index(index)
  input = index.to_i - 1
end
def position_taken?(board,index)
    board[index] != " " && board[index] != "" && board[index] != nil
end
def valid_move?(board,index)
  if position_taken?(board,index)
    false
  elsif index >= 0 && index < 10
    true
  else false
  end
end
def move(board,index,value = "X")
  board [index] = value
end
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
