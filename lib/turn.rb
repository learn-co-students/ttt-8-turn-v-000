def display_board(board)

#board = [" "," "," "," "," "," "," "," "," "]

puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(user_input)
  user_input.to_i - 1

end

def valid_move?(board, index)
  ok = 0..8
  if ok === index && board[index].include?(" ")
    true
  else
    false
  end
end

# def position-taken?(input)
#   board[input].include? "X" || "O"



def move(board, input, player = "X")
  board[input] = player
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  input = input_to_index(user_input)
  if valid_move?(board, input)
    move(board, input, player = "X")
  else
    puts "Try again"
    turn(board)
  end
  display_board(board)

end





# def position_taken?(position)
# if postition.empty?
#
#
#
# end
#
# def valid_move?
#
#   if
#
# end
