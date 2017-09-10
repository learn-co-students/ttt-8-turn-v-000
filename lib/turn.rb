def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, index)
  if index >= 0 && index <= 8
    if !position_taken?(board, index)
      return true
    end
  else
    return false
  end
end

def position_taken? (board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

def input_to_index(string_input)
  int = string_input.to_i
  index = int - 1
  return index
end

def move(array, index, value)
  array[index] = value
end

def turn(board)
  game_not_over = true
  turn_count = 0
  value = "X"

#  while game_not_over
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)

    if valid_move?(board, index)
      move(board, index, value)

      turn_count += 1

      display_board(board)

      # check win condition
      if turn_count == 9
        game_not_over = false
      end

      if value == "X"
        value = "O"
      else
        value = "X"
      end

    else
      puts "invalid"
      turn(board)
    end
#  end
end
