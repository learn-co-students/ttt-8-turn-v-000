def display_board(board)
	puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
	puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
	puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i - 1
end

def valid_move?(board, index)
  if index < 0 || index == nil
		false
	elsif position_taken?(board, index) != true
		true
	end
end

def position_taken?(board, index)
  if board[index] == "X"
		true
  elsif board[index] == "0"
			true
	end
end

def move(board, index, token='X')
  board[index] = token
end

def turn(board)
	puts "Please enter 1-9:"
	user_input = gets.chomp.strip
	index = input_to_index(user_input)
	valid = valid_move?(board,index)
	if !valid
		puts "invalid"
		user_input = gets.chomp.strip
	else
    board[index] = "X"
	end
	display_board(board)
end
