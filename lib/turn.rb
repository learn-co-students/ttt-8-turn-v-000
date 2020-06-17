def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (array, index)
  index.between?(0,8) && !(position_taken?(array, index))
end

def position_taken? (board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def input_to_index(choice)
  choice = choice.to_i - 1
end

def move(array, choice, character = "X")
  array[choice] = character
end


  
def turn(board)
  puts "Please enter 1-9:"
  choice = gets.strip
  index = input_to_index(choice)
  
  if valid_move?(board, index)
  move(board, index, character = "X")
  display_board(board)
else
  turn(board)
  end
end
