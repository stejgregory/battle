require 'spec_helper'
require_relative 'web_helpers'

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Ned Stark vs. Joffrey Lannister'
  end
end

feature 'Hit Points' do
  scenario 'viewing hit points' do
    sign_in_and_play
    expect(page).to have_content 'Joffrey Lannister HP: 60'
  end
end

feature 'Attacking' do
  scenario 'get confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Attack successful!'
  end

  scenario 'reduces hit points' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Joffrey Lannister HP: 50'
  end
end
