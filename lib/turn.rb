
board = ["", "", "", "", "","","","",""]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move? board, index
  if index.between?(0,8) && !position_taken?(board, index)
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? board, index
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def move board, index, position="X"
  board[index] = position
end

def turn(board)
  while true
    puts "Please enter 1-9:"
    input = gets.chomp
    index = input_to_index(input)
    if valid_move? board, index
      move board, index
      display_board board
      break
    else
      puts "Invalid move try again"
    end
  end
end
