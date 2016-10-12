require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_one_name, with: 'Ned Stark'
    fill_in :player_two_name, with: 'Joffrey Baratheon'
    click_button 'Submit'
    expect(page).to have_content 'Ned Stark vs. Joffrey Baratheon'
  end
end

feature 'Hit Points' do
  scenario 'viewing hit points' do
    visit('/')
    fill_in :player_one_name, with: 'Ned Stark'
    fill_in :player_two_name, with: 'Joffrey Baratheon'
    click_button 'Submit'
    expect(page).to have_content 'Joffrey Baratheon HP: 60'
  end
end
