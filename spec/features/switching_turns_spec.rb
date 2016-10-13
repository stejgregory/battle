require 'spec_helper'

feature '#current_turn' do
  scenario 'Starts as player one' do
  sign_in_and_play
  expect(page).to have_content "It's Ned Stark's turn."
  end

  scenario 'switched turn' do
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content "It's Ned Stark's turn."
    expect(page).to have_content "It's Joffrey Lannister's turn."
  end
end
