def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    true
  elsif index.between?(0, 8) && position_taken?(board, index) == true
    false
  else index < 0 || index > 8
    false
  end
end

def input_to_index(number)
  number = number.to_i
  index = number - 1
  return index
end

def move(array, index, character = "X")
  array[index] = character
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
      true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  moveit_integer = gets.strip
  moveit = input_to_index(moveit_integer)
  if valid_move?(board, moveit)
    move(board, moveit, character="X")
  else
    until valid_move?(board, moveit) == true
      puts "Please enter 1-9:"
      moveit_integer = gets.strip
      moveit = input_to_index(moveit_integer)
    end
end
return display_board(board)
end
