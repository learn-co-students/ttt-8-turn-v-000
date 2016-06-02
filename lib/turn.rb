def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  space_number = input.to_i - 1
end

def move(board, position, character = "X")
  board[position] = character
end

def valid_move?(board, input)
  if input.between?(0, 8) && !position_taken?(board, input)
    true
  else
    false
  end
end


def position_taken?(board, input)
  if board[input] == " " || board[input] == "" || board[input] == nil
    false
  else
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  position = input_to_index(gets.strip)
  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  else
    "invalid"
    turn(board)
  end
end
