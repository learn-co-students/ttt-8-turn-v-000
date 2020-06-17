def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,ui_position)
  index = ui_position.to_i - 1
  if (0..8).member?(index)
    !position_taken?(board,index)
  else
    false
  end
end

def position_taken?(board,index)
  board[index] == "O" || board[index] == "X"
end

def move(board,int_position,char="X")
  board[int_position - 1] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  while !valid_move?(board,input)
    puts "Invalid entry. Please re-enter 1-9:"
    input = gets.chomp
  end
  move(board,input.to_i)
  display_board(board)
end

