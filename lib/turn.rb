def display_board(board)
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end

def position_taken?(board, index)
  if board[index]  == nil
    return false
  elsif board[index]  == " "
    return false
  elsif board[index] == ""
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    return true
  else
    return false
  end
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, user_input, value = "X")
  board[user_input] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)

  until valid_move?(board, index) == true
    puts "Please enter 1-9:"
    input = gets.chomp
    index = input_to_index(input)
  end
  move(board, index)
  display_board(board)
end


=begin
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
  else
    turn(board)
  end
  display_board(board)
end
=end
