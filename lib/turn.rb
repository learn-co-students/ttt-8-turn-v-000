
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
  index = input.to_i - 1
  if board[index] == "  " || board[index] == " " || board[index] == ""
     false
  elsif board[index] == nil
     false
  elsif board[index] == "X" || board[index] == "O"
     true
  end
end

def valid_move?(board, input)
  index = input.to_i - 1
    if index.between?(0,8) && position_taken?(board, input) == false
      true
    else
      false
    end
end

def move(board, input, character = "X")
  index = input.to_i - 1
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  valid_move?(board, input)

end
