def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  "#{user_input}".to_i - 1
end

def valid_move?(board, variable_placement)
  variable_placement.between?(0, 8) && (board[variable_placement] == " " || board[variable_placement] == "")
end

def move(board, input_to_index, char = "X")
  board[input_to_index] = "#{char}"
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  variable_placement = input_to_index(user_input) 
  if valid_move?(board, variable_placement) 
    move(board, variable_placement) 
  else
    puts "Please place a valid input" 
    turn(board)
  end
  display_board(board)
end

#here you pass in user_input variable to give your argument placeholder data
#input_to_index is a method - perhaps add a variable to your input_to_index call and add that instead? so that it gets the correct data
#since char is already a default you don't have to add char = "X" since it automatically defaults to "X"
# so if you look at the first few lines of code of turn... How can we correctly start "turn(board)" over? (big hint)