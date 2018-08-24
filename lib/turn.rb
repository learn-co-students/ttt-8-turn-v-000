def turn(board)
  puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    if valid_move?(board, index) == true
      move(board, index, character='X')
      display_board(board)
    else turn(board)
  end
end
  

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  else board[index] 
    false
  end  
end

def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0, 8)
end


def move(board, converted_input, character='X')
  board[converted_input] = character
end

def input_to_index(user_input)
 converted_input = user_input.to_i - 1
end