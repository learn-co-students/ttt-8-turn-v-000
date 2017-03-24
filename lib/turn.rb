def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  elsif !valid_move?(board, index)
    turn(board)
  end
end

  def display_board(board)
      puts row(board, 0, 1, 2)
      puts "-----------"
      puts row(board, 3, 4, 5)
      puts "-----------"
      puts row(board, 6, 7, 8)

end

    def valid_move?(board, index)
      index.between?(0, 8) && !position_taken?(board, index) 

end

    def position_taken?(board, index)
    board[index] == "X" || board[index] == "O"

end

    def row(board, index_1, index_2, index_3)
    " #{board[index_1]} | #{board[index_2]} | #{board[index_3]} "

end

    def input_to_index(input)
    input.to_i - 1

end

    def move(board, index, character = "X")
    board[index] = character

end
