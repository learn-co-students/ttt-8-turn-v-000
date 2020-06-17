def display_board(board)
  separated = "|"
  separating = "-----------"
  puts " #{board[0]} #{separated} #{board[1]} #{separated} #{board[2]} "
  puts separating
  puts " #{board[3]} #{separated} #{board[4]} #{separated} #{board[5]} "
  puts separating
  puts " #{board[6]} #{separated} #{board[7]} #{separated} #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] === "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
      return true
  end
end

def input_to_index(input)
  return input.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
