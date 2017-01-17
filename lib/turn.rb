# Define display_board that accepts a board and prints
# out the current state.

board = ["X", " ", " ", " ", " ", " ", " ", " ", "O"]

def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  if index.between?(0,8)
    if !position_taken?(board, index)
      true
    end
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  possible_max_num = 9
  if (valid_move?(board, index))
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

# code your #position_taken? method here!
taken = nil
def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == "nil")
    taken = false
  else
    taken = true
  end
  taken
end

def move(board, index, current_player = "X")
  board[index] = current_player
end
