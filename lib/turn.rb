
def turn(board)
      puts "Please enter 1-9:"
input = gets.strip.to_i
input = input_to_index(input)

until input = '#valid_move?(board)'
  return '#turn(board)'
if input = '#valid_move?(board)'
  return '#move'

end
end
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


  def valid_move?(board, location)
    if location.to_i.between?(0, 8) && board[location.to_i] == " "
      return true
    else
      return false
    end
  end


      def move(board, location, current_player = "X")
        board[location.to_i] = current_player
      end


      def input_to_index(input)
          input.to_i-1
        end
