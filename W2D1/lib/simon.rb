class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over
      system("clear")
      take_turn
    end

    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence

    unless game_over
      system("clear")
      round_success_message
      sleep(1)

      self.sequence_length += 1
    end
  end

  def show_sequence
    add_random_color

    seq.each do |color|
      puts color
      sleep(1)
      system("clear")
      sleep(0.25)
    end
  end

  def require_sequence
    # Don't test console user input!

    seq.each do |color|
      input = gets.chomp
      system("clear")

      self.game_over = input != color
      break if game_over
    end
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "GOOD JOB!!!!!!!"
  end

  def game_over_message
    system("clear")
    puts "YOU LOSE!!!!!!!"
    p seq
  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
  end
end

if $PROGRAM_NAME == __FILE__
  game = Simon.new
  game.play
end
