class Game
  attr_reader :guess,
              :turns,
              :random_number,
              :messages,
              :command,
              :instream,
              :outstream

  def initialize(instream, outstream, messages)
    @guess         = 0
    @turns         = 0
    @random_number = Random.rand(0..1000)
    @messages      = messages
    @command       = ""
    @instream      = instream
    @outstream     = outstream
  end

  def play
    outstream.puts messages.game_intro
    until win? || exit?
      outstream.puts messages.turn_indicator(turns)
      outstream.puts messages.game_command_request
      @command = instream.gets.strip
      @guess   = command.to_i
      process_game_turn
    end
  end

  private

  def process_game_turn
    case
    when exit?
      outstream.puts messages.game_quit
    when not_a_number?
      outstream.puts messages.not_a_number
    when win?
      outstream.puts messages.game_win
    when above?
      outstream.puts messages.guess_above
      add_turn
    when below?
      outstream.puts messages.guess_below
      add_turn
    when not_a_valid_number?
      outstream.puts messages.not_a_valid_number
    end
  end

  def add_turn
    @turns += 1
  end

  def not_a_valid_number?
    guess > 1000 || guess < 0
  end

  def below?
    guess < random_number && guess >= 0
  end

  def above?
    guess > random_number && guess <= 1000
  end

  def win?
    guess == random_number
  end

  def not_a_number?
    guess.to_s != command
  end

  def exit?
    command == "q" || command == "quit"
  end
end
