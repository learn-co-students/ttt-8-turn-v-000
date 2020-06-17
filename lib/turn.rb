def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, x)
  if x < 0 || x > 8 
    return false
  end
  if board[x] == " "
    return true
 elsif board[x] == ""
    return true
  elsif board[x] == "X" || board[x] == "O"
    return false
  end
end

def input_to_index(i)
  i = i.to_i
  i = i - 1
end

def move(board, j, character = "X")
  board[j] = "#{character}"
end

def turn(board)
  puts "Please enter 1-9:"
  q = gets.strip
  r = input_to_index(q)
  s = valid_move?(board,r)
  if s == true
    board[r] = "X"
    display_board(board)
  else
    turn(board)
  end
end