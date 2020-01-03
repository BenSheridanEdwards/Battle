feature 'Enter Names and Play' do

  scenario 'Players can successfully enter their names and begin the game' do 
    sign_in_and_play
    expect(page).to have_content "Welcome Ben and Leonidas!"
  end
  
end
