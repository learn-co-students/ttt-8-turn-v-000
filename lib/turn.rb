def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input) 
    move(board, input)
  else
    turn(board)
  end
  display_board(board)
end



def display_board(board)
   line= "-----------"
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts line
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts line
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def valid_move?(board, position) #false and true makes this method true
  indexed = position.to_i - 1
 if position_taken?(board, position)  
    return false
  elsif (indexed.between?(0,8))
    true
  end
end
def position_taken?(board,position)
  if (board[position.to_i - 1] == " ") || (board[position.to_i - 1] == "") 
    false
  elsif (board[position.to_i - 1] == nil)
    false
  elsif (board[position.to_i - 1] == "X") || (board[position.to_i - 1] == "O") 
    true
  end
end
def move(board, location, play = "X")
  board[location.to_i - 1] = play
end


