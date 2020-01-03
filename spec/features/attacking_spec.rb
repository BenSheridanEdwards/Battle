feature 'Attacking' do

  context 'When Player 1 attacks Player 2' do
    before(:each) do
      sign_in_and_play
      allow(Kernel).to receive(:rand).and_return(10)
    end
    scenario "It should show a confirmation message of the attack" do
      click_button 'Attack'
      expect(page).to have_content "Ben attacked Leonidas!"
    end

    scenario "It should reduce Player 2's HP by a random number (10)" do
      attack_and_confirm
      expect(page).not_to have_content 'Leonidas: 60 HP'
      expect(page).to have_content 'Leonidas: 50 HP'
    end

    scenario "It should be Player 2's turn after the attack" do
      attack_and_confirm
      expect(page).to have_content "It's Leonidas's turn"
    end
  end

  context "When Player 2 attacks Player 1" do
    before(:each) do
      sign_in_and_play
      attack_and_confirm
      allow(Kernel).to receive(:rand).and_return(10)
    end
  
    scenario 'It should show a confirmation message of the attack' do
      click_button 'Attack'
      expect(page).to have_content "Leonidas attacked Ben!"
    end

    scenario "It should reduce Player 1's HP by a random number (10)" do
      attack_and_confirm
      expect(page).not_to have_content 'Ben: 60 HP'
      expect(page).to have_content 'Ben: 50 HP'
    end

    scenario "It should be Player 1's turn after the attack" do
      attack_and_confirm
      expect(page).to have_content "It's Ben's turn"
    end
  end
end