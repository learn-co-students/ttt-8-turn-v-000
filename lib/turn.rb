def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board,index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  else
    return true
  end
end

def valid_move? (board, index)
  !position_taken?(board, index) && index.between?(0,8)
end


def move(array, index, a_value = "X")
  array[index] = a_value
end

def input_to_index(string)
  string.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if !valid_move?(board, index) # when writing a conditional statement, in most cases the eval is implicit.
      turn(board)
    else
      move(board, index, a_value = "X")
    end
    display_board(board)
  end
