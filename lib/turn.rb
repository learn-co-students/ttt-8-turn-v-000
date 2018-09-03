def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if index <= 8 && index >= 0
    if (position_taken?(board,index) == false)
      return true
    end
  else
    return false
  end

end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  # index = number -1
  if board[index] == "X" || board[index] == "O"
    return true
  elsif board[index] == " " || board[index] == ""
    return false
  elsif board[index] == nil
    return false
  else
    return true
  end
end

def input_to_index(str)
  number = str.to_i
  number = number - 1
  return number
end
def move(board,index, token = 'X')
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index) == true
    move(board,index,token = 'X')
    display_board(board)
  else
    turn(board)
  end
end
