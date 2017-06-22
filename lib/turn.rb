

def display_board
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
index_number = user_input.to_i - 1
end

def move(board, user_input, user_character = "X")
  board[user_input.to_i] = user_character
end

def position_taken?(board, index_number)
  if board[index_number] == "X" || board[index_number] == "O"
    true
  elsif board[index_number] == " " || "" || nil
      false
  end
end

def valid_move?(board, index_number)
  if position_taken?(board, index_number) == true
    false
  elsif index_number.between?(0,8) && position_taken?(board, index_number) == false
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index_number = input_to_index(user_input)

  if valid_move?(board, index_number)
    move(board, index_number, user_character = "X")
    display_board(board)
      else turn(board)
  end
end
