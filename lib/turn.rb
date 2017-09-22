
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, number)
  if number.between?(0,8) && position_taken?(board,number) == false
    return true
  else
    return false
  end
end

def position_taken?(board,number)
  if board[number] == "" || board[number] == " " || board[number] == nil
    return false
  else
    return true
  end
end

def input_to_index(userInput)
  return userInput.to_i - 1
end

def move(board, index, value="X")
  board[index] = value
  return board
end

def turn(board)

  puts "Please enter 1-9:"
  input = gets.strip

  index = input_to_index(input)
  isValid = valid_move?(board,index)

  if isValid == true
    move(board, index)
  else
    "You have entered an invalid move"
    turn(board)
  end

  display_board(board)

end

# ask for input
# get input
# convert input to index
# if index is validation
#     make the move for index
#     show the board
# else
#   ask for input again until you get a valid input
# end
