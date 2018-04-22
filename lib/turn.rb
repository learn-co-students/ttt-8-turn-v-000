def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index == 0 || index == 1 || index == 2 || index == 3 || index == 4 || index == 5 || index == 6 || index == 7 || index == 8 and position_taken?(board, index) == false
    true
  elsif index > 8 || position_taken?(board, index) == true
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)

  until valid_move?(board, index) == true
    puts "Please enter 1-9:"
    input = gets
    index = input_to_index(input)
  end

  move(board, index, character = "X")
  display_board(board)

end
