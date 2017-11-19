def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, player_input, character = "X")
  board[player_input] = character
end

def input_to_index(player_input)
  player_input.to_i - 1
end

def valid_move?(board, index)
  if (position_taken?(board, index) == false && index.between?(0, 8))
    true
  elsif (position_taken?(board, index) == true)
    false
  else
    false
  end
  #index.between?(0, 8) && !position_taken(board, index)
end

def position_taken?(board, index)
  taken = nil
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    taken = false
  else
    taken = true
  end
  taken
  board[index] != " "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  index = input_to_index(input)

  if (valid_move?(board, index) == true)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
