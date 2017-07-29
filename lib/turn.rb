
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

    if valid_move?(board, index)
      move(board, index)
      display_board(board)
    else
      puts "That is not a valid move"
      turn(board)
    end
end



def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  elsif 0 <= index && index <= 8
    return true
  end
end


def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end


def move(array, index, char="X")
  array[index] = char
end


def input_to_index(index)
  index = index.to_i - 1
end
