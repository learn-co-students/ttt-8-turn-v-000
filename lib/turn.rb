#board= ["   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, position)
position = position.to_i-1 
  if !position_taken?(board,position)
     if position.between?(0,8)
      true
    else
      false
     end
   else
      false
    end 
  end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board,input)
    move(board,input)
    display_board(board)
    else
      turn(board)
end
end

def position_taken?(board, position)
taken = nil 
if board[position] == " " || board[position] == "" || board[position] == nil
  taken = false
else
  taken = true
end
taken
end

def move(board,location,token = "X")
 board [location.to_i-1]= token
end

