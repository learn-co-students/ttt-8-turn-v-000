def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i
  user_input = user_input - 1
  index = user_input
  return index
end

def valid_move?(board, index)
  if (index >= 0 && index <= 8) && (board[index] == ' ' || board[index] == '')
    return true
  else
    return false
  end
end

def move(board, index, token = "X")
  board[index] = token
  return board
end

def turn(board)
  puts "Please enter 1-9:"

  user_index = input_to_index(gets.strip)

  if valid_move?(board, user_index)
    move(board, user_index)
    display_board(board)
  else
    puts "Please enter 1-9:"
    input = gets.strip
  end

end
