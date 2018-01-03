def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
   else board[index] == "X" or board[index] == "O"
    return true
  end
end



def valid_move?(board,index)
  if position_taken?(board,index) == true
    return false
  elsif index > 9 || index < 0
    return false
  else
    return true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  user_input.to_i-1
end

def move(board,index,character="X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input=gets.strip
  index=input_to_index(user_input)
  if valid_move?(board,index) == true
    move(board,index,character="X")
    display_board(board)
  else
    turn(board)
  end
end
