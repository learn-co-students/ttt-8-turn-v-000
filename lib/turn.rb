def display_board(board = [" "," "," "," "," "," "," "," "," "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
 end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
end

 def input_to_index(input)
   return input.to_i - 1
 end


 def move (board, position, character = "X")
   board[position] = character
 end


def valid_move?(board, index)
   if index.between?(0, 8) && position_taken?(board, index) == false
     return true
   elsif position_taken?(board, index) == true
     return false
   end
 end

 def position_taken?(board, position)
     taken = nil
     if board[position] == " "
       taken = false
     elsif board[position] == ""
       taken = false
     elsif board[position] == nil
       taken = false
     else
       taken = true
     end
     taken
   end

   def turn(board)
      puts "Please enter 1-9:"

      user_input = gets.strip

      position = input_to_index(user_input)

      if valid_move?(board, position) == true
        move(board, position)
      else turn(board)
      end
      display_board(board)
    end
