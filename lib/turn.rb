# returns whether a valid move
def valid_move?(board, index)
  return true if (0..8) === index && !position_taken?(board, index)
  false
end

# returns whether position on board is taken
def position_taken?(board, index)
  space = board[index]
  if space == 'X' || space == 'O'
    return true
  else
    return false
  end
end

def move(board, index, token = 'X')
  board[index] = token
end

# displays the board
def display_board(board)
  [0, 3, 6].each do |i|
    puts " #{board[i]} | #{board[i + 1]} | #{board[i + 2]} "
    puts '-----------' if i != 6
  end
end

def turn(board)
  puts 'Please enter 1-9:'
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

def input_to_index(input)
  input.to_i - 1
end
