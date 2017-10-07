
def valid_move?(board, index)
  if position_taken?(board, index)
    puts "The position must be vacant, not currently taken by a player."
  elsif !(index).between?(0, 8)
    puts "You must move to a position within the tic-tac-toe board."
  else false
    true
  end
end

def position_taken?(board, index)
  !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, value = "X")
  board[index] = value
end
def input_to_index(input)
  "#{input}".to_i - 1
end
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, value = "X")
  else
    turn(board)
  end
  display_board(board)
end
