board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
    puts (" #{board[0]} | #{board[1]} | #{board[2]} ")
    puts ("-----------")
    puts (" #{board[3]} | #{board[4]} | #{board[5]} ")
    puts ("-----------")
    puts (" #{board[6]} | #{board[7]} | #{board[8]} ")
end

def input_to_index(user_input)
   index = user_input.to_i - 1
end

def valid_move?(board, index)
    if index <= 8 && index >=0 && board[index] == " " || board[index] == ""
      return true
    elsif board[index] == "X" || board[index] == "O"
      return false
    else
      return false
    end
end

def move(board, index, character = "X")
    def update_array_at_with(array, index, value)
      array[index] = value
    end
    update_array_at_with(board, index, character)
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
    if valid_move?(board, index) == false
      turn(board)
    else
      move(board, index, token = "X")
    end
    display_board(board)
  end
