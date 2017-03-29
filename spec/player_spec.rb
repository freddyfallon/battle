require 'player'

describe Player do
  subject(:player) {described_class.new(name)}
  let(:name) {:player_1}

  it 'Test method to return name' do
    expect(player.name).to eq name
  end

end
