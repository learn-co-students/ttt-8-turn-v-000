def display_board(board)
  3.times do |i|
    3.times do |j|
        print " #{board[(i+j) + i*2]} #{j < 2 ? '|' : ''}"
    end
    if i < 2
        puts "\n-----------"
    end
  end
end


def valid_move?(board, i)
  def position_taken?(board, i)
    if board[i] == '' || board[i] == ' ' || board[i] == nil
      return false
    else
      return true
    end
  end

  return i >= 0 && i <= 8 && !position_taken?(board, i)
end


def move(board, i, mark = 'X')
  board[i] = mark
end

def input_to_index(i)
    return i.to_i - 1
end

def turn(board)
    puts "Please enter 1-9:"
    move = input_to_index(gets)
    if (valid_move?(board, move))
      move(board, move)
      display_board(board)
    else
      turn(board)
    end
end
