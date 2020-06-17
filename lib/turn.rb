def display_board(board)
  puts  " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(user_input)
  index = user_input.to_i - 1
end


def valid_move?(board, index)
  if board[index] == "X" || board[index] == "O"
    nil
  elsif index.between?(0, 8)
    true
  else index > 8 || index < 0
    nil
  end
end


def move(board, index, char = "X")
board[index] = char
return board
end


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  input_to_index(user_input)
  index = user_input.to_i - 1
    if valid_move?(board, index)
      move(board, index, char = "X")
    else
      turn(board)
    end
  display_board(board)
end
