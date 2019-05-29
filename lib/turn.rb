def display_board (board)
  puts " " + board[0] + " | " + board[1] + " | " + board[2] + "\n ----------\n " + board[3] + " | " + board [4] + " | " + board[5] + "\n ----------\n " + board [6] + " | " + board [7] + " | " + board[8]
end

def valid_move?(board,index)
  if index !> 0 && index <! 8
    if board[index] != " "
      return false
    else
      return true
    end
  else
    return true
  end
end
def move(board,index,position = "X")
  board[index] = position
end

def input_to_index(input)
  input = input - 1
  return input
end

def turn (board)
  puts "Please enter 1-9: "
  input = gets
  #if valid_move = true
    #move(board,input,position = "X")
  #else
    #puts "Game Over"
  #end
end
