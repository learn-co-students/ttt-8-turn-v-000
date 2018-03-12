def display_board(board)


    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def input_to_index(input)#problem here
  user_input=input.to_i
  user_input=- 1
  return user_input
end

def move(board, index, input="X")

board[index]=input_to_index(input)
end

def position_taken? (board, index)
board[index]=input_to_index(input)
    if board[index]==" "
      return true
    elsif board[index]=="X"&&board[index]=="O"
      return false
    elsif board[index]<0||board[index]>8
      return false
    elsif board[index]>=0&&board[inde]
    end
  end

def valid_move?(board,index)

if position_taken?(board, index)=="X"||position_taken?(board,index)=="O"
  return false
elsif position_taken?(board, index)==true
  return true
elsif position_taken?(board, index)==false
  return false

end

end


def turn(board)

puts "Please enter 1-9:"
user_input=gets
input_to_index(input)

end
