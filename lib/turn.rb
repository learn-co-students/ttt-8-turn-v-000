def valid_move?(board, position)
if !position_taken?(board, position.to_i-1) && position.to_i.between?(1, 9)
  true
  else
  false
end
  end

def position_taken?(board, position)
  if board[position] == "X" || board[position] == "O"
    true
    else
    false
      end
end

board = [ " ", " ", " ", " ", " ", " ", " ", " ", " " ]

def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts " ----------- "
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts " ----------- "
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, player = "X")
  if board[position.to_i-1] = player
    display_board(board)
    else
    move(board, position, player)
end
end


def turn(board)
  puts "Please enter 1-9:"
 input = gets.strip
 if valid_move?(board, input)
   move(board, input)
    else
   turn(board)
  end
  display_board(board)
  end




