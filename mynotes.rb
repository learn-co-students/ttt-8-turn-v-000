#display_board
    prints arbitrary arrangements of the board (PASSED)
  #input_to_index
    converts a user_input to an integer (FAILED - 1)
    subtracts 1 from the user_input (FAILED - 2)
    returns -1 for strings without integers (FAILED - 3)
  #valid_move?
    returns true/false based on index (FAILED - 4)
  #move
    allows "X" player in the bottom right and "O" in the top left (FAILED - 5)
  #turn
    asks the user for input by printing: "Please enter 1-9:" (FAILED - 6)
    gets the user input (FAILED - 7)
    calls the input_to_index method (FAILED - 8)
    validates the input correctly (FAILED - 9)
    asks for input again after a failed validation (FAILED - 10)
    makes valid moves (FAILED - 11)
    displays a correct board after a valid turn (FAILED - 12)
