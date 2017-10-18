def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  valid = false

  if (board[position] == " " || board[position] == "") && position > -1 && position < 9
    return true
  end

  return valid
end

def input_to_index(input)
  input = input.to_i - 1
  return input
end

def move(array, index, value = "X")
  array[index] = value
  return array
end

def turn(board)
  puts "Please enter 1-9:"
  response = gets.strip
  response = input_to_index(response)
  valid = valid_move?(board,response)
  if valid
    board = move(board, response)
    display_board(board)
  else
    turn(board)
  end
end
