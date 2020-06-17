def turn(board)

 valid = 0
 while valid == 0
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board,position) == true
    valid = 1
    move(board,position)
    display_board(board)
  end
 end



end

def display_board(board)
 puts " #{board[0]} | #{board[1]} | #{board[2]} "
 puts "-----------"
 puts " #{board[3]} | #{board[4]} | #{board[5]} "
 puts "-----------"
 puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,position)
  pos = position.to_i
  if pos.between?(1,9) && !position_taken?(board,position.to_i - 1)
    true
  else
    false
  end
end

def position_taken?(board,position)#code your #position_taken? method here!
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  end
end

def move(board,position,char="X")
  pos1 = position.to_i - 1
  board[pos1] = char
  board
end


