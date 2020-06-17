
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index) == true
    move(board,index,character = "X")
    display_board(board)
  else
    puts "Please enter valid input"
    turn(board)
  end
end


def input_to_index(string)
  string.to_i - 1
end

def valid_move?(board,index)
  if position_taken?(board,index) == true
    1 == 2
  elsif index > 8
    1 ==2
  elsif index < 0
    1 == 2
  else
    1 == 1
  end
end

def position_taken?(board, index)
  if board[index] == " "
    board[index] != " "
  elsif board[index] == ""
    board[index] != ""
  elsif board[index] == nil
    board[index] != nil
  else
    board[index] == board[index]
  end
end

def move(board, index, character = "X")
  board[index] = character
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
