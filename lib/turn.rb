def turn(board, player = "X")
  move_is_valid = false
  until move_is_valid do
  puts "Please enter 1-9:"
  move = gets.strip
  index = input_to_index(move)
  move_is_valid = valid_move?(board,index)
    if !move_is_valid
      puts "Move invalid..."
    end
  end
  move(board, index,player)
  display_board(board)
  if player == "X"
    player = "O"
  elsif player == "O"
    player = "X"
  end
  turn(board,player)

end

def move(board, index, player = "X")
  board[index] = player
end

def valid_move?(board,index)
  if position_taken?(board,index) || index > board.length || index < 0
    return false
  else
    return true
  end
end

def input_to_index(num)
  num = num.to_i
  index = num - 1
end

def position_taken?(board,index)
  if board[index] == "O" || board[index] == "X"
    return true
  else
    return false
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
