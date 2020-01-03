feature 'Game over' do
  context 'When Player 1 reaches 0 HP first' do
    before(:each) do
      sign_in_and_play
      attack_and_confirm
      allow(Kernel).to receive(:rand).and_return(60)
    end

    scenario 'Player 1 loses' do
      click_button 'Attack'
      expect(page).to have_content 'Ben loses!'
    end
  end

  context 'When Player 2 reaches 0 HP first' do
    before(:each) do
      sign_in_and_play
      allow(Kernel).to receive(:rand).and_return(60)
    end

    scenario 'Player 2 loses' do
      click_button 'Attack'
      expect(page).to have_content 'Leonidas loses!'
    end
  end
end