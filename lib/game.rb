require_relative 'player'
class Game
  attr_reader :player1, :player2, :turn, :not_turn
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = @player1
  end

  def switch_turn
    @turn = not_active
  end

  def not_active
    @turn == @player1 ? @player2 : @player1
  end

  def attack(player)
    player.attacked
  end
end
