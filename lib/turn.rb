def display_board(board)
	puts " #{board[0]} | #{board[1]} | #{board[2]} "
	puts "-----------"
	puts " #{board[3]} | #{board[4]} | #{board[5]} "
	puts "-----------"
	puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#prints board
def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
  return true
  else
  return false
  end
end
#evaluates whether valid, will return boolean/true if index given is a space on the board, and if space is not taken
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
  return true
  else
  return false
  end
end
#helper function for valid move
def input_to_index(string)
  return string.to_i - 1
end
#helper function for move
def move(board, index, player = "X")
  return board[index] = player
end
#move method takes the player argument passed through and defines the board index with x or o
def turn(board)
	puts "Please enter 1-9:"
  input = gets.strip
	index = input_to_index(input)
	if valid_move?(board, index) == true
    move(board, index, player = "X")
		puts display_board(board)
  else
		turn(board)
  end
end
