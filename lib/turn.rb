def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def valid_move?(board, index)
  if (0..8) === index
    board[index] == " " ? true : false
  else
    false
  end
end


def input_to_index(input)
  (input.to_i) -1
end

def turn(board)
  display_board(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index) == false
    turn(board)
  end
  move(board, index)
  display_board(board)
end




def move(board, index, token = "X")
  board[index] = token
end
