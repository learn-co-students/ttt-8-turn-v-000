#ask for an input => puts
#get and input    => gets
#convert the input to an index => gets to a variable => var = gets => pass var as index
#validate weather index is a valid move => does index fit criterias (method) use gets var

#if index valid make move for index => another method
#show the board => board method

#else ask for a valid input => else in validate methid with a puts get and recursion


def display_board (board)
  puts " #{board[0]} " "|" " #{board[1]} " "|" " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " "|" " #{board[4]} " "|" " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " "|" " #{board[7]} " "|" " #{board[8]} "
end

def turn(array) # 1.call the turn method
puts "Please enter 1-9:" # 1a. asks for input
user_input = gets #get input
index = input_to_index(user_input) #convert input to index
if valid_move?(array,index)
  move(array,index, "X")
  display_board(array)
else
  puts "invalid move try again"
  turn(array)
end
end

def input_to_index(user_input) # 3. converts input and returns to # 4. in turn method
  user_input = user_input.to_i -  1
end

  def valid_move?(array,index) #4-5 checks if move is valid and returns to #turn
    if index.between?(0,8) && (array[index] == "" || array[index] == " " || array[index] == nil)
     true


    end
  end

  def move(array,index, value)
    array[index] = value
  end
