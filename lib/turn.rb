board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
index = 0


def turn(board)

    index = 0

    puts "Please enter 1-9:"
    user_input = gets.strip

    input_to_index(user_input)

    if valid_move?(board,index) == true

      move(board, index, value = "X")

      display_board(board)

      turn(board)

    elsif valid_move?(board,index) == false

      turn(board)

    end
  end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0,8) == true && position_taken?(board, index) == false
  return true
else
  return false
    end
end

def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

def input_to_index(user_input)
  index = user_input.to_i - 1
  return index
end

def move(board, index, value = "X")
board[index]= value
return board
end
