require 'player'
describe Player do
  subject(:jeff) {Player.new("Jeff")}
  subject(:jeremy) {Player.new("Jeremy")}

  it 'returns name when .name is called' do
    expect(jeff.name).to eq 'Jeff'
  end
  it 'returns 60 when .hp is called' do
    expect(jeff.hp).to eq Player::DEFAULT_HP
  end
  it 'hp reduced by 10 when attacked' do
    allow(Kernel).to receive(:rand) {10}
    expect{jeff.attacked}.to change{jeff.hp}.by(-10)
  end
end
