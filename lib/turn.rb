# Before defining #turn, you should define the following methods:

# #display_board
# Should accept a board as an argument and print out the current state of the board for the user.
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
  

# #valid_move?
# Should accept a board and an index from the user and return true if the index is within the correct range of 0-8 and is currently unoccupied by an X or O token.
def valid_move?(board, index)
    if position_taken?(board, index) == true; false
    #elsif board[index] == "X" || board[index] == "O"; true
    elsif index > 9 || index < 0; false
    else; true
    end
  end
  
# Hint: While not explicitly required by this lab, you might want to encapsulate the logic to check if a position is occupied in its own method, perhaps #position_taken?
def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] = nil
      false
    else
      true
    #board[index] == "X" || board[index] == "O"
  
  end
end
# #move
# This method should accept a board, an index from the user (which was converted from their raw input with input_to_index), and a token to mark that position with (you can give that argument a default value of 'X'––we're not worrying about whose turn it is yet). The method should set the correct index value of that position within the board equal to the token.
def move(board, userinput, character = "X")
    board[userinput] = character
    display_board(board)
  end
  
def input_to_index(userinput)
    userinput = userinput.to_i
    userinput - 1
  end

def turn(board)
        # ask for input
    puts "Please enter 1-9:"
        # get input
    index = gets.strip
        # convert input to index
    indexNum = input_to_index(index)
        # if index is valid
    if valid_move?(board, indexNum) == true
      true; move(board, indexNum)
    else
      false; turn(board)
      
end
end