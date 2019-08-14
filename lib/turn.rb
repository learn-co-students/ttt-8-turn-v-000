def display_board(board)
   line1 = " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
   line2 = " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
   line3 = " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
   dashes = "-----------"

   puts line1
   puts dashes
   puts line2
   puts dashes
   puts line3

 end

def valid_move?(board, index)
    if index > -1 && index < 9 && position_taken?(board, index) == false
      true
    end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  elsif board[index] == " " || "" || nil
    false
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, token = "X")
  board[index.to_i] = token
end

def turn(board)
puts "Please enter 1-9:"
input = gets.strip
index = input_to_index(input)
if valid_move?(board, index) == true
  move(board, index, token = "X")
else
    turn(board)
end
display_board(board)
end
