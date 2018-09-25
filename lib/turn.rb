def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------------------------------------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------------------------------------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index(input)
  input.to_i - 1
end

def valid_move?(number, board)
  def position_taken?(array, char)
    if array[char] == " " || array[char] == "" || array[char] == nil
      return false
    else
      return true
    end
  end

  def board?(num)
    if num.between?(0, 8) == true
      return true
    else
      return false
    end
  end

  if (position_taken?(number, board)) == false && (board?(board) == true)
    return true
  else
    return false
  end
end

def move(array, index, character = "X")
  array[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  number = gets.chomp
 index = input_to_index(number)
 if valid_move?(board, index) == true
   move(board, index)
   display_board(board)
 else
   turn(board)
 end
end
