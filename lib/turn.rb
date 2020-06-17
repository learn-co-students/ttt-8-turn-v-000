def turn(board)
  # Ask one player to make a move
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index, token = "X")
    display_board(board)
  else
    while valid_move?(board, index) == false
      puts "That is not a valid move!"
      puts "Please enter 1-9:"
      input = gets.chomp
      index = input_to_index(input)
    end
  end
end

def input_to_index(input)
  if input.to_i.is_a? Integer
    index = input.to_i - 1
  else
    return -1
  end
end

# helper method for #turn to determin if the move is valid
def valid_move?(board, index)
  if index.between?(0, 8) && (position_taken?(board,index) == false)
    return true
  else
    return false
  end
end

# helper method for #valid_move?(board, index)
def position_taken?(board, index)
  if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
    return false
  else
    return true
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def display_board(board)
  puts " " + board[0] + " | " + board[1] + " | " + board[2] + " "
  puts "-----------"
  puts " " + board[3] + " | " + board[4] + " | " + board[5] + " "
  puts "-----------"
  puts " " + board[6] + " | " + board[7] + " | " + board[8] + " "
end
