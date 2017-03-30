feature 'Attack player' do

  scenario 'Attacking player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content('John attacked Steve')
  end

  scenario 'Displays reduced hit points' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content('Steve: 50/60 HP')
  end

  scenario 'Begin player 2 turn' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    expect(page).to have_content("Steve's turn")
  end

  scenario 'Attacking player 1' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    click_link 'Attack'
    expect(page).to have_content("John: 50/60 HP")
  end
end
