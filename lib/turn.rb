
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def valid_move?(board, index)
  if index.between?(0,3) == true
    true
  elsif index.between?(5,8) == true
    true
  elsif index.between?(0,8) == false
    false || nil
  elsif position_taken?(board,index) == false
    true
  else position_taken?(board,index) == true
    false || nil
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  elsif board[index] == "X" || "O"
    true
  else index = 4
    true
  end
end

def input_to_index(user_input)
  index = user_input.to_i-1
end

def move(board, index, a_value = "X")
  board[index] = a_value
end


def turn(board)
     puts "Please enter 1-9:"
     user_input = gets.strip
     index = input_to_index(user_input)

#this is the problem spot below ****

  if valid_move?(board, index) == true
     move(board, index, a_value = "X")
     display_board(board)

#above is the problem spot****
  else
    until valid_move?(board, index) == true
      puts "Please enter 1-9:"
      user_input = gets.strip
      index = input_to_index(user_input)
    end
  end
end
