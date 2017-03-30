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

  describe '#hp_zero?' do
    context 'hit points are full' do
      before do
        allow(bill).to receive(:hit_points).and_return(60)
        allow(bob).to receive(:hit_points).and_return(60)
      end
      it 'returns true if either player has 0hp' do
        expect(game.hp_zero?(bill)).to be false
      end
    end

    context ' hit points are empty' do
      before do
        allow(bill).to receive(:hit_points).and_return(0)
        allow(bob).to receive(:hit_points).and_return(60)
      end
      it 'returns true if either player has 0hp' do
        expect(game.hp_zero?(bill)).to be true
      end
    end
  end
end
