board = [' ', ' ', ' ',' ', ' ', ' ', ' ',' ', ' ']

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end




def valid_move?(board, index)
  if position_taken?(board, index)
    return nil
  elsif index >= 0  && index <= 8
    return true
  else
    return nil
  end
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  elsif  board[index] == "X" || board[index] == "O"
    return true
  end
end


def move(board, index, character = "X")
  board[index] = character
end


#get input
#convert input to index
#if index is valid
#  make the move for input
#else
#  ask for input again until you get a valid input
#end



def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, character = "X")
  else
    turn(board)
  end
  display_board(board)
end
