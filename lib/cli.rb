class CLI
  attr_reader :command, :printer

  def initialize
    @command = ""
    @printer = MessagePrinter.new
  end

  def start
    printer.intro
    until finished?
      printer.command_request
      @command = gets.strip
      process_initial_commands
    end
    printer.ending
  end

  private

  def process_initial_commands
    case
    when play?
      game = Game.new(printer)
      game.play
    when instructions?
      printer.game_instructions
    else
      printer.not_a_valid_command
    end
  end

  def play?
    command == "p"
  end

  def instructions?
    command == "i"
  end

  def finished?
    command == "q" || command == "quit"
  end
end
