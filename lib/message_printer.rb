class MessagePrinter
  def initialize(output_stream)
    @output_stream = output_stream
  end

  def intro
    @output_stream.puts "Welcome to Numbermind."
    program_instructions
  end

  def program_instructions
    @output_stream.puts "Enter 'p' to play, 'i' for instructions, or 'q' to quit."
  end

  def command_request
    @output_stream.print "Enter your command: "
  end

  def game_instructions
    @output_stream.puts "Game instructions."
  end

  def ending
    @output_stream.puts "Good bye."
  end

  def game_intro
    @output_stream.puts "Game initialized."
    @output_stream.puts "Guess a number between 0 and 1000."
  end

  def turn_indicator(turns)
    @output_stream.puts "This is turn #{turns}."
  end

  def game_command_request
    @output_stream.print "Enter your guess: "
  end

  def game_quit
    @output_stream.puts "Exiting the game."
    program_instructions
  end

  def not_a_number
    @output_stream.puts "That's not a number. Try again."
  end

  def game_win
    @output_stream.puts "You win."
    program_instructions
  end

  def guess_above
    @output_stream.puts "Your guess is above."
  end

  def guess_below
    @output_stream.puts "Your guess is below."
  end

  def not_a_valid_number
    @output_stream.puts "Your guess is not a valid number between 0 and 1000. Try again."
  end

  def not_a_valid_command
    @output_stream.puts "That's not a valid command."
    program_instructions
  end
end
