def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
  position = input.to_i - 1
end

def valid_move?(board, position)
  if position.between?(0,8) && !position_taken?(board, position)
        return true
  else
    return false
  end
end

def position_taken?(board, position)
  if (board[position] == " " || board[position] == "" || board[position] == nil)
    return false
  else
    return true
    end
    end

def move(board, position, char = "X")
      board[position] = char
    end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  position = input_to_index(input)

  if valid_move?(board, position) == true
    move(board, position, char = "X")
    display_board(board)
  else
    turn(board)
    end
end
