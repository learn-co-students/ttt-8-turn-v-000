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

def valid_move?(board, index)
  if index.between?(1,9)
    if !position_taken?(board, index)
      true
    end
  end

  index.between?(0,8) && !position_taken?(board, index)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)  #converts input to an index
  if valid_move?(board, index)  #if index is valid
    move(board, index)     #make the move for index
    display_board(board)     #show the board
  else
    turn(board)   #ask for input again until a valid input is given
  end
end

def position_taken?(board, index)
  board[index] != " "
end

def move(board, index, current_player = "X")
  board[index] = current_player
end
