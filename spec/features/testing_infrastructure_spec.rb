require_relative 'web_helpers'
feature 'Battle' do
  scenario 'two player names can be entered' do
    sign_in_and_play("John", "Tim")
    expect(page).to have_content "John 60 Tim 60"
  end
  scenario 'shows when someone attacks' do
    sign_in_and_play("John", "Tim")
    click_button 'Attack'
    expect(page).to have_content "John attacks Tim"
  end
  scenario 'shows its player1s turn at start' do
    sign_in_and_play("Your Mum", "Your Dad")
    expect(page).to have_content "Your Mum's turn"
  end
  scenario 'player2s turn after first attack' do
    sign_in_and_play("Your Mum", "Your Dad")
    click_button 'Attack'
    expect(page).to have_content "Your Dad's turn"
  end
end
