def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, idx)
  if position_taken?(board, idx) == false && idx.between?(0,8) == true
    true
  else
    false
  end
end

def position_taken?(board, idx)
  if board[idx] == " " || board[idx] == "" || board[idx] == nil
    false
  else
    true
  end
end

# code your input_to_index and move method here!
def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, player = "X")
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"

  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index) == false
    puts "That is not a valid move!"
    turn(board)
  else
    move(board, index, player = "X")
    display_board(board)
  end
end
