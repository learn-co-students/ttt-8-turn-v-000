def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)

  if index.between?(0, 8) && !(position_taken?(board, index))
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def input_to_index(choice)
  return choice = choice.to_i - 1
end

def move(board, position, char = "X")
  return board[position] = char
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip

  index = input_to_index(user_input)

  validation = valid_move?(board, index)

  if validation == true
     move(board, index)
     display_board(board)
  end

  while validation == false
    turn(board)
    validation = true
  end
end
