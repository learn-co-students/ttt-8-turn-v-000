def display_board(array = [" "," "," "," "," "," "," "," "," "])

  line = "-----------"
  
  row_one = " #{array[0]} | #{array[1]} | #{array[2]} "
  row_two = " #{array[3]} | #{array[4]} | #{array[5]} "
  row_three = " #{array[6]} | #{array[7]} | #{array[8]} "
  
  puts row_one
  puts line
  puts row_two
  puts line
  puts row_three

end

def position_taken?(board, index)
  if board[index] == "O"
    return true
  elsif board[index] == "X"
    return true
  elsif board[index] != "X"
    return false
  elsif board[index] != "O"
    return false
  end
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    return true
  else
    return false
  end
end

def input_to_index(input)
  index = input.to_i - 1
  index
end

def move(board,index, token = "X")
  board[index] = token
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  choice = gets.chomp
  index = input_to_index(choice)
  if !valid_move?(board, index)
    turn(board)
  end
  move(board, index)
end