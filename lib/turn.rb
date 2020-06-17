
def display_board(board)
puts " " + board[0] + " | " + board[1] + " | " + board[2] + " "
puts "-----------"
puts " " + board[3] + " | " + board[4] + " | " + board[5] + " "
puts "-----------"
puts " " + board[6] + " | " + board[7] + " | " + board[8] + " "
end

def valid_move?(board,ind)
  if ind.between?(0,8)
    if board[ind] != "X" && board[ind] != "O"
      return true
    end
  end
end

def move(board,ind,toke = "X")
  board[ind] = toke
end

def input_to_index(ind)
ind = ind.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  ind = gets
  ind = input_to_index(ind)
  if valid_move?(board,ind)
    move(board,ind)
    display_board(board)
  else
    puts "Invalid"
    ind = gets
  end
end
