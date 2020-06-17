def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i
  index = input.to_i - 1
end

def move(board, index, char = "X")
  board[index] = char
  return board
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] != " "
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input.to_i - 1
    input_to_index(input)

    if valid_move?(board, index) == true
      move(board, index, char = "X")
      display_board(board)
    else
      until valid_move?(board, index) == true
        puts "Please enter 1-9:"
        input = gets.strip
        index = input.to_i - 1
        input_to_index(input)
      end
      move(board, index, char = "X")
      display_board(board)
    end
  end
