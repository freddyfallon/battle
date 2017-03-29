feature 'View hit points' do

  scenario 'Player 1 can view player 2\'s hit points' do
    visit('/')
    fill_in :player_1_name, with: 'John'
    fill_in :player_2_name, with: 'Steve'
    click_button 'Submit'
    expect(page).to have_content 'Steve: 0/60 HP'

  end

end
