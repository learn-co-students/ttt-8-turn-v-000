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

#if index is valid...

# in order to pass Learn.co's IDE, the
#valid_move? parameters has to be listed in this order rather than the reverse:
#(board, answer)
#yet they passed repl.it no problem; is this a test flaw?
def valid_move?(board, number_entered)
  if number_entered.between?(0, 8) && !position_taken?(board, number_entered)
    true
  end
# this did nothing to fix the errors...
# it was a note on the Learn.co answer sheet
# number_entered.to_i.between?(0,8) && !position_taken?(board, number_entered.to_i - 1)
end

def turn(board)
    puts "Please enter 1-9:"
    answer = gets.chomp
    answer = input_to_index(answer)
# in order to pass Learn.co's IDE, the
#valid_move? parameters has to be listed in this order rather than the reverse:
#(board, answer)
#yet they passed repl.it no problem; is this a test flaw?
    if valid_move?(board, answer)
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

#if index is valid...show the board
def position_taken?(board, answer)
  board[answer] != " "
end

#if index is valid...make the move for index
def move(array, index, name = "X")
  array[index] = name
end
