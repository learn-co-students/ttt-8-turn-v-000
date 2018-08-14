  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

# code your input_to_index and move method here!
  def input_to_index (user_input)
    new_user_input = user_input.to_i #takes the users input and converts it into an integer
    new_user_input -=1 #the board has nine spots available but the array will start us at zero.
    return new_user_input #How do we store the users input ?
  end

#checks to see if the position is already taken and if it's an actual number
  def position_taken?(board, index)
    if (board[index] == " ")|| (board[index]== "")|| (board[index] == nil)
      return false
    else
      return true #board[index] is not " " or " "  because there's an "X" or "O"
    end
  end

  def on_board?(num)
    if num.between?(0, 8) == true
      return true
    else
      return false
    end
  end

  if (position_taken?(board, index)) == false && (on_board?(index) == true)
    return true
  else
    return false
    end
  end

#Takes a users num on the board and places the "X " or "O" in that position
  def move(board, index, character = "X")
    board[index] = character
    return board #referring to the main board
  end

#Asks the user to input a number, validates input and then continues to ask until the user inputs a valid response
  def turn(board)
    puts "Please enter 1-9:"
    num = gets.strip
    input = input_to_index(num)
      if valid_move?(board, index) == true
        move(board, index)
        display_board(board)
      else
        turn(board)
      end
    end
