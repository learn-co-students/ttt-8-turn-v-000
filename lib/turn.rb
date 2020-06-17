
#displays board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  input = input.to_i - 1
end

def move(board, input, player = "X")
  board[input] = player
end

#checks if position is taken
def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
     false
  elsif board[index] == "O" || board[index] == "X"
     true
   elsif board[index] == nil
     false
  end
end

# code your #valid_move? method here
def valid_move?(board, index)
  if position_taken?(board, index)
    false
  elsif index.between?(0, 8)
    true
  end
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
