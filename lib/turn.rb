# ask for input
# get input
# convert input to index
# if index is valid
#  make the move for index
#  show the board
# else
#  ask for input again until you get a valid input
# end
def turn(board)
  loop do
    puts "Please enter 1-9:"
    index = gets.to_i
    index = input_to_index(index)
    if valid_move?(board, index)
      move(board, index)
      break
    end
  end
end

# This method displays the board on the screen
  def display_board(board)

    puts line1 = " #{board[0]} | #{board[1]} | #{board[2]} "
    puts line2 = "-----------"
    puts line3 = " #{board[3]} | #{board[4]} | #{board[5]} "
    puts line4 = "-----------"
    puts line5 = " #{board[6]} | #{board[7]} | #{board[8]} "
  end

# This method converts the input entered by the user, converts the string to an
# integer and then we subtract - 1 to the integer because we need the position
# of that number in the array (our array sees positions 0-8 instead of 1-9)
  def input_to_index(index)
    number = index.to_i - 1
    return number
  end

# This method checks if a space is available and if the index is between 0 -8
  def valid_move?(board, index)
  #!position_taken? negates the truthiness of it
    if !position_taken?(board, index) && index.between?(0, 8)
      return true
    else
      return false
    end
  end

# This method takes the board and index and puts a character on the board and
# displays the board after the move has been made
  def move(board, index, char= "X")
    board[index] = char
    display_board(board)
    end

# This method checks to see if the move is valid (if the space is available)
  def position_taken?(board, index)
    index_true = index
    if board[index_true] == "X" || board[index_true] == "O"
      return true
    elsif board[index_true] == " " || board[index_true] == "" || board[index_true] == nil
      return false
    end
  end
