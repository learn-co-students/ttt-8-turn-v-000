board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

  def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
 end

def input_to_index(input)
  index = input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  elsif board[index] == " " || board[index] == "" || board[index] == nil
    return false
end
end

 def valid_move?(board, index)
   if index.between?(0, 8) == true && position_taken?(board, index) == false
     return true
   elsif position_taken?(board, index) == false
     return false
   else
     return nil
   end
 end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index(input)
  if valid_move?(board, index) == true && position_taken?(board, index) == false
    move(board, index, token)
    display_board(board)
    turn(board)
  else
    turn(board)
  end
end
