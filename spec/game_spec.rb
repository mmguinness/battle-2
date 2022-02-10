require './lib/game.rb'
require './lib/player.rb'

describe Game do
  describe "#attack" do 
    it "should reduce the opponent's points by 10" do 
      game = Game.new
      player = Player.new("Francesco")
      game.attack(player) 
      expect(player.hit_points).to eq 90
    end 
  end 
end