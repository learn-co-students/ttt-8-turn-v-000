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
  # board_index = input_to_index(index) (because they keep passing in index numbers instead of position numbers)
  if !position_taken?(board, index) && existing_space?(index)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def existing_space?(index)
  if index.between?(0,8)
    true
  else
    false
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp.to_i
  user_input = input_to_index(user_input)
  if valid_move?(board, user_input)
    move(board, user_input)
    display_board(board)
    # turn(board) (to pass tests)
  elsif position_taken?(board, user_input)
    puts "That spot has already been taken."
    turn(board)
  else
    puts "That isn't a real move, yo."
    turn(board)
  end
end
