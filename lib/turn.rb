def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board,index)
    if position_taken?(board,index) != true && index.between?(0,8)
      true
    else
       false
        #execute something else
    end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
if board[index] == " " || board[index] == ""
   false
elsif board[index] == nil
  false
else
  true
end
end

def input_to_index(input)
  #convert string to integer
 input.to_i - 1
end

def move (board,index,input_value = "X")
  board[index] = input_value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board,index,input_value = "X")
    display_board(board)
  else
    turn(board)
  end
end
