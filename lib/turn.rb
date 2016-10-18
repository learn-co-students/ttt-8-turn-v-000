def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  def valid_move?(board,index)# code your #valid_move? method here
    if (index.between?(0,8) == true) && (position_taken?(board,index) == false)
      return true
    else
      return false
  end
  end
  def position_taken?(board, index) # code your #position_taken? method here!
    if (board[index] == " ") || (board[index]== "") || (board[index]== nil)
      return false
    else
      return true
    end
  end

  def input_to_index(user_input)# code your input_to_index and move method here!
    user_input.to_i - 1
  end

  def position_taken?(board, index) # code your #position_taken? method here!
    if (board[index] == " ") || (board[index]== "") || (board[index]== nil)
      return false
    else
      return true
    end
  end

  def valid_move?(board,index)# code your #valid_move? method here
    if (index.between?(0,8) == true) && (position_taken?(board,index) == false)
      return true
    else
      return false
  end
  end

  def move(board, index, char = "X")
  board[index]=char
  board
  end

  def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index, char = "X")
    display_board(board)
  else turn(board)
  end
end
