
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

def position_taken?(board, input)
  if board[input] == "  " || board[input] == " " || board[input] == ""
     false
  elsif board[input] == nil
     false
  elsif board[input] == "X" || board[input] == "O"
     true
  end
end

def valid_move?(board, input)
    if input.between?(0,8) && position_taken?(board, input) == false
      true
    else
      false
    end
end

def move(board, input, character = "X")
  board[input] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, character = "X")
    display_board(board)
  else
    turn(board)
  end

end
