def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  valid = nil
  if (index.between?(0,8) && !position_taken?(board, index))
    valid = true
  else
    valid = false
  end
  valid
end

def position_taken?(board, index)
  taken = nil
    if (board[index] == " " || board[index] == "" || board[index] == nil)
      taken = false
    else
      taken = true
    end
    taken
end

def move(board, index, character = "X")
  board[index] = character
end

def input_to_index(input)
  index = (input.to_i) - 1
end

def turn(board)
  index = 0
  again = false
  while (!again)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    again = valid_move?(board, index)
  end

  move(board, index)
  display_board(board)
  
end
