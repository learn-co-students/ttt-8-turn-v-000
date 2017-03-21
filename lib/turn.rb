# Print out current board

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#Check to see if player move is valid.  (Uses #position_taken)
def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  elsif index >=0 && index <= 8
    return true
  end
end
# Make sure there isn't a token on requested square
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil   #return false if player pos is open
    return false
  elsif board[index] == "X" || board[index] == "O"           #return true if player pos is taken
    return true
   end
end

def input_to_index(input)  #Get user move, -1 for proper array location
  index = input.to_i - 1
end

def move(board, position, token = "X")
  board[position] = token             #set array location = to player token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index, token = "X")
    display_board(board)
  else
    turn(board)
  end
end
