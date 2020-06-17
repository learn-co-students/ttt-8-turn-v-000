def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(user_input)
  user_input = user_input.to_i
  user_input = user_input - 1
end

def move(array,index,letter = "X")
  array[index] = letter
end



def valid_move?(board, index)
     if index.between?(0,8) && !position_taken?(board, index)
       return true
     end
   end


def position_taken? (board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
 end

end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

until valid_move?(board,index)
  puts "Please enter 1-9:"
end


end
