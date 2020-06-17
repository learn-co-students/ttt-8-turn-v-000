def display_board(board)
	puts " #{board[0]} | #{board[1]} | #{board[2]} "
	puts "-----------"
	puts " #{board[3]} | #{board[4]} | #{board[5]} "
	puts "-----------"
	puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.to_i.between?(0,8)
    if !position_taken?(board, index)
      true
  end
end
end
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

def move(board, index, token="X")
  board[index] = token
end
def input_to_index(user_input)
  user_input.to_i-1
end
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  choice = input_to_index(user_input)
  if valid_move?(board, choice)
        move(board, choice, "X")
      else
        turn(board)
      end
    display_board(board)
end
