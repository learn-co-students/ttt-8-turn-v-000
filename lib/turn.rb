def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  oxoro = "X"
  if valid_move?(board, index) == true
    move(board, index, oxoro)
  else
    until valid_move?(board, index) == true
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    end
    move(board, index, oxoro)

  end
display_board(board)
  end


def input_to_index(input)
input = input.to_i
input = input-1
end

def valid_move?(current, space)
if space.between?(0,8) && current[space] != "X" &&current[space] != "O"
  return true
else
  return false
end
end

def move (current, space, xoro)
  the_value = xoro
  current[space] = the_value
end
#  user_input = user_input.to_i
#  until user_input.between?(1,9)
#    puts "Please enter 1-9:"
#    user_input = gets.strip
#   user_input = user_input.to_i
#    if user_input == 0
#      user_input = -1
#    end
#    puts user_input
#  end
#  user_input = user_input.to_i
#  user_input = user_input-1
