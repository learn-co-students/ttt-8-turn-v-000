def display_board(rows = ["   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   "])
puts " #{rows[0]} | #{rows[1]} | #{rows[2]} "
puts "-----------"
puts " #{rows[3]} | #{rows[4]} | #{rows[5]} "
puts "-----------"
puts " #{rows[6]} | #{rows[7]} | #{rows[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1

end

def move(board, user_input, character = "X")
  board[user_input] = character


end


def valid_move?(board,index)
  !position_taken?(board,index) && index.between?(0, 8)
end

def position_taken?(board,index)
  board[index] == "X" || board[index] == "O"
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip

  index = input_to_index(user_input) # input_to_index("1") => 0
  if valid_move?(board,index)
    move(board, index)
    display_board(board)
  else
    # recursion
    turn(board)
  end
end
