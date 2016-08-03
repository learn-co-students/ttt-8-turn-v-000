#WIN_COMBINATIONS = [
#	[0,1,2],
#	[3,4,5],
#	[6,7,8],
#	[0,3,6],
#	[1,4,7],
#	[2,5,8],
#	[0,4,8],
#	[2,4,6]]

def display_board(board) # prints arbitrary arrangements of the board
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

  #input_to_index
  #converts a user_input to an integer
  #subtracts 1 from the user_input
  #returns -1 for strings without integers
def input_to_index(input)
    input.to_i - 1
end

  #input_to_index
  #converts a user_input to an integer
  #subtracts 1 from the user_input
  #returns -1 for strings without integers
def position_taken?(board, index) #position taken
    if board[index] == " " || board[index] == "" || board[index] == nil
        false
    else
        true
    end
end

  #valid_move?
  #returns true/false based on index
def valid_move?(board, index)
    if index.between?(0, 8)
        if !position_taken?(board, index)
           true
        else
           false
        end
    end
end

  #move
  #allows "X" player in the bottom right and "O" in the top left
def move(board, input, value="X")
    board[input] = value
end

  #turn
  #asks the user for input by printing: "Please enter 1-9:"
  #gets the user input
  #calls the input_to_index method (FAILED - 1)
  #validates the input correctly (FAILED - 2)
  #asks for input again after a failed validation (FAILED - 3)
  #makes valid moves (FAILED - 4)
  #displays a correct board after a valid turn (FAILED - 5)                                                      
def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index)
         move(board, index)
         display_board(board)
    else
         turn(board)
    end
end
