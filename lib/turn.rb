def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
 board = []
 index = 0
 puts board[index]
end

def input_to_index (user_input = ["1", "2", "3", "4", "5", "6", "7", "8", "9"])
  index = user_input.to_i-1
  index
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  player = "X"

  if valid_move?(board,index)
    puts "valid move"
    move(board, index, player)
    display_board(board)
   else
    puts "try again"
    turn(board)
  end
end

board = [" ", " ", " "]
def move(board, index, player = "X")
  board[index] = player
end
move(board, 0, "X")

def valid_move?(board, index)
 index.between?(0, 8) && !(position_taken?(board, index))
end

def position_taken?(board, index)
 !(board[index] == " " || board[index] == "" || board[index] == nil)
end
