def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    true

  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    false
  else
    true
  end
end


def input_to_index(user_input)
  converted_input = user_input.to_i - 1
end


def move(array, converted_input, value = "X")
  array[converted_input] = value
end


def turn(board)
puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)

  index = user_input.to_i - 1
  if valid_move?(board, index)
    move(board, index, value = "X")
  else
        puts "Please enter 1-9:"
          user_input = gets.strip
          input_to_index(user_input)
      end
      display_board(board)
    end


    # input_to_index = 0
    # while input_to_index < 9
    #   input_to_index += 1
