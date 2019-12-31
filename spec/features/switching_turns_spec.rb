feature 'Switching turns' do

  scenario "at the start of the game, it should be player 1's turn" do
    sign_in_and_play
    expect(page).to have_content "Ben's turn"
  end

  scenario 'the game should switch turns after the current player has taken their move' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content "Ben's turn"
    expect(page).to have_content "Leonidas's turn"
  end
end