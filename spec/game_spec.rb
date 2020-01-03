require 'game'

describe 'Game' do
  subject(:game) { Game.new(player_1, player_2) }
  let(:player_1) { Player.new("Ben") }
  let(:player_2) { Player.new("Leonidas") }

  describe '.player_1' do
    it 'should return the first player' do 
      expect(game.player_1).to eq player_1
    end
  end

  describe '.player_2' do
    it 'should return the second player' do 
      expect(game.player_2).to eq player_2
    end
  end

  describe '.attack' do 
    it "should reduce a given player's HP by a random number (10)" do
      allow(Kernel).to receive(:rand).and_return(10)
      expect{ game.attack(player_2) }.to change { player_2.hp }.by (-10)
    end
  end

  describe '.switch_turns' do
    it 'switches the turn' do
      expect(game.current_turn).to eq player_1
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end
  end

  describe '.opponent_of' do
    it 'finds the opponent of a given player' do
      expect(game.opponent_of(player_1)).to eq player_2
      expect(game.opponent_of(player_2)).to eq player_1
    end
  end
end