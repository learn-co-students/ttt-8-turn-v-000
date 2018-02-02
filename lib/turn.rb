def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  input = input_to_index(input)
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
    else
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

def input_to_index(num)
  return num.to_i-1
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board,index)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  board[0] == " "
  board[index] == "X"

end

def move(array, index, value="X")
  array[index] = value
end
