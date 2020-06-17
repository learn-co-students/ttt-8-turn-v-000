def display_board(current_board)
    puts " #{current_board[0]} | #{current_board[1]} | #{current_board[2]} "
    puts "-----------"
    puts " #{current_board[3]} | #{current_board[4]} | #{current_board[5]} "
    puts "-----------"
    puts " #{current_board[6]} | #{current_board[7]} | #{current_board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def valid_move?(current_board, index)
  if !position_taken?(current_board, index) && index.between?(0, 8)
    return true
  elsif position_taken?(current_board, index)
    return false
  elsif !index.between?(0, 8)
    return false
  end
end

def position_taken?(current_board, index)
  if (current_board[index] == "X" || current_board[index] == "O")
    return true
  elsif (current_board[index] != " " || current_board[index] != "" || current_board[index] != nil)
    return false
  end
end

def move(current_board, index, token = "X")
  current_board[index] = token
end

def turn(current_board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(current_board, index)
    move(current_board, index, token = "X")
    display_board(current_board)
  else
    turn(current_board)
  end
end
