require_relative './player'
require_relative './turn'

class Game

  def initialize
    @p1 = Player.new('Player 1')
    @p2 = Player.new('Player 2')
    @players = [@p1, @p2]
    @turn = Turn.new(@players)
  end
end