def input_to_index(input)
  input = input.to_i
  input -= 1
end

# DISPLAY_BOARD
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# VALID_MOVE?
def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if index >= 0 && index <= 8
    if position_taken?(board, index) == true
      return false
    elsif board[index] && position_taken?(board, index) == false
      return true
    end
  end
end

# MOVE
def move(board, index, char = "X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index, "X")
  else
    turn(board)
  end

  display_board(board)

end
