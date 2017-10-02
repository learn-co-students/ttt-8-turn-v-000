# 1. DISPLAY AN EMPTY BOARD
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# 2. RE-ASSIGN USER INPUT OF A STRING TO AN INTEGER
def input_to_index(user_input)
  user_input = "#{user_input}".to_i - 1
end

# 3. CREATE A METHOD TO DETERMINE IF THE SPACE IS ALREADY OCCUPIED
def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end

# 4. DETERMINE IF THE USER INPUT IS A VALID 1-9 INTEGER AND INCORPORATE THE #position_taken METHOD
def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    return true
  else
    return nil
  end
end

# 5. MOVE THE CHARACTER (X OR O) TO DESIGNATED POSITION
def move(board, position, char = "X")
  index = position
  board[index] = char
end

# 6. CREATE A TURN METHOD TO INPUT PROPER INTEGER IF GIVEN INTEGER IS INVALID
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index, char = "X")
    display_board(board)
  else
    turn(board)
  end
end

# ./bin/turn
