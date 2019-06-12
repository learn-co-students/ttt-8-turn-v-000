def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(number)
   number.to_i - 1
end

def valid_move?(board, index)
  if index >= 0 && index <= 8
    if board[index] == "X"
      false
    elsif board[index] == "O"
      false
    elsif board[index] == " " || board[index] == ""
      true
    end
  else
    false
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  number = gets
  number = input_to_index number.chomp
  if valid_move? board, number
    move board, number
    display_board board
  else
    turn board

  end
end
