def display_board(board)
  # lets say board has this value ["O", "O", " ", " ", "X", " ", "O", " ", "X"]
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index (user_input)
  user_input.to_i - 1
end

def valid_move?(board,index)
  if !position_taken?(board,index) && index.between?(0,8)
    true
 end
end

def position_taken?(board,index)
  board[index] == "X" || board[index] == "O"
end

def move(board,index,value="X")
  board[index]=value
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  until valid_move?(board,index)
    puts "Please enter 1-9:"
    user_input = gets.chomp
    index = input_to_index(user_input)
  end
  move(board,index)
  display_board(board)
end

# while counter < 20
# puts "The current number is less than 20."
# counter += 1
# end
