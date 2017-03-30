require 'game'

describe Game do
  subject(:game) { described_class.new(bill,bob) }
  let(:bill) { double(:player) }
  let(:bob) { double(:player) }

  describe '#attack' do
    it 'damages the player' do
      expect(bob).to receive(:receive_damage)
      game.attack(bob)
    end
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq bill
    end
  end

end
