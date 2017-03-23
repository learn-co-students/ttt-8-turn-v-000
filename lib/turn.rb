def valid_move?(board, index)

 if index >=0 && index <9
  if board[index] == " " || board[index] == ""
    true
  elsif board[index] == nil
    false
  elsif board[index] == "X" || board[index] =="O"
    false
  end
 else
  false
 end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(number)
  newNum = number.to_i - 1
end

def move(array, index, xo ="X")
  array[index]=xo
end

def turn(board)
  flag = 1


  while flag < 2

    puts "Please enter 1-9:"
    number = gets.strip
    index = input_to_index(number)
    if index >=0 && index <9
     if flag % 2 == 1
      if valid_move?(board, index) == true
        move(board, index, "X")
        display_board(board)
        flag = flag + 1
      end
     elsif flag % 2 == 0
      if valid_move?(board, index) == true
        move(board, index, "O")
        display_board(board)
        flag = flag + 1
      end
     end
    end
  end

 end
