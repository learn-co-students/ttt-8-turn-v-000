board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
index = 0
def display_board(board)
  puts row = [" #{board[0]} | #{board[1]} | #{board[2]} "]
  puts separator = "-----------"
  puts row = [" #{board[3]} | #{board[4]} | #{board[5]} "]
  puts separator = "-----------"
  puts row = [" #{board[6]} | #{board[7]} | #{board[8]} "]
end

def valid_move?(board, index)
  if index.between?(0, 8)
    if position_taken?(board, index)
      return false
    end
      return true
    end
      return false
    end

def position_taken?(board, index)
  if (board[index] == ("X" || "O"))
    return true
  end
    return false
  end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, value)
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  ##index = user_input.to_i
  ##index.between?(0, 8)
  index = input_to_index(user_input)
    if valid_move?(board, index)
        move(board, index, value = "X")
        display_board(board)
      else
        turn(board)
      end
    end
