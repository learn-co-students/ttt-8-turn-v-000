
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip.to_i
  index = input_to_index(input)


  if valid_move?(board, index)
    move(board, index, current_player = "X")
    display_board(board)

  else
    turn(board)
  end

end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
  if index.to_i.between?(0, 8) && board[index.to_i] == " "
    return true
  else
    return false
  end
end


def move(board, index, current_player = "X")
  board[index.to_i] = current_player
end


def input_to_index(input)
  input.to_i-1
end
