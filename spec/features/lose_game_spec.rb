feature 'Player loses game' do

  scenario 'Player 2 loses' do
    sign_in_and_play
    11.times {attack_OK}
    expect(page).to have_content "Steve YOU LOSE!"
  end
end
