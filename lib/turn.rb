
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    #turn(board)
  else
    puts "Wrong/Used Input! You will suffer now!"
    #{}`afplay /Users/coffeecomputer/Music/RandomSounds/ouch.mp3 --volume 500`
    turn(board)
  end

end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    return true
  else
    return false
  end

end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  user_input = input.to_i
  return user_input - 1
end

def move(array, index, char="X")
  array[index] = char
  display_board(array)
end

def position_taken?(board, index)
  value = board[index]
  if value == "" || value == " " || value == nil
    return false
  elsif value == "X" || value == "O"
    return true
  end
end
