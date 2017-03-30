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

end
