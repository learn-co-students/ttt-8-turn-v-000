def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    if valid_move?(board, index)
      move(board, index, current_player = "X")
    else
      turn(board)
    end
    display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} \n"
end

def input_to_index(user_input)
  user_input.to_i-1
end

def valid_move?(board, index)
  if (index.between?(0,8) == true) && (position_taken?(board, index) == false)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if (board[index] == "")||(board[index] == " ")||(board[index] == nil)
    false
  else (board[index] == "X")||(board[index] == "O")
    true
  end
end

def move(board, index, current_player = "X")
  board[index] = current_player
end
