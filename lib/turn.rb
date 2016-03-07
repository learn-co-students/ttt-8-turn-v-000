board = ["x","x","x","o","x","x","o","o","o"]

def display_board(board)
  puts  " #{board[0]} | #{board[1]} | #{board[2]} ",
        "-----------",
        " #{board[3]} | #{board[4]} | #{board[5]} ",
        "-----------",
        " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position_taken?(board, position.to_i-1) == false && position.to_i.between?(1, 9)
     true
  else
    false
  end
end

def position_taken?(board, position)
  if board[position.to_i] == "" || board[position.to_i] == " " || board[position.to_i] == nil
    false
  else
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

def move(board, location, player = "X")
   board[location.to_i-1] = player
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if !!valid_move?(board, position)
       move(board, position)
       display_board(board)
  else turn(board)
  end
end

