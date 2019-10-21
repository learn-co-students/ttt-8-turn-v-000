#display_board method
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#input_to_index method
def input_to_index(user_input)
  return user_input.to_i - 1
end

#move method
def move(board,index,value="X")
    board[index] = value
    return board
end

#valid_move? method
def valid_move?(board, index)
  if (index.between?(0, 8)  && !position_taken?(board,index))
   return true
 end
end

#position_taken? method
def position_taken?(board,index)
  return (board[index] ==  " " || board[index] == "" || board[index] == nil) ? false : true
end

#turn method
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  (valid_move?(board, index)) ? move(board,index,value="X") : turn(board)
  display_board(board)
end
