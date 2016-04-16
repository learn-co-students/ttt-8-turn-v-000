def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  if board[position] == '' || board[position] == ' ' || board[position] == '  ' || board[position] == '   ' || board[position] == nil
    return false
  else
    return true
  end
end

def valid_move?(board, position)
  position = position.to_i - 1
  position_taken = position_taken?(board, position)

  if position_taken == false && position >= 0 && position <= 8
    return true
  else
    return false
  end
end

def move(board, position, token = 'X')
  board[position - 1] = token
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip.to_i

  if position >= 1 && position <= 9 && valid_move?(board, position.to_s)
    move(board, position)
    display_board(board)
  else
    until position >= 1 && position <= 9
      puts "Please enter 1-9:"
      position = gets.strip.to_i
    end
  end

end