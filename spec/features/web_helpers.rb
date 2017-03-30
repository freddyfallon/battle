def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'John'
  fill_in :player_2, with: 'Steve'
  click_button 'Submit'
end

def attack_OK
  click_link 'Attack'
  click_link 'OK'
end
