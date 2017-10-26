def turn (board)
  puts "Please enter 1-9:"
  num = gets.strip
  index = input_to_index(num)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
        turn(board)
  
 end
end







#board & display_board
board = [" "," "," "," "," "," "," "," "," "]
def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


#valid_move
def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
  true
else
  false
  end
end


# move method
def move(board, index, char = "X")
  board[index] = char
end

#input_to_index
def input_to_index(number)
  number.to_i - 1

end

#position taken
def position_taken?(board, index)
  index.to_i - 1
  if board[index] == "X"
    true
  elsif board[index] == "O"
    true
  elsif board[index] == " " or ""
    false
  end
end
