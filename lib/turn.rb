def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  user_move = input_to_index(user_input)
   if !valid_move?(board, user_move)
     turn(board)
   else
     move(board,user_move)
     display_board(board)
   end
end

def move(board, index, user = "X")
  return board[index] = user
end


  
def input_to_index(user_input)
  return user_input.to_i - 1
end

def valid_move?(board, index)
  if index < 0 || index > 8
    return FALSE
  elsif board[index] == " " || board[index] == "" || board[index] == NIL
    return TRUE
  end
end

  
  def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      return FALSE
    else
      return TRUE
    end
  end
