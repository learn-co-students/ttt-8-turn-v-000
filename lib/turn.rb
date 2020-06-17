



def display_board(board)
board = [" "," "," "," "," "," "," "," "," "]

end
 def input_to_index(input)
   s=input.to_i
   s-1
 end


#def valid_move?(board,position)
  def valid_move?(board,index)

  #move = index.to_i


  if !position_taken?(board,index) && index.between?(0, 8)
  true

else
#elsif position_taken?(board, test) !== false && test.between?(0,8)
#  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

  false

  end

  end

 def move(board, index, position = "X")
   board[index] = position
 end

  def position_taken?(board,index)
   #if array[index_number= "  "]
   if board[index]== " " || board[index]==nil || board[index]== ""
    return false


  elsif board[index]== "X" || board[index]=="O"
    return true

  #elsif board[index]=="X"

  end
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
    i = gets.strip
    index = input_to_index(i)
    m = valid_move?(board, index)
    if m == true
      move(board, index, char="X")
    else m == false
      until m == true
        puts "Sorry, that was an invalid move. Please enter 1-9:"
        i = gets.strip
        index = input_to_index(i)
        m = valid_move?(board, index)
        move(board, index, char="X")
      end
    end
    display_board(board)
  end









#ask for input
#get input
#convert input to index
#if index is valid
#make the move for index
#  show the board
#else
  #ask for input again until you get a valid input
#end
