require './lib/player.rb'

class Game
  attr_reader :players

  def initialize
    @players = []
  end
  
  def add_players(player_one, player_two)
    @players << player_one
    @players << player_two
  end

  def attack(player)
    player.hit_points -= 10
  end

end
