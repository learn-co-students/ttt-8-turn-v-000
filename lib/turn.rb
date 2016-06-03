require_relative "../../ttt-5-move-rb-v-000/lib/move.rb"
require_relative "../../ttt-7-valid-move-v-000/lib/valid_move.rb"


def turn(board)
  puts "Please enter 1-9:"
input = gets.chomp
index = input_to_index(input)

    if valid_move?(board, index)
    move(board, index, user = "X")
    display_board(board)
    else
    puts "Invalid move! Please try again."
    turn(board)
  end
end
