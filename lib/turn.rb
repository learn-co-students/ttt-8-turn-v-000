def display_board(board = [" "," "," "," "," "," "," "," "," "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if index.between?(0,9) && !position_taken?(board,index)
    true
end
end
  

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board,index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
end
end

def move(board,index, value = "X")
  return board[index] = value
end


# code your input_to_index and move method here!
def input_to_index(user_input)
  return user_input.to_i-1
end

def turn(board)
puts "Please enter 1-9:"
  position_taken = gets.strip
  index = input_to_index(position_taken)
  if !valid_move?(board,index)
    turn(board)
  else
    move(board, index)
   display_board(board)
  end
end


