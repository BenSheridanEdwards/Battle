feature 'Attack' do

  scenario "When a player clicks the Attack button" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Ben attacks Andrew!"
    expect(page).to have_content "Andrew: Bitch!"
    expect(page).to have_content "Andrew: 50/60"
  end
end