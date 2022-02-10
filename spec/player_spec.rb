require './lib/player.rb'

describe Player do
    describe "#name" do
        it "should return the player's name" do
        player = Player.new("Francesco") 
        expect(player.name).to eq "Francesco"
        end 
    end 
end    