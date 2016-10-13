def sign_in_and_play
  visit('/')
  fill_in :player_one_name, with: 'Ned Stark'
  fill_in :player_two_name, with: 'Joffrey Lannister'
  click_button 'Submit'
end

def attack_and_confirm
  click_button "Attack"
  click_button "Ok"
end
