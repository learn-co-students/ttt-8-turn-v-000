def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n"
  puts "-----------\n"
  puts " #{board[3]} | #{board[4]} | #{board[5]} \n"
  puts "-----------\n"
  puts " #{board[6]} | #{board[7]} | #{board[8]} \n"
end

def position_taken?(board, index)
   if board[index] == "X" || board[index] ==  "O"
      true
   elsif board[index] == " " || board[index] == "" || board[index] == nil
      false
   end
 end

def valid_move?(board, index)
   if index == nil || index < 0 || index > 8
     false
   elsif position_taken?(board, index)
     false
   else
     true
   end
end

def input_to_index(input)
  index=input.to_i - 1
end
input=input_to_index(input)
def move(array,input,value="X")
  array[input]=value
end


def turn(board)
  puts "Please enter 1-9:"
end

def turn(board)
   puts "Please enter 1-9:"
   input = gets.strip
   input = input_to_index(input)
   valid = valid_move?(board, input)
   if valid == true
       move(board, input, "X")
       display_board(board)
   else
     puts "please enter 1-9:"
     input = gets.strip
   end
 end
