
board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  def valid_move?(board, index)
      if index.between?(0,8) == true && position_taken?(board,index) == false
        true
      elsif index.between?(0,8) == true && position_taken?(board,index) == true
        false
      elsif index.between?(0,8) == false && position_taken?(board,index) == false
        false
      end
  end
  # re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
  def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      false
    elsif board[index] == "X" || board[index] == "O"
      true
    end
  end

  def input_to_index(input)
    index = input.to_i - 1
  end

  def move(board, index, character = "X")
    board[index] = character
  end

  def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index)
    move(board, index, character = "X")
    else
    turn(board)
  	end
    display_board(board)
  end
