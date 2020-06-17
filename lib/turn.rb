def display_board(board = [" "," "," "," "," "," "," "," "," "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n"
  puts "-----------\n"
  puts " #{board[3]} | #{board[4]} | #{board[5]} \n"
  puts "-----------\n"
  puts " #{board[6]} | #{board[7]} | #{board[8]} \n"
end

def valid_move?(board, index)
  return true if index.between?(0,8) && position_taken?(board, index) == false
end

def position_taken?(board, index)
  return false if [" ", "", nil].include?(board[index])
  return true if ["X", "O"].include?(board[index])
end


def move (board, index, value = 'X')
    board[index] = value
end

def input_to_index(x)
   user_input = x.to_i - 1
 end

def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip
  index = input_to_index(number)


  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  
#    return move(board, number, value)
#  end

#  until valid_move?(board, number) == true
#    puts "invalid"
#    puts turn(board)
#  end
  end
end
