board = ["   ","   ","   ","   ","   ","   ","   ","   ","   "]
def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index (user_input)
  user_input.to_i-1 #converts user_input argument to integer w .to_i
  #and to match board index position, subtracts 1 from converted user input integer
end

def move (board, index, current_player = "X" ) # localized variables used = "board, index,current_player"
  #Part of your #move method will mean updating the board array passed into it, which is
  board [index] = current_player #updated board entries in one line w/ 3 arguments = placeholder for values in the bin/move file
end
def valid_move?(board, index)
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
# remember to check position_taken_spec.rb for syntax of the conditions
  if board[index] == " " || "" || nil
    #checks to see user entered "index" value w/ array type data retrieval is comparable to "", " ", or nil
    true#print true if user entered value is one of 3 conditions r met, i.e user entered "", or " ", or nil
  elsif board[index] == "X" || "O"
    false#print false if board has a position
  else
    false
  end
end
