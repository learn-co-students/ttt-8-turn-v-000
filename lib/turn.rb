def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# code your input_to_index and move method here!
def input_to_index(user_input)
   user_input.to_i - 1
end

def move(board,index, value = "X")
  update_array_at_with(board, index, value)
end
def update_array_at_with(array, index, value)
  array[index] = value
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  else board[index] == "X" || board [index] == "O"
    true
  end
end
# code your #valid_move? method here
def valid_move?(board, index)
if index.between?(0,8) && !position_taken?(board, index)
  true
else
  false
end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  else board[index] == "X" || board [index] == "O"
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.chomp
  number = input_to_index(index)
  # valid_move?(board,0)
if !valid_move?(board,number)
  puts "Please enter 1-9:"
  index = gets.chomp
end
move(board,number)
display_board(board)

end
