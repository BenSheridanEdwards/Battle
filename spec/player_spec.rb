require 'player'

describe 'Player' do 

  subject { Player.new("Andrew") }
  let(:player2) { Player.new("Ben") }

  it "should initialise with a given name, and return it to the user when name is called" do
    expect(subject.name).to eq("Andrew")
  end

  it "should initialize with 60 HP, and return it to the user when hp is called" do 
    expect(subject.hp).to eq(60)
  end

  describe '#attack' do 
    it "should accept a player as an argument and reduce HP by 10" do
      expect{ subject.attack(player2) }.to change { player2.hp }.by (-10)
    end
  end
end
