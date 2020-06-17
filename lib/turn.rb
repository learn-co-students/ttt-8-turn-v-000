#display_board
#argument -> array
#output -> prints board

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
end


def position_taken?(board, move)
  if board[move] == "" || board[move] == " " || board[move] == nil
    return false
  elsif board[move] == "X" || board[move] == "O"
    return true
  end
end

def valid_move?(board, move)
  if position_taken?(board, move)
    puts "There's already something there. Please choose a free space."
    return false
  elsif move >= 0 && move <= (board.length-1)
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    puts "That's not a valid move. Please try again."
    input = gets.strip
    index = input_to_index(input)
  end
end
