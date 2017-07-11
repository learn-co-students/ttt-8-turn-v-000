
#input_to_index
def input_to_index (input)
  index= input.to_i - 1
end

#move
def move(board, index, value= "X")
  board[index]=value
end

#valid_move?
def valid_move?(board, index)
  if index.between?(0,8) && (board[index]==" " || board[index]=="" || board[index]== nil)
    return true
    puts board
  else
    return false
    puts "Invalid move. Please enter 1-9:"
    input=gets.strip
  end
end

#display_board
def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#turn
def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  index=input_to_index(input)
  until valid_move?(board,index)
    puts "Please enter 1-9:"
    input = gets.strip
    index=input_to_index(input)
  end
  move(board, index)
  display_board(board)
end
