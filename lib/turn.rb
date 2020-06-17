def input_to_index(x)
  x.to_i - 1
end


def valid_move?(board, index)
  if index>9 || index<0
    false
  elsif position_taken?(board,index)==false
    false
  elsif position_taken?(board,index)==true
    true
  end
end


def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    true
  elsif board[index] == "X" || board[index] == "O"
    false
  end
end


def move(array,index,value="X")
  array[index] = value
end


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

  if valid_move?(board, index) == true
    move(board,index,value="X")
    display_board(board)
  elsif valid_move?(board, index) == false
    turn(board)
  end
end
