
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  board[index] != " " && board[index] != "" && board[index] != nil
end

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end

def input_to_index(input)
  input.to_i - 1
end


def move(board, input, token = "X")
  board[input] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if !valid_move?(board, index)
    turn(board)
  else
    move(board, index, token = "X")
    display_board(board)
  end
end

  # while index != valid_move?(board, index)
  #   puts "Please make a valid move"
  #   gets.strip
  #   input = gets.strip
  #   index = input_to_index(input)
  # end

  #
  # end
