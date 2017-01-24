def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i - 1
end

def move(board, input, player = "X")
  board[input] = player
end

def valid_move?(board, index)
    if position_taken?(board, index) || index > board.length - 1 || index < 0
      return false
    else
      return true
    end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  new_move = input_to_index(gets.chomp)
  if valid_move?(board, new_move)
    move(board, new_move)
    display_board(board)
  else
    puts "Please enter valid move"
    turn(board)  
  end
end  