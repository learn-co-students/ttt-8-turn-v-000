board = ["X","X","X","O","O","O"," "," "," "]
def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(index)
  input = index.to_i
  number = input - 1
  return number
end

def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0,8)
end

def position_taken?(board, index)
  if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
  false
else (board[index] == "X") || (board[index] == "O")
  true
  end
end

def move(board, index, value = "X")
  board[index] = value
end
#take users input and replaces it with an X or O (converting an integer back to string?)
#index = token mark
#puts "X" or "O"


def turn(board) #name of method
  puts "Please enter 1-9:" #asks user for input
  input = gets.strip #allows for input
  index = input_to_index(input) #converts in to integer
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board) #repeats the method until valid
  end
end
#def turn(board)
  #puts "Please enter 1-9:"
  #while valid_move?(board, index)
    #puts "Please enter 1-9:"
  #end
#end
