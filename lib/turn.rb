def display_board(board)
 puts " #{board[0]} | #{board[1]} | #{board[2]} "
 puts "-----------"
 puts " #{board[3]} | #{board[4]} | #{board[5]} "
 puts "-----------"
 puts " #{board[6]} | #{board[7]} | #{board[8]} "
 end

 board = [" ", " ", " "," ", " ", " "," ", " ", " "]

 def input_to_index (input)# convert a user_input to an interger
   index= input.to_i-1# subtracts 1 from the user_input and returns -1 fro strings without interger
 end

 def valid_move?(board, position)#returns true/false based on index
   position.to_i.between?(0,8) && !position_taken?(board,position)
 end

 def move (board, index, token ="X")
   board[index] = token
 end

 def position_taken?(board, position)
    board[location] != " "
 end

def turn(board)
puts "Please enter 1-9:"
input = gets.strip
index =input_to_index(input)
if valid_move?(board, index)
move(board, index)
display_board(board)
else
turn(board)
end
end
