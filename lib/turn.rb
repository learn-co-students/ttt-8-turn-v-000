#eCofresi


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#coverts input to an integer
def input_to_index(user_input)
  index = user_input.to_i
  index -= 1
  return index
end

#checks input is valid and not position_taken
def position_taken?(board, index)
    if board[index] == "X" || board[index] ==  "O"
      true
    elsif board[index] == " " || board[index] == "" || board[index] == nil
      false
    end
  end
  
def valid_move?(board, index)
  puts position_taken?(board, index)
  if index == nil || position_taken?(board, index) || not(index.between?(0,8))
        false
  else
        true
  end
end


#Assign board character
def move(board, index, character = "X")
  board[index] = character
  return board
end

#Ask for free valid free move repeatedly until one is  provided
def turn (board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end