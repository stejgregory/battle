require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_one_name, with: 'Dave'
    fill_in :player_two_name, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content 'Dave vs. Mittens'
  end
end
