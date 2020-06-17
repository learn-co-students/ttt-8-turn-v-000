  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

# code your input_to_index and move method here!
  def input_to_index (user_input)
    index = user_input.to_i #takes the users input and converts it into an integer
    index -=1 #the board has nine spots available but the array will start us at zero.
    return index #How do we store the users input?
  end

#checks to see if the position is already taken and if it's an actual number

  def valid_move?(board, index)
    def position_taken?(array, ind)
      if array[ind] == " " || array[ind] == "" || array[ind] == nil
        return false
      else
        return true
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
    index = input_to_index(num)
      if valid_move?(board, index) == true
        move(board, index)
        display_board(board)
      else
        turn(board)
      end
    end
