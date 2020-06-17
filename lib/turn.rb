#This is the board that will be printed and updated each time its called
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#Checks to see whether the postion is valid
def valid_move?(board, position)
  if position.to_i.between?(1,9)
    if !position_taken?(board, position.to_i-1)
      true
    end
  end
end

#This may be added to a loop to continue asking the user for position
def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position) == true
    move(board, position, "X")
  else
    turn(board)
  end
end

#Updates the board with position after several validity checks
def move(board, position, char="X")
  board[(position.to_i) - 1] = char
  puts display_board(board)
end

#Checks to see if the entere position is not already taken
def position_taken?(board, location)
  board[location] != " "
end
