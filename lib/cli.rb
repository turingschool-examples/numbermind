class CLI
  attr_reader :command, :guess, :random_number

  def initialize
    @command       = ""
    @guess         = 0
    @random_number = 0
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
      puts "Guess a number between 0 and 1000"
      @random_number = Random.rand(0..1000)
      @guess         = 0
      until win? || exit?
        print "Enter a guess: "
        @command = gets.strip
        @guess   = @command.to_i
        case
        when above?
          puts "Your guess is above."
        when below?
          puts "Your guess is below."
        when win?
          puts "You won!"
        end
      end
    when instructions?
      puts "These are the instructions."
    when exit?
      puts "Thanks for playing."
    else
      puts "The command was invalid."
    end
  end

  def win?
    guess == random_number
  end

  def above?
    guess > random_number
  end

  def below?
    guess < random_number
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
