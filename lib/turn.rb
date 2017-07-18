# display board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# valid move 1-9
def valid_move?(board,index)
  if index.between?(0,8)
     if !position_taken?(board, index)
       true
     end
   end
end

# code your #position_taken? method here!
def position_taken?(board, index)
  #!(board[index] == " " || board[index] == "" || board[index] == nil)
  board[index] != " "
end

#def input_to_index()
def input_to_index(user_input)
  user_input.to_i - 1
end
# move
def move(board, index, player_1 = "X")
  board[index] = player_1
end
# defines a turn
def turn(board)
  puts "Please enter 1-9:"
  input_1 = gets.strip
  index = input_to_index(input_1)

  if valid_move?(board, index)
    move(board, index)
else
    turn(board)
  end
  display_board(board)
end
