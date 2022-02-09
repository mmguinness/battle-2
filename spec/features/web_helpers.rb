def sign_in_and_play
    visit '/'
    fill_in 'player_one', with: 'Marie'
    fill_in 'player_two', with: 'Tim'
    click_on 'Enter' 
end