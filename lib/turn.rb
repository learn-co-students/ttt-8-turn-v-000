require 'pry'

def display_board(board)
  line = "-----------"
  puts row(0, 1, 2, board)
  puts line
  puts row(3, 4, 5, board)
  puts line
  puts row(6, 7, 8, board)
end
def row(pos1, pos2, pos3, board)
  " #{board[pos1]} | #{board[pos2]} | #{board[pos3]} "
end
def input_to_index(input)
  input.to_i - 1
end
def move(board, input, value = "X")
  board[input] = value
end
def valid_move?(board, index)
    if index.between?(0,8) && !position_taken?(board, index)
      true
    end
end
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else board[index] == "X" || board[index] == "O"
    true
  end
end
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index  = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

#def go_x_levels_deep(x)
#  puts "I was called with #{x}"
#  if (x==0)
    # binding.pry
#    return "done"
#  else
#    return go_x_levels_deep(x-1)
#  end
#end
