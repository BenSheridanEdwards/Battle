feature 'Attack' do

  scenario "When a player clicks the Attack button" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Ben attacks Leonidas!"
    expect(page).to have_content "Leonidas: 50 HP"
  end
end