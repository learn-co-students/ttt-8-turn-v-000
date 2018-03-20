
#prints arbitrary arrangements of the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#converts a user_input to an integer
# subtracts 1 from the user_input
def input_to_index(user_input)
  user_input.to_i - 1
end

#returns true/false based on index
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

#returns true/false based on index
def valid_move?(board,index)
  if position_taken?(board, index) == false && index.between?(0,8) == true
    true
  else
    false
  end
end

# allows "X" player in the bottom right and "O" in the top left
def move(board, position, player = "X")
  board[position] = player
end

#turn
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  answer = input_to_index(user_input)

#recursive until valid move is true, reusing #turn
  if valid_move?(board, answer) == false
    turn(board)
    else
    move(board, answer)
    display_board(board)
  end
end
