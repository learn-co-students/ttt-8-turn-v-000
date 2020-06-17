def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input.to_i - 1
end

def valid_move?(board, index)
  if (index<0||index>8)
    return false
  elsif (board[index]==" ")
    return true
  end
  return false
end

def move(board,index,character="X")
    board[index] = character
end

def turn(board)
  solved = false;
  while (!solved)
    display_board(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if (valid_move?(board,index))
      move(board,index,"X")
      solved = true
    else
      puts "Sorry, try again."
    end
  end
  display_board(board)
end
