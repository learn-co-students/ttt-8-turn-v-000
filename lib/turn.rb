puts board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
user_input = " "

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#Change input to integer
def input_to_index(move)
  index = move.to_i - 1
  index
end

#Check for empty space
def position_taken?(board, index)
  if (board[index] == " "|| board[index] == " ") || (board[index] == nil)
    false
  else
    return true
  end
end

#Is input correct and is the space empty?
def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8)
    return true
  end
end

#Make a move on the board
def move(board, index, player)
  board[index] = player
end

def current_player(board)
  turn_count(board) % 2 == 0 ? "X" : "O"
end

def turn_count(board)
  counter = 0
  board.each do |spaces|
    if spaces == "X" || spaces == "O"
      counter += 1
    end
  end
  counter
end

def turn(board)
    puts "Please enter 1-9:" #asks for input
    user_input = gets.strip #gets user input
    index = input_to_index(user_input)
    
    if valid_move?(board, index) 
      move(board, index, current_player(board))
    else
      turn(board)
    end
  display_board(board)
end