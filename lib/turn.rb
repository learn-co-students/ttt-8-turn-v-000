def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def welcome
  puts "Welcome to Tic Tac Toe!"
end

def your_move
  puts "Where would you like to go?"
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
end

def valid_move?(board, index)
  def between(index)
    if index >= 0 && index <= 8
      true
    else 
      false
    end
  end
  if position_taken?(board, index) == false && between(index) == true
    true
  elsif position_taken?(board, index) == true
    false
  elsif between(index) == false
    false
  end
end

def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  elsif board[index] == "X" || "O"
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  
  while valid_move?(board, index) == false
    puts "Can't move here"
    puts "Where else would you like to move?"
    input = gets.strip
    index = input_to_index(input)
  end
  move(board, index, value = "X")
  display_board(board)
end