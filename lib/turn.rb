def turn(board)
  go = false
  until go == true
    puts "Please enter 1-9:"
    spot = gets.strip
    go = valid_move?(board, spot)
  end
move(board, spot, "X")
display_board(board)
end

def move(board,spot,char = "X")
  spot = spot.to_i
  board[spot-1] = char
  return board
end


# code your #valid_move? method here
def valid_move?(board, pos)
  if (position_taken?(board, pos.to_i-1) == false && pos.to_i.between?(1,9) == true)
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(a, b)
  if a[b] == "X" || a[b] == "O"
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