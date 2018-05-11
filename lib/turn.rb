def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"

  input = gets.strip # I'm getting a users input 
  index = input_to_index(input)

  if valid_move?(board, index) # if I comment this method out, I get a completely diff error
    puts "Valid Move"
    move(board, index)
    display_board(board)
  else
   puts "Invalid move. Try again."
   turn(board)
  end
end


def input_to_index(move)
   index = move.to_i - 1
   index
end

def valid_move?(board, index)
  if index.to_i.between?(0, 8) && !position_taken?(board, index)
    true 
  else
    false 
  end
end

def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
        false
    else
        true
    end
end

def move(board, index, player = "X")
  board[index] = player
  
end

