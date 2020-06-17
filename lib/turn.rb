board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(array)
  puts " #{array[0]} " "|" " #{array[1]} " "|" " #{array[2]} "
  puts "------------"
  puts " #{array[3]} " "|" " #{array[4]} " "|" " #{array[5]} "
  puts "------------"
  puts " #{array[6]} " "|" " #{array[7]} " "|" " #{array[8]} "
end

def input_to_index(input)
  (input.to_i) - 1
end

def position_taken?(array, index)
  if array[index] == " " || array[index] == "" || array[index] == nil
    p false
  else p true
  end
  end

def valid_move?(array, index)
  if position_taken?(array, index) == false && index.between?(0, 8)
    p true
  else p false
  end
  end

  def move(array, index, value="X")
    array[index] = value
  end

  def turn(array)
    puts "Please enter 1-9:"
    input = (gets.to_i) - 1
    input_to_index(input)
    valid_move?(array, input)
    move(array, input, value = "X")
    display_board(array)
    while input.between?(0, 8) == false
        puts "Please enter 1-9:"
        input = (gets.to_i) - 1
      break
    end
  end
