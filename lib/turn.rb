
# displays the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#converts user input to an integer (from a string)
def input_to_index(input)
  index = input.to_i - 1
  return index
end

#validation test for a valid move
# 1) if user's input is > 8, then false
# 2) if space is occupied, then false --> defind a separate #position_taken? method.
def valid_move?(board, index)
  if index > 8 || index < 0 || position_taken?(board, index)
    false
  else
    true
  end
end

#position_taken helper method to be used in #valid_move? function above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

# defines #move method
def move(board, index, token = "X")
    board[index]  = token
end

#define the turn method.
def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    puts "That was an invalid entry."
    turn(board)
  end
end
