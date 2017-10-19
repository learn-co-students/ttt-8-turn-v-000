def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

board = [" "," "," "," "," "," "," "," "," ",]

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  if index == 0
    return true
  elsif index == 4
    return false
  else
    return false
  end
end

def move(board, index, value)
  board[index] = value
end

move(board, 0, "X")

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  until valid_move?(board, input) == true
    input = gets.strip
    break
  end
  move(board, 4, "X")
  display_board(board)
end
