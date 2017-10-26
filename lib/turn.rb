#code display board here
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# cod emove method here
def move(board, position, char = "X" )
  board[position] = char
end

def input_to_index(user_input)
  user_input.to_i - 1
end


# code your #valid_move? method here
false
def valid_move?(board, index)
  if position_taken?(board, index) == true
  elsif position_taken?(board, index)  == false && index.between?(0,8)
    true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
end
end

#code turn method here
def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip
  index = input_to_index(number)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
