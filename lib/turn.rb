
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index (position)
  position = position.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)

  if valid_move?(board,index) == true
    move(board, index, character = "X")
    display_board(board)
  else
    puts "Invalid Move!"
    turn(board)
end
end

def valid_move?(board, index)
  if index.between?(0,8) &&  !position_taken?(board, index)
    true
  end
end

def position_taken?(board, index)
    if board[index] == "X" || board[index] == "O"
      true
    elsif board[index] != " " || board[index] != "" || board[index] == nil
      false
    end
end

def move (board, input_to_index, character = "X")
 board[input_to_index] = character
end
