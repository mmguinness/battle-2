require './app.rb'
require 'capybara/rspec'
require 'features/web_helpers.rb'

# describe "Testing infrastructure", type: :feature do
#     it "should show 'Testing infrastructure working!'" do
#         visit '/'
#         expect(page).to have_content 'Testing infrastructure working!'
#     end
# end


describe "Enter player names", type: :feature do
    it "should allow players to enter names and see them on screen" do
        sign_in_and_play
        expect(page).to have_content('Player One: Marie vs Player Two: Tim')
    end
end

describe "show hit points", type: :feature do
    it "should allow player one to see player two's hits" do
        sign_in_and_play
        expect(page).to have_content('Tim Hit Points: 100')
        expect(page).to have_content('Marie Hit Points: 100')
    end
end

describe "attack player two", type: :feature do
    it "should confirm player one attacked player two" do
        sign_in_and_play
        click_on 'Player One Attack'
        expect(page).to have_content('Marie attacks Tim')
    end
end

# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10

describe "reduce player two's hit points", type: :feature do
    it "should reduce player two's points by 10 when attacked" do
        sign_in_and_play
        click_on 'Player One Attack'
        expect(page).to have_content('Marie Hit Points: 90')
    end
end