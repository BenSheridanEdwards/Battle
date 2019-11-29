require 'game'

describe 'Game' do

  let(:player_1) { Player.new("Ben") }
  let(:player_2) { Player.new("Leonidas") }
  subject(:game) { Game.new(player_1, player_2) }

  describe '#player_1' do
    it 'should initialize accepting player_1 as an arugment and return the player_1 object when .player_1 is called' do 
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'should initialize accepting player_2 as an arugment and return the player_2 object when .player_2 is called' do 
      expect(game.player_2).to eq player_2
    end
  end

  describe '#attack' do 
    it "should accept a player as an argument and reduce their HP by 10" do
      expect{ game.attack(player_2) }.to change { player_2.hp }.by (-10)
    end
  end

end