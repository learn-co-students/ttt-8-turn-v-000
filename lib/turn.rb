#turn
def turn(board)
  puts "Please enter 1-9:"
  move = gets.strip
  index = input_to_index(move)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    puts "Please enter a valid move by inputting an integer from 1-9."
    turn(board)
  end
end



#display_board
def display_board(board = " ")
  line = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts line
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts line
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#valid_move
def valid_move? (board, index)
  if index.between?(0, 8) && !(position_taken?(board, index))
    return true
  else
    return false
  end
end

#position_taken
def position_taken?(board, index)
 if board[index] == " " ||board[index] == "" || board[index] == nil
   return false
 else
   true
 end
end

#input_to_index
def input_to_index(user_input)
  index = user_input.to_i - 1
end

#move
def move(board, position, character = "X")
  board[position] = character
  return board
end
