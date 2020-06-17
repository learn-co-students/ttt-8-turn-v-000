def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  input.to_i - 1
end

def move(board, input_to_index, token = "X" )
 board[input_to_index] = token
  puts "board = [" "," "," "," "," "," "," "," "," "]"
end
# code your #valid_move? method here
def valid_move?(board, input)
    if input.between?(0,8) && !position_taken?(board, input)
      true
    end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, input)
  if board[input] == " " || board[input] == "" || board[input] == nil
     false
    else board[input] == "X" || board[input] == "O"
     true
   end
end
def turn(board)
  puts "Please enter 1-9:"
  i = gets.strip
  input = input_to_index(i)
  m = valid_move?(board, input)
  if m == true
    move(board, input, token="X")
  else m == false
    until m == true
      puts "Sorry, that was an invalid move. Please enter 1-9:"
      i = gets.strip
      input = input_to_index(i)
      m = valid_move?(board, input)
      move(board, input, token="X")
    end
  end
  display_board(board)
end
