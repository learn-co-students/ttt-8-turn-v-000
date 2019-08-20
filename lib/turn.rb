def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, char = "X")
  board[index] = char
end

def valid_move?(board, index)
  if position_taken?(board, index) || !index.between?(0, 8)
    return false
  else
    return true
  end
end

def position_taken?(board, index)
  if    board[index].nil? ||
        board[index] == " " ||
        board[index].length == 0
    return false
  elsif board[index] == "X" || "O"
    return true
  end
end

# def valid_char?(char)
#   if char == "X" || char == "O"
#     return true
#   else
#     return puts "Please enter 'X' or 'O'"
#   end
# end

def turn(board)
  # @enter_char = puts "Would you like to play as 'X' or 'O'?"

  @enter_input = puts "Please enter 1-9:"

  # @enter_char && char = gets.strip

  @enter_input

  input = gets.strip
  # valid_char = valid_char?(char)

  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index, char = "X") && display_board(board)
  else
    puts "This is not a valid move." && @enter_input
    return input = gets.strip
  end

end
