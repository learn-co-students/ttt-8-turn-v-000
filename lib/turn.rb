def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move (board,location,icon = "X")
  point = location.to_i - 1
  return board[point] = icon
end

def valid_move?(board,index)
  spot = index.to_i
  if spot.between?(1,9) and !position_taken?(board,spot - 1) then
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  spot = gets.chomp
  if valid_move?(board,spot) then
    move(board,spot)
    display_board(board)
  else
    puts "Invalid move, try again"
    turn(board)
  end
end

def position_taken?(array,index)
  if array[index] == " " || array[index] == "" || array[index] == nil then
    return false
   elsif array[index] == "X" || array[index] == "O" then
     return true
  end
end