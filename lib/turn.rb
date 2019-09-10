def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  def input_to_index(user_input)
      user_input.to_i-1
  end

  def position_taken?(board, index)
     if board[index] == "X" || board[index] == "O"
       true
     else
       false
     end
  end

  def move(board, index, token = "X")
    board[index] = token
  end

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end


def turn(board)
  puts "Please enter 1-9:"
  #gets user_input
  input = gets.strip
  # convert user input to integer call input_to_index
  index = input_to_index(input)
# check to see if user_input is a valid move
 if valid_move?(board, index)
   move(board, index)
   display_board(board)
# if it is valid add to board
 else
#if it not valid ask user to try again (repeat turn)
    puts "Please enter 1-9:"
    turn(board)
  end
end

# def capture_puts{ display_board(board) }
