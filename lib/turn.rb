# display board method   rspec --fail-fast
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# valid_move
def valid_move?(board, index)
  if (index.between?(0, 8) == true) && (position_taken?(board, index) == false)
    true
  else
    false
  end
      
end

def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  elsif board[index] == "X"
    true
  elsif board[index] == "O"
    true
  end
end

# move method should accept board, index, marker default X
def move(board, index, mark = "X")
  board[index] = mark
end

# turn method !!right now def move is indicating marker is "O" code will need to be change in future
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
# code above seems to work unti if statements involved
  until valid_move?(board, index) == true
        puts "That was not a valid entry. Please enter 1-9:"
        user_input = gets.strip
        index = input_to_index(user_input)
      end
  move(board, index)
  display_board(board)
  
end

def input_to_index(input)
    input.to_i - 1
end

