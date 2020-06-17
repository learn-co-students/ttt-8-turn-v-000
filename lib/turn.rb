def display_board (board)
  
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def valid_move? (board, index)
  
  if index.between?(0, 8) == TRUE && position_taken?(board, index) != TRUE
    TRUE
  else
    FALSE
  end
    
end

def position_taken? (board, index)
  
  if board[index] == " " || board[index] == "" || board[index] == nil
    FALSE
  else
    TRUE
  end
  
end

def move(board, index, value = "X")
  return update_array_at_with(board, index, value)
end

def update_array_at_with(array, index, value)
  array[index] = value
end

def turn (board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == FALSE
    turn (board)
  else
    move(board, index, "X")
    display_board(board)
  end

end