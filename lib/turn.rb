def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  query = input_to_index(user_input)
  if valid_move?(board,query)
    move(board,query,value = "X")
    display_board(board)
  else
    turn(board)
  end
end




def position_taken?(board,index)
  val1 = board[index]
  if val1 == " " || val1 == "" || val1 == nil
    false
  else
    true
  end
end

def valid_move?(board,index)
  if position_taken?(board,index) == false && index.between?(0,8)
    true
  else
    false
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index(user_input)
(user_input.to_i) - 1
end

def move(board, index, value = "X")
  board[index] = value
end
