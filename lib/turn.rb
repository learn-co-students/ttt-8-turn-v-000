
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# turns the users string input into an Integer
def input_to_index(user_input)
  index = (Integer(user_input) rescue 0) - 1 #sets index to 0 is the user input is not a string
end

# this checks that the number collected is valid and the the space on the board picked is empty
def valid_move?(board, index)
  if index > -1 && index < 9 && (board[index]==" " || board[index] == "")
    true
  else
    false
  end
end

#if the index is valid then the system makes the move
def move(board, index, value = "X")
	board[index] = value
end

def turn (board)
  again = false
  while again == false
    puts "Please enter 1-9:"
    index = gets.strip
    num = input_to_index(index)
    again = valid_move?(board, num)
    move(board, num)
    display_board(board)
  end
end
