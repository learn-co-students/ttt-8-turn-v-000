require 'pry'

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  
  index = input_to_index(user_input)
  
  if valid_move?(board, index) == true
    move(board, index, token="X")
#    binding.pry
  else
      turn(board)
  end
  display_board(board)
end




def valid_move?(board, index)
    if index.between?(0,8)
        if (board[index] == "" || board[index] == " " || board[index] == nil)
        true
      else
        false
      end
     end
  end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(user_input)
  x = user_input.to_i
  index = x - 1
end



def move(board, index, token="X")
    board[index] = token
end

