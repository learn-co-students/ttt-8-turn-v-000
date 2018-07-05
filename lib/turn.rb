def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end 

def input_to_index(user_input)
  index = user_input.to_i 
  index -= 1
  return index
end

def valid_move?(board, index)
  
  def position_taken?(array, ind)
    if array[ind] == " " || array[ind] == "" || array[ind] = NIL
      return FALSE
    else 
      return TRUE
    end
  end
  
  def on_board?(num)
    if num.between?(0, 8) == TRUE
      return TRUE
    else
      return FALSE
    end
  end
  
  if(position_taken?(board, index)) == FALSE && (on_board?(index) == TRUE)
    return TRUE
  else 
    return FALSE
  end

end

def move(board, index, character = "X")
  board[index] = character
  return board
end

def turn (board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  if valid_move?(board, index) == TRUE
    move(board, index)
    display_board(board)
  else 
    turn(board)
  end
end