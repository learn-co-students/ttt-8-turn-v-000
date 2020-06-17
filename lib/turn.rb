def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index( user_input )
  user_input = user_input.to_i
  user_input -= 1
end

def position_taken?( board, index )
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def valid_move?( board, index )
  if position_taken?( board, index ) == true || !index.between?(0,9)
    return false
  else
    return true
  end
end

def move ( board, index, character = "X" )
  board[index] = character
end

def turn( board )
  puts "Please enter 1-9:"
  user_input = gets.chomp
  user_input = input_to_index( user_input )
  if valid_move?( board, user_input ) == true
    puts "Valid move was made"
    move( board, user_input, character = "X" )
    display_board( board )
  else
    while valid_move?( board, user_input ) == false
      puts "Please enter a valid move: "
      user_input = gets.chomp
      user_input = input_to_index( user_input )
    end
    if valid_move?( board, user_input ) == true
      puts "Valid move was made"
      move( board, user_input, character = "X" )
      display_board( board )
    end
  end
end
