
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
  if position_taken?(board, index) == true
    return false
  elsif index.between?(0, 8)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
     if board[index] == " "
       return false
     elsif board[index] == ""
       return false
    elsif board[index] == "X" || board[index] == "O"
      return true
    else
      return false
    end
    end

def move(array, index, player = "X")
  array[index] = player
end

def turn(board)
  if valid_move?(board, index) == true
    move(board, index, player)
  else
    valid_movie?(board, index)
      puts "Please enter 1-9:"
    end
end

def input_to_index(input)
input.to_i - 1
end

input = gets.strip
index = input_to_index(input)
