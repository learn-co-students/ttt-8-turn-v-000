#display_board
def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#valid_move?
def valid_move? (board, index)
  if index.between?(0,8)
    if position_taken?(board, index)
      false
    else
      true
    end
  else
    nil
  end
end

#position_taken
def position_taken? (board, index_number)
  if board[index_number] == " "
    false
  elsif board[index_number] == "" || board[index_number] == nil
    false
  else
    true
  end
end

#input to index
def input_to_index (user_input)
  user_input = user_input.to_i - 1
end

#move
def move (board, user_input, user_char = "X")
  board[user_input] = user_char
end

def turn (board)
  puts "Please enter 1-9:"
  user_choice = gets.strip
  index = input_to_index(user_choice)
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end
