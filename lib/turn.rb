
def input_to_index(user_input)
  user_input.to_i - 1
end
def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  else nil
  end
end
def position_taken?(board, index)
    if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  else board[index] == "X" || "O"
    return true
    end
  end
def move (board, index, player = "X")
  board[index] = player
end
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if input.between?(0, 8) && valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
end
