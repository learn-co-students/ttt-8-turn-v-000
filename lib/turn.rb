def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} ";
  puts "-----------";
  puts " #{board[3]} | #{board[4]} | #{board[5]} ";
  puts "-----------";
  puts " #{board[6]} | #{board[7]} | #{board[8]} ";
end

def input_to_index(user_input)
  index = user_input.to_i - 1;
  return index;
end

def position_taken?(array, index)
  if array[index] == " " || array[index] == nil || array[index] == ""
    return false;
  elsif array[index] == "X" || array[index] == "O"
    return true;
  end
end

def valid_move?(array,index)
  if index >= 0 && index <= 9 && array[index] == " "
    return true;
  else
    return false;
  end
end

def move(array, index, value = "X")
  array[index] = value;
end

def turn(board)
  is_valid = false;
  while is_valid == false;
    puts "Please enter 1-9:"
    user_input = gets.chomp;
    index = input_to_index(user_input);
    if (position_taken?(board,index) == false && valid_move?(board,index) == true)
      is_valid = true;
    else
      is_valid = false;
    end
  end
  move(board, index, "X");
  display_board(board);
  return board;
end
