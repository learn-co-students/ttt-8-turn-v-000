def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, index)
  if index >= 0 && index <= 8
    if !position_taken?(board, index)
      return true
    end
  else
    return false
  end
end

def position_taken? (board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

def input_to_index(string_input)
  int = string_input.to_i
  index = int - 1
  return index
end

def move(array, index, value)
  array[index] = value
end

def turn(board)
  value = "X" #needs fixing

  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)

  if valid_move?(board, index)
    move(board, index, value)

    display_board(board)

  else
    puts "invalid"
    turn(board)
  end
end
