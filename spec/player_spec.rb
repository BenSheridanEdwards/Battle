require 'player'

describe 'Player' do 

  let(:player_1) { Player.new("Ben") }
  let(:player_2) { Player.new("Leonidas") }

  describe '.name' do
    it "should return a player's name" do
      expect(player_1.name).to eq("Ben")
      expect(player_2.name).to eq("Leonidas")
    end
  end

  describe '.hp' do
    it "should return a player's hit points (HP)" do
      expect(player_1.hp).to eq(60)
    end

    it 'should return the default HP value, provided no HP value was given to player' do
      expect(player_1.hp).to eq(Player::DEFAULT_HIT_POINTS)
    end
  end

  describe '.receive_damage' do
    it "should reduce the player's HP by a random number (10) when attacked" do
      allow(Kernel).to receive(:rand).and_return(10)
      expect{ player_1.attack(player_2) }.to change { player_2.hp }.by (-10)
    end
  end
end