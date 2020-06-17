def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, input, character = "X")
  board[input] = character
end

def position_taken?(board, input)
  if board[input] == " "
    false
  elsif board[input] == ""
    false
  elsif board[input] == nil
    false
  else
    true
  end
end

def valid_move?(board, input)
  if position_taken?(board, input) == true
    false
  elsif input > 8
    false
  elsif input < 0
    false
  else
    true
  end
end

def turn(board)
  loop do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)

      if valid_move?(board, index) == true
          move(board, index, "X")
          display_board(board)
        break
      end
    end
end
