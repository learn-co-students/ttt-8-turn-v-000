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

def move(board, index, input)
board[index]=input
end

def position_taken? (board, index)
    if board [index]=0&&board[index]==" "
      return true
    elsif board [index]=1&&board[index]==" "
      return  true
    elsif board [index]=2&&board[index]==" "
      return  true
    elsif board [index]=3&&board[index]==" "
      return  true
    elsif board [index]=4&&board[index]==" "
      return  true
    elsif board [index]=5&&board[index]==" "
        return  true
    elsif board [index]=6&&board[index]==" "
        return  true
    elsif board [index]=7&&board[index]==" "
       return  true
    elsif board [index]=8&&board[index]==" "
        return  true
    elsif board[index]=="X"&&board[index]=="O"
      return false

    elsif board[index]= -1
      return false
    end
  end

def valid_move?(board,index)

if position_taken?(board, index)==true
  return true
elsif index= -1
  return false

else position_taken?(board, index)==false
  return false
end

end


def turn(board)

puts "Please enter 1-9:"
user_input=gets.strip
input_to_index(input)

end
