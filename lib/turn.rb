def display_board(board)

puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def valid_move?(board, index)
if position_taken?(board, index) == false && (index).between?(0, 8) == true
   return true
   else false
 end
end

def position_taken?(board, index)
if board[index] == "X" || board[index] ==  "O"
true
elsif board[index] == " " || board[index] == "" || board[index] == nil
false
end
 end

 def input_to_index(user_input)# cod
 user_input = user_input.to_i

 return user_input.to_i - 1
 end


 def move( board, input_to_index, players_character = "X")
   board[input_to_index] = players_character
 end


def turn(board)
  puts "Please enter 1-9:"

input = gets.strip
input = input_to_index(input)
valid = valid_move?(board, input)
if valid == true
move(board, input, "X")
    display_board(board)
 else
  turn(board)
 end
end
