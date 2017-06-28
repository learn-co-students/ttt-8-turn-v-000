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
  if position_taken?(board, index) == false && index.to_i.between?(0,8)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else board[index] == "X" || board[index] == "O"
    true
  end
end


def move(board, index, value)
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  user_input = input_to_index(user_input)

  if valid_move?(board, user_input)
    move(board, user_input, "X")
    display_board(board)
  else
      until valid_move?(board, user_input)
        puts "That number isn't on the board. Please try again."
        user_input = gets.strip
        user_input = user_input.to_i - 1
      end
    move(board, user_input, "X")
    display_board(board)
  end
end
