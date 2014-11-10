class Messages
  def intro
    "Welcome to Numbermind." +
    program_instructions
  end

  def program_instructions
    "Enter 'p' to play, 'i' for instructions, or 'q' to quit."
  end

  def command_request
    "Enter your command: "
  end

  def game_instructions
    "Game instructions."
  end

  def ending
    "Good bye."
  end

  def game_intro
    "Game initialized."
    "Guess a number between 0 and 1000."
  end

  def turn_indicator(turns)
    "This is turn #{turns}."
  end

  def game_command_request
    "Enter your guess: "
  end

  def game_quit
    "Exiting the game." +
    program_instructions
  end

  def not_a_number
    "That's not a number. Try again."
  end

  def game_win
    "You win." +
    program_instructions
  end

  def guess_above
    "Your guess is above."
  end

  def guess_below
    "Your guess is below."
  end

  def not_a_valid_number
    "Your guess is not a valid number between 0 and 1000. Try again."
  end

  def not_a_valid_command
    "That's not a valid command." +
    program_instructions
  end
end
