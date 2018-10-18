def sign_in_and_play(playerA, playerB)
  visit '/'
  fill_in('player1', with: playerA)
  fill_in('player2', with: playerB)
  click_button 'Submit'
end
