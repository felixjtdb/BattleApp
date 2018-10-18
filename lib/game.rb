require_relative 'player'
class Game
  attr_reader :player1, :player2, :turn, :not_turn
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = @player1
    @not_turn = @player2
  end

  def switch_turn
    @turn = @player1 ? @turn = @player2 : @turn = @player1
    @not_turn = @player2 ? @not_turn = @player1 : @not_turn = @player2
  end

  def attack(player)
    player.attacked
  end
end
