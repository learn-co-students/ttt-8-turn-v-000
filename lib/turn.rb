# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
  separator_row = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts separator_row
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts separator_row
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board,index)
  if (index.between?(0,8) && !position_taken?(board,index))
    true
  else
    false
  end
end

# code your #position_taken? method here!
def position_taken?(board,index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    false
  elsif (board[index] == "X" || board[index] == "O")
    true
  end
end

# code your input_to_index and move method here!
def input_to_index(input)
  input.to_i-1
end

def move(board,index,character="X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input.to_i)

  while !valid_move?(board,index)
    puts "Please enter 1-9:"
    input = gets.chomp
    index = input_to_index(input.to_i)
  end

  move(board,index)
  display_board(board)

end
