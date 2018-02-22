def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-------------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-------------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def input_to_index(idx)
  idx.to_i - 1
end

def valid_move?(board, idx)
  if (idx <= 8) && (idx >= 0) && (board[idx] == " " || board[idx] == "" || board[idx] == nil)
    true
  else
    false
  end
end

def move(board,idx,player = "X")

    board[idx] = player
  
end

def turn(board)
  puts "Please enter 1-9:"
  pos = gets.strip
  idx = input_to_index(pos)
  if valid_move?(board, idx)

    move(board, idx)
    display_board(board)
  else
    turn(board)
  end

end
