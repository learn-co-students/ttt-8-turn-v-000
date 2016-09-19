
def valid_move?(board, int)
  if (int.between?(0,8)  == false)
    return false
  end

  if (int.between?(0,8)  == true) && (position_taken?(board, int) == true)
    return false
  end

  if (int.between?(0,8) == true) && (position_taken?(board, int) == false)
   return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if (board[index] == 'X') || (board[index] == 'O')
    return true
  end

  if (board[index] == "" || (board[index]) == " ") || (board[index] == nil)
    return false
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(position)
  index = position.to_i - 1
end

def move(board, index, xo = 'X' )
    board[index] = xo
    update_array_at_with(board, index, xo)
end

def update_array_at_with(array, index, value)
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  index = input_to_index(input)

  value = valid_move?(board, index)

  puts "#{value}"

  if (value == true)
    move(board, index, xo = 'X')
  else until (value == true)
    puts "Please enter 1-9"
    input = gets.strip

    index = input_to_index(input)
    value = valid_move?(board, index)
    move(board, index, xo = 'X')
    end
  end
  display_board(board)
end
