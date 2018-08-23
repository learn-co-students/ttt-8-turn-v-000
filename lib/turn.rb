def position_taken?(arr,ind)
    check = arr[ind]
    if check == " " || check == "" || check == nil
       false 
    elsif check == "X" || check == "O"
       true
    end
end


def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board,index) == false;
    true
  else
    false
  end
end
    
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(number)
  integer = number.to_i 
  index = integer - 1 
end

def move(board, index, char = "X")
  board[index] = char
  board 
end 

def turn(board)
  puts "Please enter 1-9:" 
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index) == false
    turn(board)
  else
    move(board,index)
  end
  display_board(board)
end
