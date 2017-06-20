# Make something print "Still False" 5 times.
# the loop will stop once valid_move is true (which should happen after the 5th loop)


valid_move = false
counter = 0 
# loop
counter = 0
until valid_move
  puts "The current number is less than 20."
  counter += 1
  if counter > 5
    valid_move = true
  end 
end

