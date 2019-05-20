def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  input= user_input.to_i
  input=input -1
end

def move(board,index,char="X")
    board[index] = char

end


def valid_move?(board,index)
  !position_taken?(board,index)
end

def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip()
  index=input_to_index(input)
  if (valid_move?(board,index))
     move(board,index)
   else
       until (valid_move?(board,index))
#          this the aski_for_INPUT method
         puts "Please enter 1-9:"
         input=gets.strip
         index=input_to_index(input)
        end
       move(board,index)
    end
    display_board(board)
  end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  if ((index>=0) && (index<=8) )
     if ( (board[index]=="")|| (board[index]==" ")|| (board[index]== nil))
      return false
     else
       return true
     end
 else
   return true
 end

end
