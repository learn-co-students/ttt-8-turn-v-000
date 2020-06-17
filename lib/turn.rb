#Turn method with helper methods
def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.chomp)
    puts "#{index}"
  if valid_move?(board, index)
    move(board, index)
    puts display_board(board)
  else
    turn(board)
  end
end


def valid_move?(board, index)
  if index.to_i.between?(0,8) && !position_taken?(board, index.to_i) # for occupied position
    true
  else  # for empty position
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    false
  elsif board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
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
#move passed
def move(board, position, char="X")
  board[position] = char
end

#input_to_index passed
def input_to_index(user_input = "1" - "9")
  user_input.to_i - 1
end
