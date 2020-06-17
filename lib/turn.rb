def display_board(board)
  for i in 0..1 do
    display_row(board, i)
    display_divider
  end
  display_row(board, 2)
end

def display_row(board, row)
  start = row * 3
  puts " #{board[start]} | #{board[start + 1]} | #{board[start + 2]} "
end

def display_divider
  puts "-----------"
end

def input_to_index(input)
  input.to_i - 1
end

def position_taken?(board, index)
  board[index] != " " && board[index] != "" && !!board[index]
end

def valid_move?(board, index)
  index >= 0 && index <= 8 && !position_taken?(board, index)
end

def move(board, index, player = "X")
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)

  else
    puts "Invalid Input"
    turn(board)
  end
end
