def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index(n)
  return n.to_i-1
end

def move(array,index, value="X")
  array[index]=value
end

def valid_move?(board,index)
  if index.between?(0, 8) && ! position_taken?(board,index)
    true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end
def turn(board)
  condition = false
  until condition
    puts "Please enter 1-9:"
    input=gets.strip
    index=input_to_index(input)
    condition=valid_move?(board,index)
  end
  move(board, index, "X")
  display_board(board)

end
