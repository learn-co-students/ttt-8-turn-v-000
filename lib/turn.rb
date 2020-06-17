def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "  
end

def valid_move?(board, position)
  if position.to_i.between?(1,9) && board[position.to_i-1] == " "
    true
  end
end

def move(board, position, player = "X")
  board[position.to_i-1] = player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input, "X")
    display_board(board)
  else
    turn(board)
  end
end