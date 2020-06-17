def display_board(board)
  puts  " #{board[0]} | #{board[1]} | #{board[2]} "
  puts ["-----------"]
  puts  " #{board[3]} | #{board[4]} | #{board[5]} "
  puts ["-----------"]
  puts  " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
 if index.between?(0,8) && !position_taken?(board,index)
    return true
  else
   return false
 end
end


def position_taken?(board, index)
  !(board[index].nil? || board[index] == " " || board[index] == "")
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

def turn(board)
  puts "Please enter 1-9:"
  #get the user input
  user_input = gets.strip
  #input to index
  index = input_to_index(user_input)

  if valid_move?(board,index)
    puts 'valid move'
    move(board, index,)
    display_board(board)
   else
    puts 'try again'
    turn(board)
  end
  display_board(board)
end
