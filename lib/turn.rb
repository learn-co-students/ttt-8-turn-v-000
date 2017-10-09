def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def position_taken?(board, index)
  if (board[index] == " " || "" || nil) == true
  false
  else true
  end
end

def valid_move?(board, index)
  if index >= 0 && index <=8
    if position_taken?(board, index) == false
      true
    else false
    end
  else false
  end
end

def move(board, index, player = "X")
    board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    valid = true
  else valid = false
  end
  if valid == true
    move(board, index, "X")
  else turn(board)
  end
  display_board(board)
end
