def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n
        ----------- \n
         #{board[3]} | #{board[4]} | #{board[5]} \n
         ----------- \n
         #{board[6]} | #{board[7]} | #{board[8]} "
       end

def position_taken?(board, position)
  if (board[(position.to_i - 1)] == "X") || (board[(position.to_i - 1)] == "O")
    return true
  else
    return false
  end
end

def valid_move?(board, position)
  if ((position_taken?(board, position) == true) || ((position.to_i > 9) || (position.to_i < 1)))
    return false
  else
    return true
  end
end

def move(board, position, char = "X")
  if valid_move?(board, position) == true
    board[position.to_i - 1] = char
  else
    puts "invalid"
    position = gets.strip
    move(board, position)
  end
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  move(board, position)
  display_board(board)
end