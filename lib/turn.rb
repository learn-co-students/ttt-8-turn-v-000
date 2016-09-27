def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


# code your input_to_index and move method here!
def input_to_index(n)
   return n.to_i - 1
end

def move(board, index , ch="X")
  board[index] = ch
  display_board(board)
end


def valid_move?(board, index)
  if index.between?(0, 8) == true  && position_taken?(board, index) == false
      return true
  else
      return false
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if index == nil || index == "" || index == " " || board[index] == nil || board[index] == " " || board[index] == ""
    return false
  else
    return true
  end
end

def turn(board)
  valid = false
while valid == false
  puts "Please enter 1-9:"
  n = gets.strip
  index= input_to_index(n)
  if valid_move?(board,index) == true
     break
  else
      puts "Please enter valid move"
  end
end
move(board, index, ch="X")

end
