require 'spec_helper'

feature 'Attack' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end

  scenario 'reduce player 2 hit points by 10' do
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content 'Mittens: 60hp'
    expect(page).to have_content 'Mittens: 50hp'
  end
end

feature 'Can punch players' do
  scenario 'player 1 punches player 2' do
    sign_in_and_play
    click_button 'Punch'
    expect(page).to have_content 'Dave punched Mittens'
  end
end

feature 'Can kick players' do
  scenario 'player 1 kicks player 2' do
    sign_in_and_play
    click_button 'Kick'
    expect(page).to have_content 'Dave kicked Mittens'
  end
end
