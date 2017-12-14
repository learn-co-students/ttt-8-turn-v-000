board = [" "," "," "," "," "," "," "," "," "]
def display_board(board)
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
end

board = ["X", "X", "X", "X", "O", "O", "X", "O", "O"]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

  def input_to_index(input)
    input.to_i-1
  end

  def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      false
    else board[index] == "X" || "O"
      true
    end
  end

  def valid_move?(board, index)
    if index.between?(0,8) && !position_taken?(board,index)
      return true
    else
      return false
    end
  end

  def move(board,index, char = "X")
    board[index] = char
    board
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input=gets.chomp
  index = input_to_index(user_input)
  if !valid_move?(board, index)
  turn(board)
  else
    move(board, index, char = "X")
    display_board(board)
  end
end
