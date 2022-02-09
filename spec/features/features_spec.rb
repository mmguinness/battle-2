require './app.rb'
require 'capybara/rspec'

describe "Testing infrastructure", type: :feature do
    it "should show 'Testing infrastructure working!'" do
        visit '/'
        expect(page).to have_content 'Testing infrastructure working!'
    end
end