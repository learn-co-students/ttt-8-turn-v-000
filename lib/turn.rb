def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n"
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} \n"
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} \n"
end

def input_to_index(input)
  index = "#{input}".to_i - 1
  return index
end

def valid_move?(board, index)
  if index.between?(0, 8) == false
    return false
  elsif position_taken?(board, index) == true
    return false
  else
    return true
  end
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " "
    return false
  elsif board[index] == nil
    return false
  elsif board[index] =="X" || board[index] == "O"
    return true
  else
    return false
  end
end

def move(board, index, character="X")
   puts board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  while !valid_move?(board, index)
    puts "invalid"
    input = gets.strip
    index = input_to_index(input)
  end
  puts move(board, index, character="X")
  puts display_board(board)
end
