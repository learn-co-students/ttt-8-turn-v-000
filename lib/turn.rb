def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  converted_input = input_to_index(input)
  if valid_move?(board,converted_input)
    #make move
    move(board,converted_input)
    display_board(board)
  else
    #invalid move
    turn(board)
  end
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  converted_input = user_input.to_i - 1
end

def move(array,index,value = "X")
  array[index] = value
end

# code your #valid_move? method here
def valid_move?(board,index)
  index_new = index.to_i
  index_new.between?(0,8) && !position_taken?(board,index)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  index_new = index.to_i
  if board[index_new] == " "
    false
  elsif board[index_new] == ""
    false
  elsif board[index_new] == nil
    false
  elsif board[index_new] == "X" || board[index_new] == "O"
    true
  end
end
