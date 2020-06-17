def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(num)
    num.to_i-1
end

def valid_move?(board, index)
    if index==-1
        false
    elsif board[index] == " " || board[index] == ""
        true
    else
        false
    end
end

def move(board,move,char = "X")
    board[move] = char
end

def turn(board)
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
    until valid_move?(board, index)
        puts "Please enter 1-9:"
        index = input_to_index(gets.strip)
    end
    move(board,index)
    display_board(board)
end
