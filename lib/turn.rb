
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
  index = input_to_index(input)
  if valid_move?(board,index) == true
    move(board,index)
    display_board(board)
  else
    turn(board)
  end
end

def move(array, index, value = "X")
    array[index] = value
end

def input_to_index(input)
  index = input.to_i - 1
end

def position_taken?(array,int)
  if array[int] == " " || array[int] == "" || array[int] == nil
    return false
  else
    return true
  end
end

def valid_move?(array,int)
  if position_taken?(array,int)
    return false
  elsif int <9 && int >= 0
    return true
  else
    return false
  end
end
