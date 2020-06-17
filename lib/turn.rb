# code your #valid_move? method here

# Define display_board that accepts a board and prints
# out the current state.
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
 end

 def input_to_index(input)
   num = input.to_i
   num = num -1
 end

 def move(board, index, character = "X")
   board[index] = character
 end

def position_taken?(board, index)
    if board[index] == " " || board[index] == ""
      return false
    elsif board[index] == nil
        return false
    else
      return true
    end
end

def valid_move?(board, index)
      if index.between?(0, 8) && position_taken?(board, index) == false
        return true
      else
        return false
      end
end

def turn(board)
  puts "Please enter 1-9:"
  entry = gets
  num = input_to_index(entry)
  
  if valid_move?(board, num)
    move(board, num)
    display_board(board)
  else
    turn(board)
  end
end
