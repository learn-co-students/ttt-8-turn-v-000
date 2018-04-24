#display_board
    def display_board(board= ["  ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   "])
      puts" #{board[0]} | #{board[1]} | #{board[2]} "
      puts"-----------"
      puts" #{board[3]} | #{board[4]} | #{board[5]} "
      puts"-----------"
      puts" #{board[6]} | #{board[7]} | #{board[8]} "  
    end
    
#move

    def move(array, input, value="X")
        array[input] = value
    end
    
    def input_to_index(input)
    input.to_i - 1
    end
    
#valid_move      
    def valid_move?(board, index)
      if (index.between?(0,8) && position_taken?(board, index) == FALSE)
          return TRUE
      else
          return FALSE
      end
    end
    
#show the board  
    def position_taken?(board, index)
        if (board[index] == " " || board[index] == "" || board[index] == NIL)
          return FALSE
        elsif board[index] == "X" || "O"
          return TRUE
        end
    end
    
#turn
    def turn(board)
      puts "Please enter 1-9:"
      input = gets.strip
      index = input_to_index(input)
      if valid_move?(board, index)
        move(board, index)
        display_board(board)
    else
      turn(board)
    end
end