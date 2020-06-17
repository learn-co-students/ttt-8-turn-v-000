def display_board(board)
	puts " #{board[0]} | #{board[1]} | #{board[2]} "
	puts "-----------"
	puts " #{board[3]} | #{board[4]} | #{board[5]} "
	puts "-----------"
	puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
	(position.to_i-1).between?(0, 8) && !(position_taken?(board, position))
end

def position_taken?(board, position)
	if board[position.to_i-1] == "X"
		true
	elsif board[position.to_i-1] == "O"
		true
	elsif board[position.to_i-1] == " " || "" || nil
		false
	end
end

def move(board, position, value = "X")
	board[position.to_i-1] = value
end

def turn(board)
	puts "Please enter 1-9:"
	input = gets.strip
	if valid_move?(board, input)
		move(board, input, "X")
	else turn(board)
	end
	display_board(board)
end