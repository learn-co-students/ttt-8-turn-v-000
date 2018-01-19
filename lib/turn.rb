
def turn(board)

  puts "Please enter 1-9:"
  number = gets.strip
  index = input_to_index(number)

  if valid_move?(board, index)
    true
  else
    turn(board)
  end

  move(board,index)
  display_board(board)

end

def display_board(board = [])

   puts " #{board[0]} " "|" " #{board[1]} " "|" " #{board[2]} "
   puts "-----------"
   puts " #{board[3]} " "|" " #{board[4]} " "|" " #{board[5]} "
   puts "-----------"
   puts " #{board[6]} " "|" " #{board[7]} " "|" " #{board[8]} "

end

def valid_move?(board, index)

  if  index > 8 || position_taken?(board, index) || index < 0
    false
  else
    true
  end
end

def position_taken?(board, index)

  if board[index] ==  " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  else
    nil
  end
end

def input_to_index(value)

    position = value.to_i
    position - 1

end

def move(array, index, character = "X")

    array[index] = character

end
