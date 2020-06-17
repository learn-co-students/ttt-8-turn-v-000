def display_board(board)
  line = "-----------"
  puts " " + board[0] + " | " + board[1] + " | " + board[2] + " "
  puts line
  puts " " + board[3] + " | " + board[4] + " | " + board[5] + " "
  puts line
  puts " " + board[6] + " | " + board[7] + " | " + board[8] + " "
end

def input_to_index(input)
  index = input.to_i - 1
  return index
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def valid_move?(board, index)
  if index <= 8 && index >= 0 && position_taken?(board, index) == false
    true
  else
    false
  end
end

def move(board, index, char = "X")
  board[index] = char
  return board
end

def turn(board)
  puts "Welcome to Tic Tac Toe!"
  display_board(board)
  puts "Please enter 1-9:"
  valid = false
  until valid == true
    puts "Please enter 1-9"
    input = gets.strip
    index = input_to_index(input)
    valid = valid_move?(board, index)
  end
  board = move(board, index)
  display_board(board)
end
