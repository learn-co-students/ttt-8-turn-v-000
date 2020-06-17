# ask for input
# get input
# convert input to index
# if index is valid
#   make the move for index
#   show the board
# else
#   ask for input again until you get a valid input
# end

# def display_board

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
   s = input.to_i - 1
end

position = ["0", "1","2","3","4","5","6","7","8"]

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
taken = false
  else taken = true
    end
return taken
end

def valid_move?(board, position)
if position_taken?(board, position) == false && position.between?(0, 8)
taken = true
 else taken = false
end
return taken
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
   input = gets.strip
    index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
      display_board(board)
    else puts "Invalid Move"
      turn(board)
  end
end







# def turn(user_input)
#   puts "Please enter 1-9:"
# user_input = get.to_i - 1 && user_input.between(0, 8)
#
# end
