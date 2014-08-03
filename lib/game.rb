class Game
  attr_reader :guess,
              :turns,
              :random_number,
              :printer,
              :command

  def initialize(printer = MessagePrinter.new)
    @guess         = 0
    @turns         = 0
    @random_number = Random.rand(0..1000)
    @printer       = printer
    @command       = ""
  end

  def play
    printer.game_intro
    until win? || exit?
      printer.turn_indicator(turns)
      printer.game_command_request
      @command = gets.strip
      @guess   = command.to_i
      process_game_turn
    end
  end

  private

  def process_game_turn
    case
    when exit?
      printer.game_quit
    when not_a_number?
      printer.not_a_number
    when win?
      printer.game_win
    when above?
      printer.guess_above
      add_turn
    when below?
      printer.guess_below
      add_turn
    when not_a_valid_number?
      printer.not_a_valid_number
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
