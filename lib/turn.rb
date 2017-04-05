def display_board(board)

    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def valid_move?(board, index)
  if !position_taken?(board, index) && (index >= 0 && index < 9)
    true
  else
    false
  end
end


def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def input_to_index (x)
  x = x.to_i - 1
end

def move(board, index, char = "X")
  board[index] = char
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(board, input)
      move(board, input)
      display_board(board)
  else
    turn(board)
  end
end
