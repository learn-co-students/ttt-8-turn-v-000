def input_to_index(input)
  input.to_i - 1
end

#if index is valid...
#this code works in the repl.it script but doesn't pass tests in Lear.co IDE:

def valid_move?(answer, board)
  if answer.between?(0, 8)
    if !position_taken?(board, answer)
    true
    end
  end
# this did nothing to fix the errors...
# it was a note on the Learn.co answer sheet
# number_entered.to_i.between?(0,8) && !position_taken?(board, number_entered.to_i - 1)
end

#if index is valid...make the move for index
def move(array, index, name = "X")
  array[index] = name
end
#if index is valid...show the board
def position_taken?(board, answer)
  board[answer] != " "
end

def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
    puts "Please enter 1-9:"
    answer = gets.chomp
    answer = input_to_index(answer)
    if valid_move?(answer, board)
      move(board, answer)
      display_board(board)
#this re-appearance of the board is crashing the Learn.co IDE
#test are also failing
#     turn(board)

    else
      puts "That is an invalid entry!"
      turn(board)
    end
end
