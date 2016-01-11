board = Array.new(9, " ")

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, current_player = "X")
  board[position.to_i - 1] = current_player
end

def position_taken?(board, position)
  board[position - 1] != " "
end

def valid_move?(board, position)
  position = position.to_i
  position.between?(1, 9) && !position_taken?(board, position)
end

def turn(board)
  loop do
    puts "Please enter 1-9:"
    input = gets.chomp
    if valid_move?(board, input)
      move(board, input)
      break
    else
      puts "Sorry, that's not a valid move."
    end
  end
  display_board(board)
end