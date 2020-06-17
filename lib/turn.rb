def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  # Is the position taken?
  pos_taken = position_taken?(board, index)
  # Is the position on the board?
  on_board = index.between?(0, board.length - 1)
  # If position is open and on the board, return true,
  if !pos_taken && on_board
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  pos = board[index]
  if pos == " " || pos == "" || pos.nil?
    return false
  elsif pos == "X" || pos == "O"
    return true
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  #asks for input
  puts "Please enter 1-9:"
  #gets input
  user_input = gets.strip
  #convert input to index
  index = input_to_index(user_input)
  #if index is valid
  if valid_move?(board, index) == true
    # make the move for input
    move(board, index, token = "X")
    display_board(board)
  else
    #ask for input again until you get a valid input
    puts "#{index + 1} is not a valid position, try again."
    turn(board)
  end
end
