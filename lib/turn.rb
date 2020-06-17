
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



# code your input_to_index and move method here!

def input_to_index(string)
  string.to_i - 1
end

def move(board, index, user_marker = "X")
  board[index.to_i] = user_marker
end

def valid_move?(board, number_entered)
  number_entered.between?(0, 8) && !(position_taken?(board, number_entered))
end


def position_taken?(board, index)
 !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def turn(board)
puts "Please enter 1-9:"
user = gets.chomp
player = input_to_index(user)
 if valid_move?(board,player)
   move(board,player)
   display_board(board)
   else
turn(board)
end

end
  


