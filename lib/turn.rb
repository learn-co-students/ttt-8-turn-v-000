#Used to check if position is taken.
def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true

  end
end

#Used to check if move is valid.
def valid_move?(board, index)
  if index.between?(0, 8) == true && position_taken?(board, index) == false
    true
  else
    false
  end
end

#Displays current status of Tic Tac Toe board.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#Converts user input into index.
def input_to_index(user_input)
  user_input.to_i - 1
end

#Inserts token in valid space on the board.
def move(board, index, char = "X" )
  board[index] = char
end


def turn(board)
    puts "Please enter 1-9:"
      user_input = gets.chomp
      index = input_to_index(user_input)
      if valid_move?(board, index)
        move(board, index,)
      else
        turn(board)
      end
      display_board(board)
end
