class CLI
  attr_reader :command

  def initialize
    @command = ""
  end

  def start
    puts "Welcome to Numbermind."
    until exit?
      print "Enter your command: "
      @command = gets.strip
      process_initial_commands
    end
  end

  private

  def process_initial_commands
    case
    when play?
      puts "Game initialized."
    when instructions?
      puts "These are the instructions."
    when exit?
      puts "Thanks for playing."
    else
      puts "The command was invalid."
    end
  end

  def play?
    command == "p"
  end

  def instructions?
    command == "i"
  end

  def exit?
    command == "q" || command == "quit"
  end
end
