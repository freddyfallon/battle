feature 'View hit points' do

  scenario 'Players can view their hit points' do
    sign_in_and_play
    expect(page).to have_content 'Steve: 60/60 HP'
    expect(page).to have_content 'John: 60/60 HP'
  end

  scenario 'Player 1 can view their own hit pints' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content('Steve: 50/60 HP')
    expect(page).to have_content('John: 60/60 HP')
  end
end
