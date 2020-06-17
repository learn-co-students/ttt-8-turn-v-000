
# accept a board as an argument and print out the current state of the board for the user
  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts '-----------'
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts '-----------'
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
  board = [" ", " ", " ", " ", " ", " ", " ", " ", " ", " " ]
#convert iput to index
  def input_to_index(user_input)
  user_input = user_input.to_i - 1
  end
  def move(board, index, value = "X")
  board[index] = value
  end
#if the index is valid make the move for the index
  def valid_move?(board,index)
  # if the index is between 0 and 8 and if the position is not taken
  # if index.between?(0,8) && !position_taken?(board, index)
  #  true
  #else
  # false
  #end
  if index.between?(0,8) && !position_taken?(board, index)
    true
  end
  end
  def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    if valid_move?(board, input)
      move(board, input)
    else
      turn(board)
    end
    display_board(board)
  end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
  def position_taken?(board,index)

  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end
