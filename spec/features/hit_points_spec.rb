feature 'Show hit points' do

  scenario 'When the battle begins, both players should be able to see each others HP points' do
    sign_in_and_play
    expect(page).to have_content "Ben: 60/60 HP"
    expect(page).to have_content "Leonidas: 60/60 HP"
  end

end
