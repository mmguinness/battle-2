require './lib/player.rb'

describe Player do
    describe "#name" do
        it "should return the player's name" do
        player = Player.new("Francesco") 
        expect(player.name).to eq "Francesco"
        end 
    end 

    describe "#hit_points" do 
        it "should return the player's hit points" do 
        player = Player.new("Francesco")
        expect(player.hit_points).to eq 100
        end
    end 


end    