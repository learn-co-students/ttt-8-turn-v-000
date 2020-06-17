
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  index = input.to_i - 1
end

def move(board,position,token = "X")
  board[position] = token
  board
end


# code your #valid_move? method here

def valid_move?(board, index)
if index.to_i >= 0 && index.to_i <8 && position_taken?(board, index) == false
  return true
end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)

if board[index] == "X" || board[index] == "O"
  true
elsif board[index] == " " || board[index] == "" || board[index] = "nil"
  false
end

end


def turn(board)
  puts "Please enter 1-9:" #ask for input
  input = gets.strip #get input
  index = input_to_index(input) #convert input to index
  if valid_move?(board, index) #if move is valid_move
    move(board, index) #make the move for index
    puts display_board(board) #show the board
  else
    turn(board) #ask for input again until you get a valid input
  end
   display_board(board) #display the board
end
