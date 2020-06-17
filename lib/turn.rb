

def display_board(board = "")
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
     true
    else
      false
    end
end

def position_taken?(board, index)
 if board[index] == "X" || board[index] == "O"
   true
 else board[index] == "" || " " || nil
    false
end
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, current_player)
  board[index] = current_player
end
def current_player
  "X" || "O"
end





  def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip
     index = input_to_index(user_input)
    if valid_move?(board, index) == true
      puts move(board, index, current_player)
    else  valid_move?(board, index) == false
      puts turn(board)
    end
    display_board(board)
  end
