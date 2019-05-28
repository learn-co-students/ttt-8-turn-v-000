def display_board(array)
  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts "-----------"
  puts " #{array[3]} | #{array[4]} | #{array[5]} "
  puts "-----------"
  puts " #{array[6]} | #{array[7]} | #{array[8]} "
end

def valid_move?(array,index)
  if index.between?(0,8) && position_taken?(array,index)
    true
  end
end

def position_taken?(array,index)
  if [" ","",nil].include? array[index]
    true
  end
end

def move(array,index,token)
  array[index] = token
end

def input_to_index(input)
  index = input.to_i-1
end

def turn(array)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  until valid_move?(array,index)
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
  end
  move(array,index,"X")
  display_board(array)
end