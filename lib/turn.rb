def turn(board)
  puts "Please enter 1-9:"

  usr_input = gets.strip
  index = input_to_index(usr_input)
  if valid_move?(board,index) == true
        move(board,index,"X")
        display_board(board)

else
  usr_input = gets.strip
  index = input_to_index(usr_input)

      end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, value='X')

board[index] = value;


end

# code your input_to_index and move method here!
def input_to_index(usr_input)

usr_input.to_i - 1




end

def valid_move?(board, index)

if index.to_i > 8
   false
else

  if index.to_i < 0
    false
  else



  if position_taken?(board, index) == true
    false
  else
      if position_taken?(board, index) == false
    true
end
end
end
end



end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)

if board[index.to_i] == " "
  false
else
   if board[index.to_i] == ""
false

else
      if board[index.to_i].nil?

    false

else
  if board[index.to_i] == "X"
     true

   else
     if board[index.to_i] == "O"
        true

end
end

end
end
end

end
