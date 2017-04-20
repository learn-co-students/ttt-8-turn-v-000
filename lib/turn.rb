def display_board(brd)
  puts " #{brd[0]} | #{brd[1]} | #{brd[2]} "
  puts "-----------"
  puts " #{brd[3]} | #{brd[4]} | #{brd[5]} "
  puts "-----------"
  puts " #{brd[6]} | #{brd[7]} | #{brd[8]} "
end

def input_to_index(usrinpt)
  if usrinpt.to_i.between?(1,9)
    usrinpt.to_i - 1
  else
    -1
  end
end

def valid_move?(brd, ind)
  if ind.between?(0,8)
    return true unless spot_taken?(brd, ind)
  end
end

def move(brd, ind, player = "X")
  brd[ind] = player
end

def turn(brd)
  puts "Please enter 1-9:"
  ind = input_to_index(gets.strip)
  if valid_move?(brd, ind)
    move(brd, ind)
    display_board(brd)
  else
    turn(brd)
  end
end

def spot_taken?(brd, ind)
  case brd[ind]
  when " ", "", nil
    false
  when "X","O"
    true
  end
end
