



def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "


end

def input_to_index(index)
  input = index.to_i - 1

end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def move(array, index, value = "X")

  array[index] = value

end

def valid_move?(board, index)
    if index.between?(0, 8) && !position_taken?(board, index)
        return true
    else
        return false
    end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board, index, "X")
    display_board(board)
  else
    puts "Invalid move - please enter a valid move 1-9"
    turn(board)
  end
end

def position_taken?(board, index)
    if board[index] == "X" || board[index] == "O"
     return true

    else index == " " || index == "" || index == "nil"
     return false
   end
end
