board=["O", "O", "O", "O", "O", "O", "O"]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  int=position.to_i
  int=int-1
  if ( int.between?(0,10) && !position_taken?(board, int) )
    true
    else
    false
  end
end

def position_taken?(board, position)
  if (board[position]==" "|| board[position]=="" || board[position]==nil)
    false
    else
    true
  end
end

def move(board, input, character="X")
  input=input.to_i
  truPosition=input-1
  board[truPosition]=character
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  if valid_move?(board, position)
    move(board, position)
    else
    turn(board)
  end
  display_board(board)
end