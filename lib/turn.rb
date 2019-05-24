# code your #valid_move? method here
# def display_board(board)
#   board1 = ["   |   |   ","-----------","   |   |   ","-----------","   |   |   "]
#   vert = "|"
#   line = "-----------"
#   final = ["   ","   ","   ","   ","   ","   ","   ","   ","   "]
#
#   if board.length == 0
#     puts "#{board1[0]}
#           #{board1[1]}
#           #{board1[2]}
#           #{board1[3]}
#           #{board1[4]}"
#   else
#     i = -1
#     while i <= board.length
#       i+= 1
#       final[i] = " #{board[i]} "
#     end
#     puts "#{final[0]}#{vert}#{final[1]}#{vert}#{final[2]}"
#     puts "#{line}"
#     puts "#{final[3]}#{vert}#{final[4]}#{vert}#{final[5]}"
#     puts "#{line}"
#     puts "#{final[6]}#{vert}#{final[7]}#{vert}#{final[8]}"
#   end
# end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

def display_board(board_arr)
  puts " #{board_arr[0]} | #{board_arr[1]} | #{board_arr[2]} "
  puts "-----------"
  puts " #{board_arr[3]} | #{board_arr[4]} | #{board_arr[5]} "
  puts "-----------"
  puts " #{board_arr[6]} | #{board_arr[7]} | #{board_arr[8]} "
end

def input_to_index(input)
  mindex = input.to_i - 1
  return mindex
end

def move(arr, index, val="X")
  arr[index] = "#{val}"
  return arr;
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  valid = valid_move?(board, index)
  if !valid
    puts "invalid"
    turn(board)
  else
    display_board(move(board, index, val="X"))
  end
end
