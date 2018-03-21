
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} \n"
    puts "-----------\n"
   puts " #{board[3]} | #{board[4]} | #{board[5]} \n"
    puts "-----------\n"
    puts " #{board[6]} | #{board[7]} | #{board[8]} \n"
end

# code your #valid_move? method here
def valid_move?(board,index)
  if position_taken?(board,index) == FALSE && index.between?(0, 8) == TRUE
    TRUE
  else
    FALSE
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  if board[index] == "X" || board[index] == "O"
    TRUE
  else
    FALSE
  end
end

#input to index 
def input_to_index(input)
  index = "#{input}".to_i - 1
end

#move
def move(board, index, char="X")
  board[index] = char
end

#turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  #input_to_index(input)
  #valid_move?(board,index)
  if valid_move?(board,index) == TRUE
    move(board, index, char="X")
    puts display_board(board)
  else
    puts "Your entry is not valid"
    puts turn(board)
  end
end

=begin input = gets.strip
  index = input_to_index(input)
  input_to_index(input)
  valid_move?(board,index)
    if valid_move? == TRUE
     puts move(board, index, char)
     puts display_board(board)
  else
    puts "Your entry is not valid"
    puts turn(board)
end
=end