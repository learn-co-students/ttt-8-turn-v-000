def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  def position_taken?(board,pos)
	if board[pos.to_i - 1] == " "
		return true
	else
		return false
	end
end
def valid_move?(board,pos)
	if pos.to_i.between?(1,9)
		position_taken?(board,pos)
	else
		return false
	end

end
def move(board, pos, char = "X")
	board[pos.to_i] = char
end
def turn(board)
  puts "Please enter 1-9:"
	input = gets.chomp
	if input.to_i.between?(1,9)
		valid_move?(board, input)
	else
		puts "Sorry. Please enter 1-9:"
		input = gets.chomp
	end
	move(board, input)
	display_board(board)
end
