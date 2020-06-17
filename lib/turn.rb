def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  #if the position is not taken then it's valid & the move must be between 0 and 8.
  if !position_taken?(board, index) && index.between?(0,8) == true
  true
  end  
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
#if position is filled with X or O the position is taken.
def position_taken?(board, position)
  if board[position] == "X" || board[position] == "O"
    true
    else
    false
    end
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  #gets the user input
  user_input = gets.strip
  #input to index
  index = input_to_index(user_input)
  
  #Validation Check
  if valid_move?(board,index)
    puts 'valid move'
    move(board, index)
    display_board(board)
   else
    puts 'try again'
    turn(board)
  end
  display_board(board)
end






