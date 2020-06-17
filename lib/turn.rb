
 def display_board(board)

  a = board[0]
  b = board[1]
  c = board[2]
  d = board[3]
  e = board[4]
  f = board[5]
  g = board[6]
  h = board[7]
  i = board[8]
  puts " #{a} | #{b} | #{c} "
  puts     "-----------"
  puts " #{d} | #{e} | #{f} "
  puts     "-----------"
  puts " #{g} | #{h} | #{i} "
 end

def turn(board)
      puts "Please enter 1-9:"
      input = input_to_index(gets.strip)
      

      if valid_move?(board, input)
        move(board, input)
        display_board(board)
      else
        turn(board)
      end
end

def input_to_index(input)
  user_input = input.to_i
  index = user_input - 1
end

 def move(board, index, player = "X")
   board[index] = player
 end

 def valid_move?(board, index)

   index <= 8 && index >= 0 && !position_taken?(board, index)

 end

 def position_taken?(board, index)

     if board[index] == " "
       false
     elsif board[index] == ""
       false
     elsif board[index] == "X" || board[index] == "O"
       true

     end
 end
