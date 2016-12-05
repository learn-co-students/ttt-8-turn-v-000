# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(num)
  index = num.to_i - 1
end

def move(board, num, character = "X")
  board[num] = character
end

# code your #position_taken? method here!
def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
     false
  elsif (board[index] == "X" || board[index] == "O")
     true
  end
end

# code your #valid_move? method here
def valid_move?(board, index)
  if index.between?(0,8) == true && position_taken?(board, index) == false
    true
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.to_i 
  index = input_to_index(input)
  while !valid_move?(board, index)
    puts "Please enter another move:"
    input = gets.to_i
  end
  move(board,index)
end