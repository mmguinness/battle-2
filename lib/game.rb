require './lib/player.rb'

class Game

  def attack(player)
    player.hit_points -= 10
  end

end
