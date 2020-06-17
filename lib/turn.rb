# ask for input

def turn(board)
  valid_move = 0
  until valid_move == 1
  # get input
      puts "Please enter 1-9:"
  # convert input to index
      input = gets.strip
      index = input_to_index(input)
  # if index is valid
    if valid_move?(board,index) == true
      valid_move = 1
      move(board,index,"X")
      puts display_board(board)
    end
  end
end

# get input



# convert input to index

def input_to_index(user_input)
converted_input = user_input.to_i - 1
end


# if index is valid

def valid_move?(board,index)
  if index < 0
    false
  else
    if index > 8
      false
    else
      !position_taken?(board,index)
    end
  end
end

def position_taken?(board, index)
if !!board[index]
  if board[index] == " " || board[index] == ""
    false
  elsif board[index] != " "
    true
  else
    false
  end
else
  false
end
end


  # make the move for index

  def move(board, converted_input, value = "X")
    def update_array_at_with(array, index, value)
      array[index] = value
    end
    update_array_at_with(board, converted_input, value)
  end

  # show the board

  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end


# else
  # ask for input again until you get a valid input
# end
