require 'player'

describe 'Player' do 

  let(:player_1) { Player.new("Ben") }
  let(:player_2) { Player.new("Leonidas") }

  it "should initialise with a given name, and return it to the user when name is called" do
    expect(player_1.name).to eq("Ben")
  end

  it "should initialize with the default HP value, and return it to the user when hp is called" do 
    expect(player_1.hp).to eq(Player::DEFAULT_HIT_POINTS)
  end

  describe '#receive_damage' do
    it "should reduce the player's HP by 10 when attacked" do
      allow(Kernel).to receive(:rand).and_return(10)
      expect{ player_1.attack(player_2) }.to change { player_2.hp }.by (-10)
    end
  end
end
