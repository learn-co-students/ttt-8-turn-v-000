def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def input_to_index(input)#problem here
  user_input=input.to_i
  user_input - 1
end

def move(board, index, input_to_index)
board[index]=input_to_index
end

def position_taken? (board, index)
    if board [index]=0&&board[index]==" "
      return true
    elsif board[index]=="X"||board[index]=="O"
      return false
    elsif board[index]= -1
      return false
    end
  end

def valid_move?(board,index)
  if index.between?(0,8) && position_taken?(board, index)
    return true
  else return false
end
end

def turn(board)

puts "Please enter 1-9:"
user_input=gets.strip
input_to_index(user_input)

end
