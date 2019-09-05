def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false

  elsif board[index] == "X" || board[index] == "O"
    true

end
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
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



def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i - 1
end

board = [" ", " ", " "]
def move(array, board, user_input="X")
  array[board] = user_input
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  valid_move?(board, index)
    if !position_taken?(board, index) && index.between?(0,8)
      true
    else
      false
      input = gets.strip
      index = input_to_index(input)
    end
    move(board, index, user_input="X")
    display_board(board)
end
