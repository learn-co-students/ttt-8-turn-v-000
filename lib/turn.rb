board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, valor = "X")
  position = position.to_i - 1
  board[position] = valor
end

def valid_move?(board, location)
  if location.to_i.between?(1,9)
    if !position_taken?(board, location.to_i-1)
      true
    end
  end
end

def position_taken?(board, position)

  if board[position] == "X"
    true
  elsif board[position] == "O"
    true
  else board[position] == "" || " " || nil
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input) == true
    move(board, input, valor = "X")
    display_board(board)
  else
    until valid_move?(board, input) == true
    input = gets.strip
    end
    move(board, input, valor = "X")
    display_board(board)
  end
end