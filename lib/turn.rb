def display_board(board)
  puts  " #{board[0]} | #{board[1]} | #{board[2]} "
  puts  "-----------"
  puts  " #{board[3]} | #{board[4]} | #{board[5]} "
  puts  "-----------"
  puts  " #{board[6]} | #{board[7]} | #{board[8]} "

end

def input_to_index(input)
  new_input = input.to_i
  new_input - 1
end

def valid_move?(board, index)
  if index >= 0 && index <= 8 && board[index] != "O" && board[index] != "X"
    return true
  else
    return false
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  new_input = input_to_index(input)
  if valid_move?(board, new_input) == true
    move(board, new_input)
  else
    turn(board)
  end

  display_board(board)
end
