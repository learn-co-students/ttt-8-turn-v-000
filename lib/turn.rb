def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
 
 def position_taken?(board, index)
   board[index]==' ' || board[index]=="" || board[index]==NIL ? false : TRUE
 end
 
  def valid_move? (board, index)
    if index>=0 && index <9 && !position_taken?(board,index)
      return TRUE
    end
    return FALSE
  end
  
  def input_to_index (input)
    input.to_i - 1 
  end
  
  def move (board, index, mark = 'X')
    if valid_move?(board,index) 
      board[index] = mark
      display_board(board)
      return true 
    end
    return FALSE
  end
  
  def turn(board)
      puts "Please enter 1-9:"
      index = input_to_index(gets.strip)
      if !move(board,index)
        turn(board)
      end
    end