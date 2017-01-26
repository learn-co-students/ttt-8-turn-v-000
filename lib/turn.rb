def display_board(board)
  separator = "-----------"
  puts " #{board[0]} "+"|"+" #{board[1]} "+"|"+" #{board[2]} "
  puts separator
  puts " #{board[3]} "+"|"+" #{board[4]} "+"|"+" #{board[5]} "
  puts separator
  puts " #{board[6]} "+"|"+" #{board[7]} "+"|"+" #{board[8]} "
end

def valid_move?(board, index)
  position_taken?(board,index) == false && index.between?(0,8) == true
end

def position_taken?(board, index)
  !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def input_to_index(input = "1")
  board_input = input.to_i
  index = board_input -1
end

def move(board,index,char = "X")
  board[index]= char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
   if valid_move?(board, index) == true
     move(board,index)
     display_board(board)
   else
     turn(board)
   end
end
