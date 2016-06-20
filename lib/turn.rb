# display_board
def display_board(board)

puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#valid_move
def valid_move?(board,taken)
  !(position_taken?(board,taken)) && taken.between?(0,8)
end

def position_taken?(board,taken)
  if board[taken] == nil || board[taken] == " " || board[taken] == ''
    false
  else
    true
  end
end

#move
# code your input_to_index and move method here!
def input_to_index(user_input)
user_input.to_i - 1
end

def move(array, index, value="X")
  array[index] = value
end

board = ["", "", "" , "", "", "", "", "", ""]
def update_array_at_with(array, index, value)
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  taken = input_to_index(user_input)
  if valid_move?(board,taken) == true
      move(array, index, value="X")
      array[index] = value


    else
      puts "Invalid move"
      turn(board)
      user_input = gets
      end
    end
    
