require 'spec_helper'
require_relative 'web_helpers'

feature 'Hit Points' do
  before do
    sign_in_and_play
  end

  scenario 'viewing hit points' do
    expect(page).to have_content 'Joffrey Lannister HP: 60'
  end

  scenario 'reduces health by 10 hp' do
    attack_and_confirm
    expect(page).not_to have_content 'Joffrey Lannister HP: 60'
    expect(page).to have_content 'Joffrey Lannister HP: 50'
  end
end
