def turn

  puts "Please enter 1-9:"
  user_input = gets.strip

  while valid_move?(board,index) == true

    input_to_index(user_input)

    move(array, index, value = "X")

    display_board(board)
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
  if index.between?(0,8) == true && position_taken?(board, index) == false
  return true
else
  return false
    end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def input_to_index(user_input)
  index = user_input.to_i - 1
  return index
end

def move(array, index, value = "X")
array[index] = value
return array
end
