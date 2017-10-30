
require 'pry'

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  puts "-----------"

end

def input_to_index(input)
  input = input.to_i
  input -=1
end

def valid_move?(board,index)
  if index < 0
    false
  elsif position_taken?(board,index)
     false
  elsif !board[index]
     false
  else
     true
  end

end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  if board[index] == nil
    false
  elsif board[index].strip.empty?
    false
  else
    true
  end
end


def move(board,index,character = "X")
    board[index] = character
end

def turn(board)
    puts "Please enter 1-9:"
    num = gets.chomp
    index = input_to_index(num)
    # if valid_move?(board,index)
    #   move(board,index)
    #   display_board(board)
    # else
    #   turn(board)
    # end
    until valid_move?(board,index)
      turn(board)
    end
    move(board,index)
    display_board(board)



end
