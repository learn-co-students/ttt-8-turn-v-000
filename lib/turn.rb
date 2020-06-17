def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board,index) == false
    true
  else
    false
  end
end


def move(board, index, character="X")
  board[index] = character
  return board
end


def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end


def input_to_index(user_input)
  user_input.to_i - 1
end


def turn(board)
  #ask for input
  puts "Please enter 1-9:"
  #get input
  input = gets.strip
  #convert input to index
  index = input_to_index(input)
  #if index is valid
  if valid_move?(board, index)
    #make the move for index
    move(board, index, character="X")
    #show the board
    puts display_board(board)
  elsif
    #ask for input again until you get a valid input
    turn(board)
  end
end
