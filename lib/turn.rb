def turn(board)
  valid_move = false
  until valid_move == true
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    valid_move = valid_move?(board, index)
  end
  move(board,index)
  display_board(board)
end


  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  # code your input_to_index and move method here!
  def input_to_index(input)
    input = input.to_i
    index = input - 1
    return index
  end

  def move(board,index,character ="X")
    board[index] = character
    return board
  end

  # code your #valid_move? method here
  def valid_move?(board, index)
    if index >= 0 && index <=8
      if position_taken?(board,index) == false
        return true
      end
    end
    return false
  end

  # re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
  def position_taken?(board, index)
    if board[index] == "X" || board[index] == "O"
      return true
    else
      return false
    end
  end
