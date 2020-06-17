def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
   index.between?(0,8) && !position_taken(board, index)
end

def position_taken(board, index)
  if board[index] == ""
    false
  elsif board[index] == " "
    false
  elsif board == nil
    false
  elsif board == "X" || "O"
    true
  end
end

def move(board, input, token="X")
  board[input]= token
end

def turn(board)
 puts "Please enter 1-9:"
 input = gets.strip
 input = input_to_index(input)
 if valid_move?(board, input)
   move(board, input, "X")
   display_board(board)
 else
   turn(board)
 end
end
