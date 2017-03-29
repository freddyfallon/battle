feature 'Enter names' do

  scenario 'can view names after entering them on a form' do
    visit('/')
    fill_in :player_1_name, with: 'John'
    fill_in :player_2_name, with: 'Steve'
    click_button 'Submit'
    expect(page).to have_content 'John vs. Steve'
  end
end
