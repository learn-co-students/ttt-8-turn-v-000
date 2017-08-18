board = ["O", "X", "O", "X", "O", "O", "O", "O", "O"]
def display_board(board)
  print " #{board[0]} | #{board[1]} | #{board[2]} "
  print "\n-----------\n"
  print " #{board[3]} | #{board[4]} | #{board[5]} "
  print "\n-----------\n"
  print " #{board[6]} | #{board[7]} | #{board[8]} \n"
end



def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    true
  else
    false
  end
end



def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  else board == "X" || "O"
    true
end
end


def input_to_index(input)
  input.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
end


def turn(board)
  loop do
    puts "Please enter 1-9:"
    input = gets.strip
    input = input_to_index(input)
    if valid_move?(board, input)
      move(board, input)
      display_board(board)
    else
      turn(board)
    end
    break
end
end
