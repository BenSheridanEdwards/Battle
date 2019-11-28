require 'game'

describe 'Game' do

  let(:game) { Game.new }
  let(:player) { Player.new("Ben") }
  let(:player2) { Player.new("Andrew") }

  describe '#attack' do 
    it "should accept a player as an argument and reduce their HP by 10" do
      expect{ game.attack(player2) }.to change { player2.hp }.by (-10)
    end
  end

end