def display_board(turn)
  puts" #{turn[0]} | #{turn[1]} | #{turn[2]} "
  puts "-----------"
  puts" #{turn[3]} | #{turn[4]} | #{turn[5]} "
  puts "-----------"
  puts" #{turn[6]} | #{turn[7]} | #{turn[8]} "
end
def valid_move?(board,index)

  if (!position_taken?(board,index) && index.between?(0,8))
    return true
  else
    return false
  end
end

  def position_taken?(board,index)
    if(board[index] == " " || board[index] == "" || board[index] == nil)
       return false
     else
       return true
     end
   end


   def input_to_index(str)
     if str =~ /\d/         # Calling String's =~ method.
       index = Integer(str) - 1
     else
       index = - 1
     end
    return index
   end


   #  and move method here!
   def move(board,index,char="X")

     board[index]=char

    return board
   end

   # ask for input
   # get input
   # convert input to index
   # if index is valid
   #   make the move for index
   #   show the board
   # else
   #   ask for input again until you get a valid input
   # end

   
   def turn(board)
     puts "Please enter 1-9:"
     input=gets.strip
     index=input_to_index(input)
     while (!index.between?(0,8))
       puts "Please enter 1-9:"
       input=gets.strip
       index=input_to_index(input)
     end

        position_taken?(board,index)
        valid_move?(board,index)
        move(board,index)
        display_board(board)


   end
