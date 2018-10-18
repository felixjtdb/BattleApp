require 'game'
describe Game do
    let(:player1) {double(:player, name: 'Jimmy')}
    let(:player2) {double(:player, name: 'Timmy')}
    let(:game) {Game.new(player1, player2)}

  it "has two players when created" do
    expect(game.player1.name).to eq "Jimmy"
    expect(game.player2.name).to eq "Timmy"
  end
  it "player 1 is has the first turn" do
    expect(game.turn).to eq player1
    expect(game.not_turn).to eq player2
  end
  it "player 1 is has the first turn" do
    game.switch_turn
    expect(game.turn).to eq player2
    expect(game.not_turn).to eq player1
  end
end
