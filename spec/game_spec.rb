require './lib/game.rb'
require './lib/player.rb'

describe Game do
  it "should accept two players" do 
    game = Game.new
    tom = Player.new("tom")
    jerry = Player.new("jerry")
    game.add_players(tom, jerry)
    expect(game.players.size).to eq 2
  end

  describe "#attack" do 
    it "should reduce the opponent's points by 10" do 
      game = Game.new
      player = Player.new("Francesco")
      game.attack(player) 
      expect(player.hit_points).to eq 90
    end 
  end
end