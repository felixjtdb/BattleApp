feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end
  scenario 'two player names can be entered' do
    visit '/names'
    fill_in('player1', with: 'John')
    fill_in('player2', with: 'Tim')
    click_button 'Submit'
    expect(page).to have_content "John Tim"
  end
end
