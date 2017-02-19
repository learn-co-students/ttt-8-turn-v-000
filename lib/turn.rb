

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move (board, index, value = "X")
board[index] = value
end

# code your #valid_move? method here
def valid_move?(board, index)
    if index < 0 || index > 8
     false
   elsif position_taken?(board, index)
      false
   else
     true
   end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
# code your #position_taken? method here!
def position_taken?(board, index)

    if board[index] == " " || board[index] == ""
      false
    elsif board[index] == nil
      false
    elsif board[index] != " " || board[index] != ""
      true
    else
      nil

    end
end


# code your input_to_index and move method here!
def input_to_index(input = "1" - "9")
input.to_i - 1
end



def turn(board)
input = gets.chomp
index = input_to_index(input)
puts "Please enter 1-9:"
  if valid_move?(board,index) == true
    move(board, index, value = "X")
    display_board(board)
  else
    turn(board)
  end


end
