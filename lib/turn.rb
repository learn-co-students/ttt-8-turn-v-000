=begin
+ask for input
+get input
+convert input to index
if index is valid
  make the move for index
  show the arr
else
  ask for input again until you get a valid input
end
=end

def turn(arr)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if ((valid_move?(arr, index) == true))
    move(arr, index, char = "X")
    display_board(arr)
  elsif ((valid_move?(arr, index) == false))
    turn(arr)
  end
end

def display_board(arr)
  puts " #{arr[0]} | #{arr[1]} | #{arr[2]} "
  puts "-----------"
  puts " #{arr[3]} | #{arr[4]} | #{arr[5]} "
  puts "-----------"
  puts " #{arr[6]} | #{arr[7]} | #{arr[8]} "
end

def valid_move?(arr, index)
  if (index.between?(0, 8) && (position_taken?(arr, index) == false))
    true
  else
    false
  end
end

def position_taken?(arr, index)
  if (arr[index] == nil)
    false
  elsif (arr[index] == ' ' || arr[index] == '')
    false
  else
    true
  end
end

def input_to_index(input)
    n = input.to_i
    n - 1
end

def move(arr, index, char = "X")
  arr[index] = char
end
