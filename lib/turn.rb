def display_board(board)
  puts " #{board[0]} ""|"" #{board[1]} ""|"" #{board[2]} "
  puts "-----------"
  puts " #{board[3]} ""|"" #{board[4]} ""|"" #{board[5]} "
  puts "-----------"
  puts " #{board[6]} ""|"" #{board[7]} ""|"" #{board[8]} "
end

def position_taken?(board,index)
   if "X" == 0 && "O"== 0
      true
elsif board [index] == "" ||board [index]==" "||board [index]==nil
         false

elsif board [index] == "X" ||board [index]== "O"
       true

  end
end

def valid_move?(board,index)
  if index.between?(0,8) && !position_taken?(board, index)
    true
  else
    false
  end
end

def input_to_index(index)
    (index.to_i)-1
  end
def move(board, index, token = "X")
  board[index.to_i]=token

  display_board(board) && index.between?(0,8)
  board= [" "," "," "," "," "," "," "," "," "]
  end

def turn(board)
  puts "Please enter 1-9:"
   input = gets.strip
   index=input_to_index(input)
   if valid_move?(board,index)
     move(board, index, token = "X")
     display_board(board)

   else
    turn(board)

end

  end
