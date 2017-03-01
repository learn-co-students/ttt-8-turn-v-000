def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
 index =  user_input.to_i - 1
 return index
end

def move(board, user_input, player = "X")
 board[user_input] = player
end

def valid_move?(board, index)
  if (position_taken?(board, index) == false && index.between?(0, 8))
    return true
  else
    return false
  end
end

def position_taken?(board, index)
 if (board[index] == " " || board[index] == "" || board[index] == nil)
   return false
 else
   return true
 end
end

def turn(board)
  play_made = false
  input = 0
  index = 0
  until play_made == true
    puts "Please enter 1-9:"
    input = gets.strip
#    input_to_index(input.to_i)
    index = input_to_index(input.to_i)
    if valid_move?(board, index) == true &&  position_taken?(board, index) == false
      move(board, index)
      display_board(board)
      play_made = true
    end
  end
end
