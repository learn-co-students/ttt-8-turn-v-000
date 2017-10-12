#displays_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def input_to_index(input)
# convert input to integer and subtract 1.
  input.to_i - 1
  # users count from 1, Ruby from 0
end

def move(board, index, symbol)
  board[index] = symbol
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil # safety measures
      taken = false
    elsif board[index] == "X" || board[index] == "O"
      taken = true
  end
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
   # if the position isnt taken and is on the board, move must be valid
end

def turn(board)
  puts "Please enter 1-9:"
    userInput = gets.strip # gets the user input and calls input_to_index
    index = input_to_index(userInput)
    if !valid_move?(board, index) # asks for input again after a failed validation
      turn(board)
    else # makes valid moves
      move(board, index, current_player(board))
    end
  display_board(board)
end

def turn_count(board)
  # counts occupied positions
  count = 0
  board.each do |index|
    if index != " "
      count += 1
    end
  end
    count
 end
 def current_player(board)
   if turn_count(board) % 2 == 0
   # returns the correct player, X, for the first move
     return "X"
   else
     # O for the second move
     return "O"
   end
 end
