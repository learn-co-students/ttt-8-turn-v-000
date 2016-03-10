def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  position_taken?(board, position)
end

def position_taken?(board, position)
  position = position.to_i - 1
  if position.between?(0,8) && board[position] != "X" && board[position] != "O"
    return true
  else
    return false
  end
end

def move(board, position, char = "X")
    position = position.to_i - 1
    board[position] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  position = input
    if valid_move?(board, position)
        move(board, position, char = "X")
          display_board(board)
      else
      puts "Please enter 1-9:"
      input = gets.chomp
      position = input
    end
end

