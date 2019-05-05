def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  converted_index = index.to_i 
  converted_index -= 1 
end

def position_taken?(board, converted_index)
  if board[converted_index] == " " || board[converted_index] == "" || board[converted_index] == nil 
    return false 
  else 
    return true 
  end 
end

def valid_move?(board, converted_index)
  if position_taken?(board, converted_index) == false
    if converted_index >= 0 && converted_index <= 8
      return true
    end
  else
    return false
  end
end

def move(board, converted_index, char = "X")
  board[converted_index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  converted_index = input_to_index(input)
  if valid_move?(board, converted_index) == true
    move(board, converted_index, "X")
    display_board(board)
  else
    turn(board)
  end
end