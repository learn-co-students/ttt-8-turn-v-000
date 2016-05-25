def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
  display_board(board)
  valid_move?(board, user_input)

end

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

def valid_move?(board, user_input)
  user_input = user_input.to_i 
  if !position_taken?(board, user_input) && user_input.between?(0, 8) 
    true
    else false
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def position_taken?(board, index)
  board[index] != " "
end