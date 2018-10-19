require_relative 'player'

class Game
  attr_reader :player1, :player2, :turn, :not_turn

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

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

  def game_over?
    return true if @player1.hp <= 0
    return true if @player2.hp <= 0
    return false
  end
end
