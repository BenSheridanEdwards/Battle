feature 'Switching turns' do
  context "In every game" do
    before(:each) do
      sign_in_and_play
    end
    scenario "It should start with Player 1's turn" do
      expect(page).to have_content "Ben's turn"
    end

    scenario "It should switch to Player 2's turn after Player 1 has taken their turn" do
      attack_and_confirm
      expect(page).not_to have_content "Ben's turn"
      expect(page).to have_content "Leonidas's turn"
    end

    scenario "It should switch back to Player 1's turn after Player 2 has taken their turn" do
      2.times { attack_and_confirm }
      expect(page).not_to have_content "Leonidas's turn"
      expect(page).to have_content "Ben's turn"
    end
  end
end