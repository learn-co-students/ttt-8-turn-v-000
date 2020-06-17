def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
    position_taken?(board,index)
    move(board,index)
    display_board(board)
  else turn(board)
  end
end



def display_board(array)
puts " #{array[0]} | #{array[1]} | #{array[2]} "
puts "-----------"
puts " #{array[3]} | #{array[4]} | #{array[5]} "
puts "-----------"
puts " #{array[6]} | #{array[7]} | #{array[8]} "
end

def input_to_index(user_input_index)
 return ((user_input_index.to_i) - 1)
end

def move (board, index, char = "X")
  board[index] = char
  return board
end

def position_taken? (board, index)
 if board[index] == " " || board[index] == "" || board[index] == nil
   return false
 else board[index] == "X" || board[index] == "O"
  return true
 end
end

def valid_move?(board, index)
  if index.between?(0,8)
    if position_taken?(board,index) == false
      return true
    else
      return false
    end
  else
    return false
  end
end
