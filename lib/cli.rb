require 'game'
require 'message_printer'

class CLI
  attr_reader :command, :printer

  def initialize(input_stream, output_stream)
    @command      = ""
    @printer      = MessagePrinter.new(output_stream)
    @input_stream = input_stream
  end

  def start
    printer.intro
    until finished?
      printer.command_request
      @command = @input_stream.gets.strip
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
    when finished?
      printer.game_quit
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
