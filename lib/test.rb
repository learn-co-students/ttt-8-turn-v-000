def valid_move?(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "], index)
  if 0 > index || index > 8 || board[index] == "X" || board[index] == "O"
    false
  else
    true
  end
end

puts valid_move?(board = [" ", "X", " ", " ", " ", " ", " ", " ", " "], 0)
