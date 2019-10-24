def display_board(board)
 puts " #{board[0]} | #{board[1]} | #{board[2]} "
 puts "-----------"
 puts " #{board[3]} | #{board[4]} | #{board[5]} "
 puts "-----------"
 puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, char ="X")
board[index] = char
end

def valid_move?(board, index)
if !position_taken?(board, index) && index.between?(0, 8)
  true
else false
end
end


def position_taken?(board, index)
taken = nil
if (board[index] ==  " " || board[index] == "" || board[index] == nil)
taken = false
else
taken = true
end
end

def turn(board)
  puts "Please enter 1-9:"
  usermove = gets.strip
  index = input_to_index(usermove)
  step = valid_move?(board, index)
  if step == true
    move(board, index, char="X")
  else step == false
    until step == true
      puts "Sorry, that was an invalid move. Please enter 1-9:"
      usermove = gets.strip
      index = input_to_index(usermove)
      step = valid_move?(board, index)
      move(board, index, char="X")

    end
  end
  display_board(board)
end
