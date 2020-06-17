def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
  return display_board(board)
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == nil || board[index] == ""
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) == false
    if index >= 0 && index <= 8
      return true
    else
      return false
    end
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index, "X")
  else
    puts "Try again. Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    move(board, index)
  end
end
