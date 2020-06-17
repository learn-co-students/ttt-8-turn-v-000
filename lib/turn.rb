board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} ",
      "-----------",
      " #{board[3]} | #{board[4]} | #{board[5]} ",
      "-----------",
      " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
  index = input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == " " || board[index] ==  "" || board[index] == nil
    false
  else board[index] == "X" || "O"
    true
  end
end


def valid_move?(board, index)
  if !position_taken?(board, index)
    true
    if index.between?(0, 8)
    true
    end
  end
end

def move(board, index, token = "X")
  board[index] = token
  board
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  validation = valid_move?(board, index)
    #gets.strip
  if !validation
    puts "Please enter 1-9:"
    turn(board)
  else
    move(board, index, token = "X")
    display_board(board)
  end
end
