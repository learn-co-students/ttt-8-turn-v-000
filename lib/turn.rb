def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i - 1
  return user_input
end

def move(board_array, index, character = "X")
board_array[index] = character
end

def valid_move?(board, index)
  if index.between?(0, 8)
    if board[index] == " "
      return true
    elsif position_taken?(board, index)
      return false
    elsif board[index] == "X"
      return true
    elsif board[index] == "O"
      return true
    else
      return false
    end
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  else
    return nil
  end
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
  if valid_move?(board, index) != true
    turn(board)
  else
    move(board, index, character = "X")
    display_board(board)
  end
end
