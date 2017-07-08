  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} \n"
  end

  def input_to_index(input)
    input.to_i - 1
  end

  def valid_move?(board, index)
    index.between?(0, 8) && !position_taken?(board, index)
  end

  def position_taken?(board, index)
    board[index] != " " && board[index] != "" && board[index] != nil
  end

  def move(board, index, character = 'X')
    puts board[index] = character
  end

  def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index, character = 'X')
    else
      turn(board)
    end
    display_board(board)
  end
