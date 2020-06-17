def display_board(board)
  horiz_line = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts horiz_line
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts horiz_line
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!
def move(board , location , player_character = "X")
  location = location.to_i
  board[location-1] = player_character
  return board
end

# position_taken method
def position_taken?( board , position )
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  else
    true
  end
end

# takes the User input position i.e. Chars from 1 to 9
def valid_move?( board, position )
  position_int = position.to_i
  position_ary = position_int - 1
  if !(position_taken?( board, position_ary )) && position_ary.between?( 0, 8 )
    true
  else
    false
  end
end

# turn method
def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp  #keep input as str because valid_move? casts to_i
  if valid_move?( board, input)
    move(board, input)  #will default to "X"
    #board = move(board, input)
  else
    turn(board)
  end
  display_board(board)
end
