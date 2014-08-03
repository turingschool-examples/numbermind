class MessagePrinter
  def intro
    puts "Welcome to Numbermind."
    program_instructions
  end

  def program_instructions
    puts "Enter 'p' to play, 'i' for instructions, or 'q' to quit."
  end

  def command_request
    print "Enter your command: "
  end

  def game_instructions
    puts "Game instructions."
  end

  def ending
    puts "Good bye."
  end

  def game_intro
    puts "Game initialized."
    puts "Guess a number between 0 and 1000."
  end

  def turn_indicator(turns)
    puts "This is turn #{turns}."
  end

  def game_command_request
    print "Enter your guess: "
  end

  def game_quit
    puts "Exiting the game."
    program_instructions
  end

  def not_a_number
    puts "That's not a number. Try again."
  end

  def game_win
    puts "You win."
    program_instructions
  end

  def guess_above
    puts "Your guess is above."
  end

  def guess_below
    puts "Your guess is below."
  end

  def not_a_valid_number
    puts "Your guess is not a valid number between 0 and 1000. Try again."
  end

  def not_a_valid_command
    puts "That's not a valid command."
    program_instructions
  end
end
