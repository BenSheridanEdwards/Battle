feature 'View hit points' do

  scenario "see Player 1's hit points" do
    sign_in_and_play
    expect(page).to have_content 'Ben: 60 HP'
  end

  scenario "see Player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content 'Leonidas: 60 HP'
  end
end
