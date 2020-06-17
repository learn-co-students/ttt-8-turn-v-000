def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index > 8 || index < 0
    return false
  elsif position_taken?(board, index) == true
    return false
  else
    return true
  end
end

def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  else
    return true
  end
end

def input_to_index(x)
  index = x.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
    index = gets.strip
    x = input_to_index(index)
  if valid_move?(board, x) == true
    
    move(board, x, player = "X")
  elsif valid_move?(board, x) == false
   puts "Please enter 1-9:"
    index = gets.strip
    x = input_to_index(index)
  else
    puts "Please enter 1-9:"
  end
    
    #
end

def move(board, x, player = "X")
  board[x] = player
  display_board(board)
end
