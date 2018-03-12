# DISPLAY_BOARD accepts a board as an argument and prints out the current state of the board for the user

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


# VALID_MOVE accepts a board and index and returns true if the index is within the correct range of 0-8 and is currently occupied by an X or O token

def input_to_index(user_input)
  index = user_input.to_i
  index -= 1
  return index
end

def valid_move? (board, index)
  def occupied_or_not (array, index)
    if array[index] == " " || array[index] == "" || array[index] == nil 
      return true
    else
      return false
    end
  end
  
  def on_board(number)
    if number.between?(0, 8) == true
      return true
    else 
      return false
    end
  end
  
  if (occupied_or_not(board, index) == true) && (on_board(index) == true)
    return true
  else
    return false
  end
end

# MOVE accepts a board, an index from the user, and a token to mark that position with. The method should set the correct index value of that position within the board equal to the token

def move (board, index, character = "X")
  board[index] = character
  return board
end

# TURN asks the user for input, checks if it's valid, and if it isn't a valid spot on the board asks again

def turn(board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end















