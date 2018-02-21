require 'byebug'

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) { Array.new }
    @score_cup = { name1 => 6, name2 => 13 }
    @player_row = { name1 => (0...6), name2 => (7...13) }
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    14.times do |cup|
      next if @score_cup.values.include?(cup)
      4.times { self.cups[cup] << :stone }
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless start_pos.between?(1, 14)
  end

  def make_move(start_pos, current_player_name)
    num_stones = self.cups[start_pos].length
    self.cups[start_pos] = []

    opp_cup = @score_cup.values
    opp_cup.delete(@score_cup[current_player_name])
    opp_cup = opp_cup[0]

    cup = start_pos
    num_stones.times do
      cup = (cup + 1) % 14
      if cup == opp_cup
        cup = (cup + 1) % 14
      end

      self.cups[cup] << :stone
    end

    render

    next_turn(cup, current_player_name)
  end

  def next_turn(ending_cup_idx, current_player_name)
    # helper method to determine what #make_move returns
    return :prompt if @score_cup[current_player_name] == ending_cup_idx
    return :switch if self.cups[ending_cup_idx].length == 1
    ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
