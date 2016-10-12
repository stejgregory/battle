def sign_in_and_play
  visit('/')
  fill_in :player_one_name, with: 'Ned Stark'
  fill_in :player_two_name, with: 'Joffrey Baratheon'
  click_button 'Submit'
end
