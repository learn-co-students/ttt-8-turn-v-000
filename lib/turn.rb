#display_board method
board = [ " " , " " , " " , " " , " " , " " , " " , " " , " " ]
def display_board(board)
 puts " #{board[0]} | #{board[1]} | #{board[2]} "
 puts "-----------"
 puts " #{board[3]} | #{board[4]} | #{board[5]} "
 puts "-----------"
 puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#display_board end

#valid_move method
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
      false
  elsif board[index] == "X" || board[index] == "O"
      true
  end
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
      true
 end
end
#end valid_move method

#position_taken
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
      false
  elsif board[index] == "X" || board[index] == "O"
      true
  end
end
#end position_taken method

#move method
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(user_input)
  user_input.to_i - 1
end

def move(array, index, value = "X")
  puts array[index] = value
end
#move method end

#turn method
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if !valid_move?(board, index)
    turn(board)
  else
    move(board, index, value = "X")
    end
  display_board(board)
end
