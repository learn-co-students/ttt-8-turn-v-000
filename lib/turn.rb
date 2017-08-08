def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(x)
  index = x.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
end

def valid_move?(board, index)
  ((position_taken?(board, index)) && (index % 1 == 0) && (index >= 0) && (index <= 8))
end

def position_taken?(board, index)
  !(board[index] == "X" || board[index] == "O")
end

def turn(board, turn_count = "1")
  puts "Please enter 1-9:"
  turn_count = turn_count.to_i
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    if turn_count % 2 != 0
      this_turn = "X"
    else
      this_turn = "O"
    end
    move(board, index, this_turn)
    display_board(board)
    turn_count += 1
  else
    puts "That's not a valid input. Please give an unoccupied space 1-9."
    turn(board, turn_count)
  end
end
