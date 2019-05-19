#display board

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  x = board[index]
  if x == " " || x == "" || x == nil
    false
  else x == "X" || x = "O"
    true
  end
end

def valid_move?(board, index)
  if index.between?(0, 8) == true && position_taken?(board, index) == false
        true
    else
        false
    end
end

def input_to_index(input)
  n = input.to_i 
  n - 1
end

def move(array, index, value = "X")
  array[index] = value
end  



def turn(board)
  counter = 0
  until counter.between?(1,9)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    x = index + 1 
    x += counter
  if valid_move?(board, index) == true
    move(board, index, value = "X")
    display_board(board)
    break
end
end
end