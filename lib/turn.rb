board = ["   ", "   ", "   ", "   " , "  " , "   " , "   ", "   ", "   "]
def display_board(board)
  divider = "-----------"
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts divider
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts divider
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken? (board, index)
    if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
      return false
    else
      return true
    end
end# code your #valid_move? method here

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board,index)
  if (index.between?(0, 8)) && (position_taken?(board,index) == false)
      return true
    else
      return false
    end 
end

def move(board, index, value = "X")
board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
    user_input = gets.strip
  if valid_move?(board,index = input_to_index(user_input))
    move(board,index,value = "X")
  else
    turn(board)
  end
  display_board(board)
end

