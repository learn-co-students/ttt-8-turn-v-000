def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if position_taken?(board,index) == false
    if index.between?(0,8)
    true
    end
  end
end


def position_taken?(board,index)
  if board[index] == " "
    false
  elsif board[index] == nil
    false
  elsif board[index] == ""
    false
  elsif board[index] == "X"
    true
  elsif board[index] == "O"
    true
  end
end

def input_to_index(user_input)
  user_input = user_input.to_i
  return user_input - 1

end

def move(board,position,character="X")
  board[position] = character
  return board
end


def turn(board)

  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)

  if position_taken?(board,index) == false
    if valid_move?(board,index) == true
      move(board,index,"X")
    else
      turn(board)
    end
  end
  display_board(board)
end
