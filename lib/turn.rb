#helper method to display board
def display_board(board = [" "," "," "," "," "," "," "," "," "])
  horiz_line = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts horiz_line
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts horiz_line
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#helper method for validating move - returns true if move is valid
def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

#valid_move? method requires the position_taken? method which checks
#whether the position has already been taken or not.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

#helper method for translating input to index
def input_to_index(input)
  input_int = input.to_i
  index = input_int - 1
end

#helper method for making the move
def move(board, index, char = "X")
  board[index] = char
  return board
end

def turn(board)
  #asking the user for their move by position 1-9
  puts "Please enter 1-9:"
  #receiving the user input
  input = gets.strip
  index = input_to_index(input)
  #convert the position to an index
  if valid_move?(board, index) #reurns true if move is valid
    move(board, index, char = "X")
    display_board(board)
  else
     loop do
      #ask for a new input & get new input
      puts "#{index + 1} is not a valid move."
      puts "Please enter 1-9:"
      input = gets.strip
      index = input_to_index(input)
      if valid_move?(board, index)
        move(board, index, char = "X")
        display_board(board)
        break
      end
    end
  end
end
