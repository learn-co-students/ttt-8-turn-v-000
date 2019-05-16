# displays the current state of the board
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, index)
    if index.between?(0, 8) && board[index] == " "
      true
    else position_taken?(board, index) == nil && board[index] == "X"
      false
    end
end

# displays your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  else board[index] = "X"
    true
  end
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, user_input, char = "X")
  board[user_input] = char
end

def turn(board)
  puts "Please enter 1-9:"
  i = gets.strip
  user_input = input_to_index(i)
  m = valid_move?(board, user_input)
  if m == true
    move(board, user_input, char = "X")
  else m == false
    puts "Sorry that was an invalid move. Please enter 1-9:"
    i = gets.strip
    user_input = input_to_index(i)
    m = valid_move?(board, user_input)
  end
  display_board(board)
end
